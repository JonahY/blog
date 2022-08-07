// 要操作的元素
const about_jonah=document.querySelector('.about_jonah');
let width=190;
const about_jonah_imgs=document.querySelectorAll('.about_jonah img');

// 为容器绑定鼠标移入事件
about_jonah.addEventListener('mouseenter',function(e){
    about_jonah_imgs.forEach((img,index)=>{
        let horizontal=0;
        if (index === about_jonah_imgs.length-1) {
            img.style.setProperty('transform','translate(0px,0px) scale(0.5)');
            img.style.setProperty('opacity',0.5);
            img.style.setProperty('transition-delay','0.3s');
        } else {
            if (index <= Math.trunc(about_jonah_imgs.length/2)-1) {
                horizontal=width * 0.9 * -(Math.trunc(about_jonah_imgs.length/2)-index);
            } else if (index >= Math.trunc(about_jonah_imgs.length/2)) {
                horizontal=width * 0.9 * -(Math.trunc(about_jonah_imgs.length/2)-index-1);
            } else {
                horizontal=0;
            }
            img.style.setProperty('transform','translate(' + horizontal+'px,20px)');
            img.style.setProperty('opacity',0.8);
            img.style.setProperty('transition-delay','0.2s');
        }
    })
})

// 为容器绑定鼠标移出事件
about_jonah.addEventListener('mouseleave',function(e){
    // 遍历图片
    about_jonah_imgs.forEach((img,index)=>{
        img.style.setProperty('transform','translate(0px,0px)');
        img.style.setProperty('opacity',1);
        img.style.setProperty('transition','0.5s');
    })
})