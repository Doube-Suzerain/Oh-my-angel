var breakpoints={};
var print_flag=0;
function add_breakpoint()
{
    var text=document.getElementById("break point").value;
    var txtlist=text.split(' ');
    for(var i=0;i<txtlist.length;++i)
    {
        breakpoints[trans(txtlist[i])]=1;
        alert(trans(txtlist[i]));
    }
}

function handle_command()
{
    var command=document.getElementById("command").value;
    var clis=command.split(' ');
    var sym=clis[0];
    var val=clis[1];
    var output=document.getElementById("stack");
    switch(sym)
    {
        case "pm":
            if(val[0]!='x')
            {
                // console.log(cpu.memory[trans(val[0])>>2]);
                if(clis.length==3)
                {
                    var len=clis[2];
                    for(var i=(val>>>0)+(len>>>0);i>val;i-=4)
                        output.innerHTML+=cpu.memory[i>>2]+"</br>"
                }
                output.innerHTML+=cpu.memory[val>>2];
            }
            else
            {
                var num=val.split('x')[1].toNumber();
                output.innerHTML+=cpu.load_word(cpu.gen_reg[num],0).getLowBits();
            }
            break;
        case "db":
            breakpoints[trans(val)]=0;
    }
}