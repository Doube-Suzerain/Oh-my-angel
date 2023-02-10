
function readbin(binstr,p,l)
{
    var res=0;
    for(var i=p+l-1;i>=p;--i)
        res=(res<<8)+(binstr.charCodeAt(i)&0xff);
    return res;
}
function bin_to_long(binstr,p,l)
{
    if(l<=4)
        return new Long(readbin(binstr,p,l),0x0);
    var rh=0;
    var rl=0;
    for(var i=p+l-1;i>=p+4;--i)
        rh=(rh<<8)+(binstr.charCodeAt(i)&0xff);
    for(var i=p+3;i>=p;--i)
        rl=(rl<<8)+(binstr.charCodeAt(i)&0xff);
    return new Long(rl,rh);
}
function signed_to_64(imm,len)
{
    var sym=(imm>>(len-1))
    if(sym)return new Long(0xffffffff&imm,0xffffffff);
    return new Long(imm,0x0);
}
function unsigned_to_64(imm)
{
    return new Long(imm,0x0);
}
function signed_to_32(imm,len)
{
    var sym=(imm>>(len-1));
    if(sym)return 0xffffffff&imm;
    return imm;
}
function unsigned_less_than(long1,long2)
{
    var high1=new Long(long1.getHighBits(),0x0);
    var high2=new Long(long2.getHighBits(),0x0);
    if(high1.lessThan(high2))return 1;
    if(high2.lessThan(high1))return 1;
    delete high1;
    delete high2;
    var low1=new Long(long1.getLowBits(),0x0);
    var low2=new Long(long2.getLowBits(),0x0);
    return low1.lessThan(low2);
}
function getval(c)
{
    if(c>='0'&&c<='9')return c-'0';
    else if(c>='a'&&c<='f')
    {
        var s='a';
        return c.charCodeAt(0)-s.charCodeAt(0)+10;
    }
    else return -1;
}
function trans(tins)
{
    var res=0;
    for(var i=0;i<tins.length;i++)
    {
        if((val=getval(tins[i]))!=-1)
        {
            res=(res<<4)+val;
        }
        else break;
    }
    // text.innerHTML+="</br>"+tins+Dec_to_Bin(res);
    return res;
}
function Dec_to_Bin(val)
{
    var res="";
    for(var i=31;i>=0;--i)
    {
        if((1<<i)&val)res+='1';
        else res+='0';
        if(!(i&0x3))res+=' ';
    }
    return res;
}