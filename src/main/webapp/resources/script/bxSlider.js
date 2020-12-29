$(document).ready(function() {
    $(".boxoffice_slider").bxSlider({
        minSlides: 3,
        maxSlides: 5,
        //moveSlides: 1,
        pager: false,
        slideWidth: 244,
        slideMargin: 20,
        shrinkItems: true/*,
        
        prevText: '<i class="fas fa-chevron-left"></i>',
        nextText: '<i class="fas fa-chevron-right"></i>'*/
    });
    
    
    $(".point_slider").bxSlider({
        minSlides: 3,
        maxSlides: 5,
        //moveSlides: 1,
        pager: false,
        slideWidth: 244,
        slideMargin: 20,
        shrinkItems: true/*,
        
        prevText: '<i class="fas fa-chevron-left"></i>',
        nextText: '<i class="fas fa-chevron-right"></i>'*/
    });
});