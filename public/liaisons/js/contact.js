$(document).ready(function(){

    // Permet d'affiché / caché les champs lorsque le responsable 4 est selectionné
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