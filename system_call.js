
function hold_system_call()
{
    var call_id=cpu.gen_reg[17].getLowBits();
    switch(call_id)
    {
        case 63://sys_read
            var addr=cpu.gen_reg[11].getLowBits();
            var val=document.getElementById("command").value;
            // alert(val);
            cpu.save_byte(addr,val);
            break;
        case 64://sys_write: todo
            var addr=cpu.gen_reg[11].getLowBits();
            // alert(cpu.memory[addr>>2].toString(16));
            var val=cpu.load_byte(new Long(addr,0x0),0).getLowBits();
            // alert(val+" "+String.fromCharCode(val));
            term.write(String.fromCharCode(val));
            break;
        case 93:
            alert(call_id);
            document.getElementById("info").innerHTML="Exit";
            document.getElementById("current instruction").innerHTML="";
            document.getElementById("cpu status").innerHTML="";
            document.getElementById("cpu status2").innerHTML="";
            document.getElementById("stack").innerHTML="";
            end_flag=1;
            break;
    }
}