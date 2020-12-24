var slides = document.querySelector('.slides'),
    slide = document.querySelectorAll('.slides li'),
    currentIdx = 0,
    currentSlideCount = 5,
    slideCount = slide.length,
    slideWidth = 250,
    slideMargin = 20,
    prevBtn = document.querySelector('#prev'),
    nextBtn = document.querySelector('#next');

slides.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px';

function moveSlide(num) {
    slides.style.left = - num * 270 + 'px';
    currentIdx = num;
}
nextBtn.addEventListener('click', function () {
    if (currentIdx < slideCount - 5) {
        moveSlide(currentIdx + 5);
    } else {
    	moveSlide(0);
    }
});

prevBtn.addEventListener('click', function () {
    if (currentIdx > 0) {
        moveSlide(currentIdx - 5);
    } else {
        moveSlide(slideCount - 5);
    }
});
