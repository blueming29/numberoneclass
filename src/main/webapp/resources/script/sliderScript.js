var slides = document.querySelector('.slides'),
    slide = document.querySelectorAll('.slides li'),
    currentPage = 1,
    pageItems = 5,
    slideCount = slide.length,
    totalPage = parseInt(slideCount/pageItems) + ((slideCount % pageItems) == 0 ? 0 : 1),
    slideWidth = 240,
    slideMargin = 20,
    pageLength = (slideWidth + slideMargin) * pageItems,
    prevBtn = document.querySelector('.prev'),
    nextBtn = document.querySelector('.next');

    slides.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px';

function moveSlide(num) {
    slides.style.left = - (num - 1) * pageLength + 'px';
    currentPage = num;
//    console.log(currentPage + ' : ' + totalPage);
    
    updateButton();
}

function updateButton(){
    if(currentPage == 1) {
        prevBtn.style.display = 'none';
    } else {
        prevBtn.style.display = 'block';
    }
    
    if(currentPage == totalPage){
        nextBtn.style.display = 'none';

    } else {
        nextBtn.style.display = 'block';

    }
}

nextBtn.addEventListener('click', function () {
    if (currentPage < totalPage) {
        moveSlide(currentPage + 1);
    } else {
        moveSlide(1);
    }
});

prevBtn.addEventListener('click', function () {
    if (currentPage > 1) {
        moveSlide(currentPage - 1);
    } else {
        moveSlide(totalPage);
    }
});
