function readbin(binstr,p,l)
{
    var res=0;
    for(var i=p+l-1;i>=p;--i)
        res=(res<<8)+(binstr.charCodeAt(i)&0xff);
    return res;
}
function loadbin()
{
    var file=document.getElementById("file");
    var reader=new FileReader();
    reader.onload=function(e){
        var binstr=reader.result;
        var txt=document.getElementById("text");
        txt.innerHTML=binstr.length;
        var sec_hd_sta=readbin(binstr,40,8);
        // txt.innerHTML+="</br>program header start: "+pro_hd_sta;
        // var pro_hd_siz=readbin(binstr,54,2);
        // txt.innerHTML+="</br>program header size: "+pro_hd_siz;
        // var pro_hd_cnt=readbin(binstr,56,2);
        // txt.innerHTML+="</br>program header count: "+pro_hd_cnt;
        // var content_beginning=pro_hd_sta+pro_hd_siz*pro_hd_cnt;
        /*
        for(var hd=pro_hd_sta,i=1;i<=pro_hd_cnt;++i,hd+=pro_hd_siz)
        {
            var type=binstr.charCodeAt(hd);
            if(type!=1)continue;//not LOAD
            var offset=readbin(binstr,hd+8,8);
            var paddr=readbin(binstr,hd+24,8);
            txt.innerHTML+="</br>program number "+i+"---------";
            txt.innerHTML+="</br>offset: "+offset;
            txt.innerHTML+="</br>paddr: "+paddr;
        }
        */
        // /*
        for(var i=sec_hd_sta;i<binstr.length;++i)
        {
            if(i%8==0)
            {
                txt.innerHTML+="</br>";
                txt.innerHTML+=i+": ";
            }
            if(binstr.charCodeAt(i)==-1)break;
            txt.innerHTML+=" "+(binstr.charCodeAt(i)&0xff).toString(16);
        }
        // */
    }
    reader.readAsBinaryString(file.files[0]);
}