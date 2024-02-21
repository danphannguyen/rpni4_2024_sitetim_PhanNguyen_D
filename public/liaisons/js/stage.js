$(document).ready(function () {


    $('#ateButton').click(function () {

        if ($('#ateButton').hasClass('secondButton')) {
            // Affiche les stages ATE et cache les stages finaux
            $('#stageAteWrapper').css('display', 'flex');
            $('#stageFinauxWrapper').hide();

            // Change le style des boutons
            $('#finauxButton').removeClass('mainButton');
            $('#finauxButton').addClass('secondButton');
            $('#ateButton').addClass('mainButton');
            $('#ateButton').removeClass('secondButton');
        }

    });

    $('#finauxButton').click(function () {

        if ($('#finauxButton').hasClass('secondButton')) {
            // Affiche les stages finaux et cache les stages ATE
            $('#stageFinauxWrapper').css('display', 'flex');
            $('#stageAteWrapper').hide();

            // Change le style des boutons
            $('#ateButton').removeClass('mainButton');
            $('#ateButton').addClass('secondButton');
            $('#finauxButton').addClass('mainButton');
            $('#finauxButton').removeClass('secondButton');
        }
    });


});