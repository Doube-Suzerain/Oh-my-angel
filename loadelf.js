function load_elf(binstr)
{
    var elf={};
    elf["entry_addr"]=readbin(binstr,24,8);
    elf["sec_hd_sta"]=readbin(binstr,40,8);
    elf["sec_hd_cnt"]=readbin(binstr,60,2);
    elf["sec_hd_siz"]=readbin(binstr,58,2);
    var sec_headers=[];
    for(var hd=elf["sec_hd_sta"],i=1;i<=elf["sec_hd_cnt"];++i,hd+=elf["sec_hd_siz"])
    {
        var sec={};
        sec["name"]=readbin(binstr,hd,4);
        sec["type"]=readbin(binstr,hd+4,4);
        sec["flag"]=bin_to_long(binstr,hd+8,8).getLowBits();
        sec["addr"]=bin_to_long(binstr,hd+16,8).getLowBits();
        sec["offset"]=bin_to_long(binstr,hd+24,8).getLowBits();
        sec["siz"]=bin_to_long(binstr,hd+32,8).getLowBits();
        
        sec_headers.push(sec);
    }
    for(var i=0;i<elf["sec_hd_cnt"];++i)
    {
        var sec=sec_headers[i];
        if(!(sec["flag"]&2))continue;
        if(sec["type"]!=8)
            for(var place=sec["offset"],addr=sec["addr"];place<sec["offset"]+sec["siz"];place+=4,addr+=4)
            {
                cpu.save_word(addr,readbin(binstr,place,4));
            }
        else
            for(var j=0,addr=sec["addr"];j<sec["siz"];j+=4,addr+=4)
                cpu.save_word(addr,0);
        if(sec["flag"]&4)
            cpu.txthead=sec["addr"];
    }
    cpu.pc=elf["entry_addr"];
}