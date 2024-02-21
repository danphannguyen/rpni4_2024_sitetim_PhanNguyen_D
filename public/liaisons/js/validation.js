$(document).ready(function () {

    // ========== Récupération des données JSON ==========
    fetch('./liaisons/json/messages-erreur_form.json')
        .then(response => response.json()) // Convertir la réponse en JSON
        .then(data => {
            // Sauvegarder les données JSON dans une variable
            let errorJsonData = data;

        })
        .catch(error => {
            console.error('Une erreur s\'est produite lors de la récupération du JSON:', error);
        });


    //  ========== Fonctions de validation des champs du formulaire de contact ==========

    function Erreur(id, message) {

        if (message !== true) {
            if ($(id).parent().find('.formError').length > 0) {
                $(id).parent().find('.formError').remove();
                $(id).parent().find('input').css('border', 'red').css('border-width', '0px').css('border-style', 'solid');
            }

            $(id).parent().append('<span class="formError"> ' + message + ' </span>');
            $(id).parent().find('input').css('border-color', 'red').css('border-width', '2px').css('border-style', 'solid');
        } else {
            $(id).parent().find('.formError').remove();
        }
    }

    // Fonction permetant de valider le champ nom
    function validateTexte(value = "", id, pattern) {
        // Définition des messages d'erreur
        const messages = {
            empty: "Le champ ne doit pas être vide",
            lengthMin: "Le champ doit contenir au moins 2 caractères",
            specialChars: "Le champs contient des caractères non autorisés"
        };

        // Définition des conditions
        const conditions = {
            empty: value === "",
            lengthMin: value.length < 2,
            specialChars: !value.match(pattern)
        };

        // Pour chaque condition, si elle est vraie, renvoyer le message d'erreur correspondant
        for (let key in conditions) {
            if (conditions[key]) {
                return messages[key];
            }
        }

        // Si aucune condition n'est vraie, renvoyer true
        return true;
    }


    // ========== Écouteur d'évènements sur les inputs ==========

    // Écouteur d'évènement sur le champ nom
    $('#fullname').on('blur', function () {

        // On envoie la valeur du champ nom à la fonction validateTexte ( id, value, pattern)
        let error = validateTexte($(this).val(), $(this).attr('id'), $(this).attr('pattern'));

        // On envoie le message d'erreur et l'id du container à la fonction Erreur ( id, message)
        Erreur($(this), error);
    });

    // Écouteur d'évènement sur le champ email
    $('#courriel').on('blur', function () {
        // On envoie la valeur du champ email à la fonction validateTexte ( id, value, pattern)
        let error = validateTexte($(this).val(), $(this).attr('id'), $(this).attr('pattern'));

        // On envoie le message d'erreur et l'id du container à la fonction Erreur ( id, message)
        Erreur($(this), error);
    });

    // Écouteur d'évènement sur le champ telephone
    $('#telephone').on('blur', function () {
        // On envoie la valeur du champ telephone à la fonction validateTexte ( id, value, pattern)
        let error = validateTexte($(this).val(), $(this).attr('id'), $(this).attr('pattern'));

        // On envoie le message d'erreur et l'id du container à la fonction Erreur ( id, message)
        Erreur($(this), error);
    });


    // Écouteur d'évènement sur le champ Sujer
    $('#sujet').on('blur', function () {
        // On envoie la valeur du champ sujet à la fonction validateTexte ( id, value, pattern)
        let error = validateTexte($(this).val(), $(this).attr('id'), $(this).attr('pattern'));

        // On envoie le message d'erreur et l'id du container à la fonction Erreur ( id, message)
        Erreur($(this), error);
    });

    // Écouteur d'évènement sur le champ message
    $('#message').on('blur', function () {
        // On envoie la valeur du champ message à la fonction validateTexte ( id, value, pattern)
        let error = validateTexte($(this).val(), $(this).attr('id'), $(this).attr('pattern'));

        // On envoie le message d'erreur et l'id du container à la fonction Erreur ( id, message)
        Erreur($(this), error);
    });

});