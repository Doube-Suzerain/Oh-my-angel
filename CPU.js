
goog.require("goog.math.Long");
Long = goog.math.Long;
function start_cpu()
{
    cpu=new CPU(262144);
    // term.clear();
    cpu.load_and_run();
}
function CPU(memsize)
{
    text=document.getElementById("info");
    text.innerHTML="started...</br>CPU created...";
    //memsiz=typeof memsize == undefined ? 1024 : memsize
    memsiz=memsize;

    end_flag=0;

    this.memory=new Uint32Array(memsiz);
    this.gen_reg=[]
    for(var i=0;i<32;i++)
        this.gen_reg[i]=new Long(0x0,0x0);

    this.csr=new Array(4096);
    for(var i=0;i<4096;++i)
        this.csr[i]=new Long(0x0,0x0);

    this.pc=0x0;
    this.txthead=0x0;
    this.init_sp=this.gen_reg[2]=Long.fromNumber((memsiz>>1)+(memsiz>>2)).shiftLeft(2);
    function toStringLen(num,len)
    {
        return (Array(len).join('0')+num).slice(-len);
    }
    function print_status()
    {
        var stat=document.getElementById("cpu status");
        stat.innerHTML="";
        var stat2=document.getElementById("cpu status2");
        stat2.innerHTML="";
        for(var i=0;i<16;i++)
        {
            stat.innerHTML+="x"+toStringLen(i,2)+": "+cpu.gen_reg[i]+"</br>";
        }
        for(var i=16;i<32;i++)
        {
            stat2.innerHTML+="x"+toStringLen(i,2)+": "+cpu.gen_reg[i]+"</br>";
        }
    }
    function print_memory()
    {
        var mm=document.getElementById("mem");
        mm.innerHTML="";
        for(var i=cpu.txthead;cpu.memory[i>>2];i+=4)
            if(i==cpu.pc)
                mm.innerHTML+="<p class='small' style='color:red'>"+Dec_to_Bin(cpu.memory[i>>2])+"</p>";
            else
                mm.innerHTML+="<p class='small'>"+Dec_to_Bin(cpu.memory[i>>2])+"</p>";
    }
    function print_stack()
    {
        var sta=document.getElementById("stack");
        sta.innerHTML="";
        for(var i=cpu.init_sp;i>cpu.gen_reg[2];i-=4)
            sta.innerHTML+="<p class='small'>"+i+": "+Dec_to_Bin(cpu.memory[i>>2])+"</p>";
        sta.innerHTML+="<p  class='small' style='color:red'>"+Dec_to_Bin(cpu.memory[cpu.gen_reg[2].shiftRightUnsigned(2).getLowBits()])+"</p>";
    }
    function load_and_run()
    {
        var file=document.getElementById("file");
        var reader=new FileReader();
        reader.onload=function(e){
            text.innerHTML+="</br>...instruction loaded, run:";
            // text.innerHTML+="</br>"+cpu.pc;
            load_elf(reader.result);
            document.getElementById("current instruction").innerHTML="";
            cpu.run_inst();
        }
        reader.readAsBinaryString(file.files[0]);
    }
    function get_inst()
    {
        var res=cpu.memory[cpu.pc>>2];
        return res;
    }
    function run_inst()
    {
        var inst=get_inst();
        // text.innerHTML+="<br>"+Dec_to_Bin(inst);
        if(!inst)
        {
            document.getElementById("current instruction").innerHTML="Ended, exit";
            return;
        }
        if(breakpoints[cpu.pc])print_flag=1;
        run_an_inst(inst);
        print_flag=0;
    }
    function run_until_break()
    {
        while((!breakpoints[cpu.pc])&&get_inst()&&(!end_flag))
            run_inst();
    }

    function load_byte(ad,sym)
    {
        ad=ad.getLowBits();
        var res;
        if(sym)
            res=signed_to_64((cpu.memory[ad>>2]>>((ad&0x3)<<3))&0xff,8);
        else
            res=unsigned_to_64((cpu.memory[ad>>2]>>((ad&0x3)<<3))&0xff);
        return res;
    }
    function load_half(ad,sym)
    {
        ad=ad.getLowBits();
        var res;
        if(sym)
            res=signed_to_64((cpu.memory[ad>>2]>>((ad&0x2)<<3))&0xffff,16);
        else
            res=unsigned_to_64((cpu.memory[ad>>2]>>((ad&0x2)<<3))&0xffff);
        return res;
    }
    function load_word(ad,sym)
    {
        ad=ad.getLowBits();
        var res;
        if(sym)
            res=signed_to_64(cpu.memory[ad>>2],32);
        else
            res=unsigned_to_64(cpu.memory[ad>>2]);
        return res;
    }
    function load_double(ad)
    {
        ad=ad.getLowBits();
        var res=new Long(cpu.memory[ad>>2],cpu.memory[(ad>>2)+1]);
        return res;
    }

    function save_byte(ad,val)
    {
        cpu.memory[ad>>2]&=((0xffffffff>>>(32-((ad&0x3)<<3)))|(~(0xffffffff>>>(24-((ad&0x3)<<3)))));
        cpu.memory[ad>>2]|=val<<((ad&0x3)<<3);
    }
    function save_half(ad,val)
    {
        cpu.memory[ad>>2]&=((0xffffffff>>>(32-((ad&0x2)<<3)))|(~(0xffffffff>>>(16-((ad&0x2)<<3)))));
        cpu.memory[ad>>2]|=val<<((ad&0x2)<<3);
    }
    function save_word(ad,val)
    {
        cpu.memory[ad>>2]=val;
    }
    function save_double(ad,val)
    {
        // text.innerHTML+="save double: "+ad
        cpu.memory[ad>>2]=val.getLowBits();
        cpu.memory[(ad>>2)+1]=val.getHighBits();
    }

    this.load_and_run=load_and_run;
    this.get_inst=get_inst;
    this.run_inst=run_inst;
    this.run_until_break=run_until_break;
    this.print_status=print_status;
    this.print_memory=print_memory;
    this.print_stack=print_stack;

    this.load_byte=load_byte;
    this.load_half=load_half;
    this.load_word=load_word;
    this.load_double=load_double;

    this.save_byte=save_byte;
    this.save_half=save_half;
    this.save_word=save_word;
    this.save_double=save_double;
}