function readfile()
{
    var file=document.getElementById("file");
    if(window.FileReader)
    {
        var reader=new FileReader();
        reader.onload=function(e)
        {
            var text=reader.result;
            var p=document.getElementById("text");
            p.innerHTML="";
            tlist=text.split('\n');
            for(var i=0;i<tlist.length;i++)
            {
                p.innerHTML+=tlist[i]+"</br>";
                console.log(tlist[i].length);
            }
           //console.log(tlist);
        }
        reader.readAsText(file.files[0]);
    }
    else
    {
        alert("Not supported by your browser!");
    }

}