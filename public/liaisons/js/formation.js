$(document).ready(function () {

    function resetAll() {
        $('.contentDisplayFormation').hide();
        $('.formationButton').removeClass('mainButton');
        $('.formationButton').addClass('secondButton');
    }

    $('.formationButton').on('click', function () {
        resetAll();
        $(this).addClass('mainButton');
        $(this).removeClass('secondButton');
        let idTarget = $(this).attr('id').replace('Button', 'Display');
        $('#' + idTarget).attr('style', 'display: flex');

    });

});