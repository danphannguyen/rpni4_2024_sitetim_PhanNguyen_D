$(document).ready(function(){

    // permet de réafficher les champs lorsque l'utilisateur s'est trompé
    if($('#responsable4').is(':checked')){
        $('#telephoneWrapper').show()
        $('#consentementWrapper').show()
        $('#telephone').prop('required', true);
        $('#consentement').prop('required', true);
    }

    // Permet d'affiché / caché les champs lorsque l'utilisateur change de destinataire
    $('input[type="radio"]').change(function(){
        if($('#responsable4').is(':checked')){
            $('#telephoneWrapper').show()
            $('#consentementWrapper').show()
            $('#telephone').prop('required', true);
            $('#consentement').prop('required', true);
        } else {
            $('#telephoneWrapper').hide()
            $('#consentementWrapper').hide()
            $('#telephone').prop('required', false);
            $('#consentement').prop('required', false);
        }
    });

});