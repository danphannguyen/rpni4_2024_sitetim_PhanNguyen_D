$(document).ready(function () {

    let modal = "";
    var btn = $(".modalBtn");
    var span = $(".close");

    // Ouvrir le modal lorsque le bouton est cliqué
    btn.click(function () {
        modal = $("#" + "modalFinissant" + $(this).data('target'));
        modal.css("display", "block");
    });

    // Fermer le modal lorsque l'utilisateur clique sur le bouton (x)
    span.click(function () {
        modal.css("display", "none");
    });

    // Fermer le modal lorsque l'utilisateur clique en dehors du modal
    $(window).click(function (event) {
        if (event.target == modal[0]) {
            modal.css("display", "none");
        }
    });


    var values = $('.statistic');
    values.each(function () {

        var percentage = $(this).find('.fig');
        var textcontent = percentage.text();
        var circle = $(this).find('.statcircle__animated');

        // animate text from 0 to value
        percentage.prop('Counter', 0).animate({
            Counter: textcontent
        }, {
            duration: 1000,
            easing: 'swing',
            step: function (now) {
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