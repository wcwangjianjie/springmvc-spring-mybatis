function iframeHeight(){
    var ifm= document.getElementById("iframeContent");
    ifm.height=document.getElementById("pageContentWrapper").offsetHeight - document.getElementById("pageBar").offsetHeight;
}