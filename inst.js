
function get_opcode(inst)
{
    var opc=inst&0x7f;
    return opc;
}
function get_func3(inst)
{
    var func3=(inst>>12)&0x7;
    return func3;
}
function get_func10(inst)
{
    var func10=((inst>>25)<<3)|((inst>>12)&0x7);
    return func10;
}
function get_rd(inst)
{
    var rd=(inst>>7)&0x1f;
    return rd;
}
function get_rs1(inst)
{
    var rs1=(inst>>15)&0x1f;
    return rs1;
}
function get_rs2(inst)
{
    var rs2=(inst>>20)&0x1f;
    return rs2;
}
function get_immI(inst)
{
    return inst>>20;
}
function get_immS(inst)
{
    var res=(inst>>7)&0x1f;
    res|=((inst>>25)<<5);
    return res;
}
function get_immB(inst)
{
    var res=(inst>>8)&0xf;
    res|=(((inst>>25)&0x3f)<<4);
    res|=((inst&0b10000000)<<3);
    res|=((inst>>31)<<11);
    res<<=1;
    return res;
}
function get_immJ(inst)
{
    var res=((inst>>12)&0xff)<<11;
    res|=((inst>>20)&1)<<10;
    res|=(inst>>21)&0x3ff;
    res|=((inst>>31)<<19);
    return res;
}
function get_imm_Large(inst)
{
    return (inst>>12)<<12;
}
function DtB(val,len)
{
    var res="";
    for(var i=len-1;i>=0;--i)
        res+=(val&(1<<i))?'1':'0';
    return res;
}
function run_an_inst(inst)
{
    if(end_flag)return;
    cpu.gen_reg[0]=Long.fromNumber(0);
    var opc=get_opcode(inst);
    var cur_inst=document.getElementById("current instruction");
    if(print_flag)cur_inst.innerHTML="pc: "+cpu.pc.toString(16);
    if(opc==0b0110011)//type R;
    {
        var func10=get_func10(inst);
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        var rs2=get_rs2(inst);
        if(print_flag)cur_inst.innerHTML+="</br> R opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" rs2: "+rs2+" func10: "+DtB(func10,10);
        switch(func10)
        {
            case 0x0://add
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].add(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp add";
                cpu.pc+=4;
                break;
            case 0b0100000000://sub
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].subtract(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp sub";
                cpu.pc+=4;
                break;
            case 0x1://sll
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftLeft(cpu.gen_reg[rs2].getLowBits()&0x3f);
                if(print_flag)cur_inst.innerHTML+="&nbsp sll";
                cpu.pc+=4;
                break;
            case 0x2://slt
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].lessThan(cpu.gen_reg[rs2])?Long.ONE:Long.ZERO;
                if(print_flag)cur_inst.innerHTML+="&nbsp slt";
                cpu.pc+=4;
                break;
            case 0x3://sltu
                cpu.gen_reg[rd]=unsigned_less_than(cpu.gen_reg[rs1],cpu.gen_reg[rs2])?Long.ONE:Long.ZERO;
                if(print_flag)cur_inst.innerHTML+="&nbsp sltu";
                cpu.pc+=4;
                break;
            case 0x4://xor
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].xor(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp xor";
                cpu.pc+=4;
                break;
            case 0x5://srl
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftRightUnsigned(cpu.gen_reg[rs2].getLowBits()&0x3f);
                if(print_flag)cur_inst.innerHTML+="&nbsp srl";
                cpu.pc+=4;
                break;
            case 0b0100000101://sra
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftRight(cpu.gen_reg[rs2].getLowBits()&0x3f);
                if(print_flag)cur_inst.innerHTML+="&nbsp sra";
                cpu.pc+=4;
                break;
            case 0x6://or
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].or(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp or";
                cpu.pc+=4;
                break;
            case 0x7://and
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].and(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp and";
                cpu.pc+=4;
                break;
            case 0x8://mul
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].multiply(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp mul";
                cpu.pc+=4;
                break;
            case 0xC://div
                if(cpu.gen_reg[rs2].isZero())
                    cpu.gen_reg[rd]=new Long(0xffffffff,0xffffffff);
                else if(cpu.gen_reg[rs1].equals(new Long(0x0,0x80000000))&&cpu.gen_reg[rs1].equals(new Long(0xffffffff,0xffffffff)))
                    cpu.gen_reg[rd]=cpu.gen_reg[rs1];
                else
                    cpu.gen_reg[rd]=cpu.gen_reg[rs1].divide(cpu.gen_reg[rs2]);
                if(print_flag)cur_inst.innerHTML+="&nbsp div";
                cpu.pc+=4;
                break;
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0x3)//type I-LOAD
    {
        var func3=get_func3(inst);
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        var imm=get_immI(inst);
        if(print_flag)cur_inst.innerHTML+="</br> I opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" imm: "+imm+" func3: "+DtB(func3,3);
        switch(func3)
        {
            case 0x0://lb
                cpu.gen_reg[rd]=cpu.load_byte(cpu.gen_reg[rs1].add(signed_to_64(imm)),1);
                if(print_flag)cur_inst.innerHTML+="&nbsp lb";
                cpu.pc+=4;
                break;
            case 0x1://lh
                cpu.gen_reg[rd]=cpu.load_half(cpu.gen_reg[rs1].add(signed_to_64(imm)),1);
                if(print_flag)cur_inst.innerHTML+="&nbsp lh";
                cpu.pc+=4;
                break;
            case 0x2://lw
                cpu.gen_reg[rd]=cpu.load_word(cpu.gen_reg[rs1].add(signed_to_64(imm)),1);
                if(print_flag)cur_inst.innerHTML+="&nbsp lw";
                cpu.pc+=4;
                break;
            case 0x3://ld
                cpu.gen_reg[rd]=cpu.load_double(cpu.gen_reg[rs1].add(signed_to_64(imm)));
                if(print_flag)cur_inst.innerHTML+="&nbsp ldu";
                cpu.pc+=4;
                break;
            case 0x4://lbu
                cpu.gen_reg[rd]=cpu.load_byte(cpu.gen_reg[rs1].add(signed_to_64(imm)),0);
                if(print_flag)cur_inst.innerHTML+="&nbsp lbu";
                cpu.pc+=4;
                break;
            case 0x5://lhu
                cpu.gen_reg[rd]=cpu.load_half(cpu.gen_reg[rs1].add(signed_to_64(imm)),0);
                if(print_flag)cur_inst.innerHTML+="&nbsp lhu";
                cpu.pc+=4;
                break;
            case 0x6://lwu
                cpu.gen_reg[rd]=cpu.load_word(cpu.gen_reg[rs1].add(signed_to_64(imm)),0);
                if(print_flag)cur_inst.innerHTML+="&nbsp lwu";
                cpu.pc+=4;
                break;
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0b10011)//type I-CALC
    {
        var func3=get_func3(inst);
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        var imm=get_immI(inst);
        if(print_flag)cur_inst.innerHTML+="</br> I opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" imm: "+imm+" func3: "+DtB(func3,3);
        switch(func3)
        {
            case 0x0://addi
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].add(signed_to_64(imm,12));
                if(print_flag)cur_inst.innerHTML+="&nbsp addi";
                cpu.pc+=4;
                break;
            case 0x1://slli
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftLeft(signed_to_64(imm,12));
                if(print_flag)cur_inst.innerHTML+="&nbsp slli";
                cpu.pc+=4;
                break;
            case 0x2://slti
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].lessThan(signed_to_64(imm,12))?Long.ONE:Long.ZERO;
                if(print_flag)cur_inst.innerHTML+="&nbsp slti";
                cpu.pc+=4;
                break;
            case 0x3://sltui
                cpu.gen_reg[rd]=unsigned_less_than(cpu.gen_reg[rs1],unsigned_to_64(imm))?Long.ONE:Long.ZERO;
                if(print_flag)cur_inst.innerHTML+="&nbsp sltui";
                cpu.pc+=4;
                break;
            case 0x4://xori
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].xor(signed_to_64(imm,12));
                if(print_flag)cur_inst.innerHTML+="&nbsp xori";
                cpu.pc+=4;
                break;
            case 0x5://sr?i
                if(imm>>10)//srai
                {
                    imm&=0x7f;
                    cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftRight(imm);
                    if(print_flag)cur_inst.innerHTML+="&nbsp srai";
                    cpu.pc+=4;
                    break;
                }
                else//srli
                {
                    cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftRightUnsigned(imm);
                    if(print_flag)cur_inst.innerHTML+="&nbsp srli";
                    cpu.pc+=4;
                    break;
                }
            case 0x6://ori
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].or(signed_to_64(imm,12));
                if(print_flag)cur_inst.innerHTML+="&nbsp ori";
                cpu.pc+=4;
                break;
            case 0x7://andi
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].and(signed_to_64(imm,12));
                if(print_flag)cur_inst.innerHTML+="&nbsp andi";
                cpu.pc+=4;
                break;
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0b1100111)//jalr
    {
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        var imm=get_immI(inst);
        if(print_flag)cur_inst.innerHTML+="</br> jalr opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" imm: "+imm;
        cpu.gen_reg[rd]=unsigned_to_64(cpu.pc).add(unsigned_to_64(4));
        cpu.pc=(cpu.gen_reg[rs1].add(signed_to_64(imm)).getLowBits()&(~1));
    }
    else if(opc==0b1101111)//jal
    {
        var rd=get_rd(inst);
        var imm=get_immJ(inst)<<1;
        if(print_flag)cur_inst.innerHTML+="</br> jal opcode: "+DtB(opc,7)+" rd: "+rd+" imm: "+imm;
        cpu.gen_reg[rd]=unsigned_to_64(cpu.pc).add(unsigned_to_64(4));
        cpu.pc+=signed_to_32(imm,21);
    }
    else if(opc==0b0110111)//lui
    {
        var rd=get_rd(inst);
        var imm=get_imm_Large(inst);
        if(print_flag)cur_inst.innerHTML+="</br> lui opcode: "+DtB(opc,7)+" rd: "+rd+" imm: "+imm;
        cpu.gen_reg[rd]=signed_to_64(imm,32);//signed or unsigned? signed!
        cpu.pc+=4;
    }
    else if(opc==0b0010111)//auipc
    {
        var rd=get_rd(inst);
        var imm=get_imm_Large(inst);
        if(print_flag)cur_inst.innerHTML+="</br> auipc opcode: "+DtB(opc,7)+" rd: "+rd+" imm: "+imm;
        cpu.gen_reg[rd]=unsigned_to_64(imm+cpu.pc);
        cpu.pc+=4;
    }
    else if(opc==0b0100011)//type S
    {
        var func3=get_func3(inst);
        var rs1=get_rs1(inst);
        var rs2=get_rs2(inst);
        var imm=get_immS(inst);
        if(print_flag)cur_inst.innerHTML+="</br> S opcode: "+DtB(opc,7)+" rs1: "+rs1+" rs2: "+rs2+" imm: "+imm+" func3: "+DtB(func3,3);
        switch(func3)
        {
            case 0x0://sb
                var ad=cpu.gen_reg[rs1].add(signed_to_64(imm)).getLowBits();
                var val=cpu.gen_reg[rs2].getLowBits()&0xff;
                cpu.save_byte(ad,val);
                if(print_flag)cur_inst.innerHTML+="&nbsp sb";
                cpu.pc+=4;
                break;
            case 0x1://sh
                var ad=cpu.gen_reg[rs1].add(signed_to_64(imm)).getLowBits();
                var val=cpu.gen_reg[rs2].getLowBits()&0xffff;
                cpu.save_half(ad,val);
                if(print_flag)cur_inst.innerHTML+="&nbsp sh";
                cpu.pc+=4;
                break;
            case 0x2://sw
                var ad=cpu.gen_reg[rs1].add(signed_to_64(imm)).getLowBits();
                var val=cpu.gen_reg[rs2].getLowBits();
                cpu.save_word(ad,val);
                if(print_flag)cur_inst.innerHTML+="&nbsp sw";
                cpu.pc+=4;
                break;
            case 0x3://sd
                var ad=cpu.gen_reg[rs1].add(signed_to_64(imm)).getLowBits();
                var val=cpu.gen_reg[rs2];
                cpu.save_double(ad,val);
                if(print_flag)cur_inst.innerHTML+="&nbsp sd";
                cpu.pc+=4;
                break;
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0b1100011)//type B
    {
        var func3=get_func3(inst);
        var rs1=get_rs1(inst);
        var rs2=get_rs2(inst);
        var imm=get_immB(inst);
        if(print_flag)cur_inst.innerHTML+="</br> B opcode: "+DtB(opc,7)+" rs1: "+rs1+" rs2: "+rs2+" imm: "+imm+" func3: "+DtB(func3,3);
        switch(func3)
        {
            case 0x0://beq
                if(cpu.gen_reg[rs1].equals(cpu.gen_reg[rs2]))
                    cpu.pc+=signed_to_32(imm);
                else cpu.pc+=4;
                if(print_flag)cur_inst.innerHTML+="&nbsp beq";
                break;
            case 0x1://bne
                if(!(cpu.gen_reg[rs1].equals(cpu.gen_reg[rs2])))
                    cpu.pc+=signed_to_32(imm);
                else cpu.pc+=4;
                if(print_flag)cur_inst.innerHTML+="&nbsp bne";
                break;
            case 0b100://blt
                if(cpu.gen_reg[rs1].lessThan(cpu.gen_reg[rs2]))
                    cpu.pc+=signed_to_32(imm);
                else cpu.pc+=4;
                if(print_flag)cur_inst.innerHTML+="&nbsp blt";
                break;
            case 0b101://bge
                if(!(cpu.gen_reg[rs1].lessThan(cpu.gen_reg[rs2])))
                    cpu.pc+=signed_to_32(imm);
                else cpu.pc+=4;
                if(print_flag)cur_inst.innerHTML+="&nbsp bge";
                break;
            case 0b110://bltu
                if(unsigned_less_than(cpu.gen_reg[rs1],cpu.gen_reg[rs2]))
                    cpu.pc+=signed_to_32(imm);
                else cpu.pc+=4;
                if(print_flag)cur_inst.innerHTML+="&nbsp bltu";
                break;
            case 0b111://bgeu
                if(!unsigned_less_than(cpu.gen_reg[rs1],cpu.gen_reg[rs2]))
                    cpu.pc+=signed_to_32(imm);
                else cpu.pc+=4;
                if(print_flag)cur_inst.innerHTML+="&nbsp bltu";
                break;
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0b0011011)//I-32bits
    {
        var func3=get_func3(inst);
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        var imm=get_immI(inst);
        if(print_flag)cur_inst.innerHTML+="</br> I-32 opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" imm: "+imm+" func3: "+DtB(func3,3);
        switch(func3)
        {
            case 0x0://addiw
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].add(signed_to_64(imm,12));
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rd].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp addiw";
                cpu.pc+=4;
                break;
            case 0x1://slliw
                cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftLeft(signed_to_64(imm,12));
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rd].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp slliw";
                cpu.pc+=4;
                break;
            case 0x5://sr?i
                if(imm>>10)//srai
                {
                    imm&=0x7f;
                    cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftRight(imm);
                    cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rd].getLowBits(),32);
                    if(print_flag)cur_inst.innerHTML+="&nbsp sraiw";
                    cpu.pc+=4;
                    break;
                }
                else//srli
                {
                    cpu.gen_reg[rd]=cpu.gen_reg[rs1].shiftRightUnsigned(imm);
                    cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rd].getLowBits(),32);
                    if(print_flag)cur_inst.innerHTML+="&nbsp srliw";
                    cpu.pc+=4;
                    break;
                }
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0b0111011)//R-32bits
    {
        var func10=get_func10(inst);
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        var rs2=get_rs2(inst);
        if(print_flag)cur_inst.innerHTML+="</br> R-32 opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" rs2: "+rs2+" func10: "+DtB(func10,10);
        switch(func10)
        {
            case 0x0://addw
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()+cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp addw";
                cpu.pc+=4;
                break;
            case 0b0100000000://subw
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()-cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp subw";
                cpu.pc+=4;
                break;
            case 0x1://sllw
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()<<cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp sllw";
                cpu.pc+=4;
                break;
            case 0x5://srlw
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()>>>cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp srlw";
                cpu.pc+=4;
                break;
            case 0b0100000101://sraw
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()>>cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp sraw";
                cpu.pc+=4;
                break;
            case 0x8://mulw
                cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()*cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp mulw";
                cpu.pc+=4;
                break;
            case 0xC://divw
                if(cpu.gen_reg[rs2].getLowBits()==0)
                    cpu.gen_reg[rd]=new Long(0xffffffff,0xffffffff);
                else
                    cpu.gen_reg[rd]=signed_to_64(cpu.gen_reg[rs1].getLowBits()/cpu.gen_reg[rs2].getLowBits(),32);
                if(print_flag)cur_inst.innerHTML+="&nbsp divw";
                cpu.pc+=4;
                break;
            case 0xD://divuw
                if(cpu.gen_reg[rs2].getLowBits()==0)
                    cpu.gen_reg[rd]=new Long(0xffffffff,0xffffffff);
                else
                {
                    var v1=cpu.gen_reg[rs1].getLowBits()>>>0;
                    var v2=cpu.gen_reg[rs2].getLowBits()>>>0;
                    cpu.gen_reg[rd]=signed_to_64(v1/v2,32);
                }
                if(print_flag)cur_inst.innerHTML+="&nbsp divuw";
                cpu.pc+=4;
                break;
            default:
                alert("对不起做不到");
                break;
        }
    }
    else if(opc==0b1110011)//I-system
    {
        var imm=get_immI(inst);
        var func3=get_func3(inst);
        var rd=get_rd(inst);
        var rs1=get_rs1(inst);
        if(print_flag)cur_inst.innerHTML+="</br> I-system opcode: "+DtB(opc,7)+" rd: "+rd+" rs1: "+rs1+" func3: "+DtB(func3,3)+" imm: "+imm;
        if(imm==0&&func3==0&&rd==0&&rs1==0)//ecall
        {
            hold_system_call();
            cpu.pc+=4;
        }
        else
        {
            //csr
            switch(func3)
            {
                case 0x1://csrrw
                    var tmp=cpu.csr[imm];
                    cpu.csr[imm]=cpu.gen_reg[rs1];
                    cpu.gen_reg[rd]=tmp;
                    if(print_flag)cur_inst.innerHTML+="&nbsp csrrw";
                    cpu.pc+=4;
                    break;
                case 0x2://csrrs
                    var tmp=cpu.csr[imm];
                    cpu.csr[imm]=cpu.gen_reg[rs1].or(tmp);
                    cpu.gen_reg[rd]=tmp;
                    if(print_flag)cur_inst.innerHTML+="&nbsp csrrs";
                    cpu.pc+=4;
                    break;
                case 0x3://csrrc
                    var tmp=cpu.csr[imm];
                    cpu.csr[imm]=tmp.and(cpu.gen_reg[rs1].not());
                    cpu.gen_reg[rd]=tmp;
                    if(print_flag)cur_inst.innerHTML+="&nbsp csrrc";
                    cpu.pc+=4;
                    break;
                case 0x5://csrrwi
                    cpu.gen_reg[rd]=cpu.csr[imm];
                    cpu.csr[imm]=unsigned_to_64(rs1);
                    if(print_flag)cur_inst.innerHTML+="&nbsp csrrwi";
                    cpu.pc+=4;
                    break;
                case 0x6://csrrsi
                    var tmp=cpu.csr[imm];
                    cpu.csr[imm]=unsigned_to_64(rs1).or(tmp);
                    cpu.gen_reg[rd]=tmp;
                    if(print_flag)cur_inst.innerHTML+="&nbsp csrrsi";
                    cpu.pc+=4;
                    break;
                case 0x7://csrrci
                    var tmp=cpu.csr[imm];
                    cpu.csr[imm]=tmp.and(unsigned_to_64(imm).not());
                    cpu.gen_reg[rd]=tmp;
                    if(print_flag)cur_inst.innerHTML+="&nbsp csrrci";
                    cpu.pc+=4;
                    break;
                default:
                    alert("对不起做不到");
                    break;
            }
        }
    }
    else
    {
        alert("NOT R");
    }
    cpu.gen_reg[0]=Long.fromNumber(0);
    cpu.print_status();
}