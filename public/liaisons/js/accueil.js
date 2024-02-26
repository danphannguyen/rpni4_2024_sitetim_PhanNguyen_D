$(document).ready(function() {


    var values = $('.statistic');
    values.each(function() {

        var percentage = $(this).find('.fig');
        var textcontent = percentage.text();
        var circle = $(this).find('.statcircle__animated');

        // animate text from 0 to value
        percentage.prop('Counter', 0).animate({
            Counter: textcontent
        }, {
            duration: 1000,
            easing: 'swing',
            step: function(now) {
                percentage.text(Math.ceil(now));
            }
        });

        function initTweens() {
            // animate circle path using GSAP DrawSVG
            TweenMax.fromTo(circle, 1.5, {
                // animate!
                drawSVG: "0"
            }, {
                drawSVG: textcontent + "%"
            }); // tween
        };
        initTweens();

    }); // each

});