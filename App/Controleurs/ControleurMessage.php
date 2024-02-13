<?php

declare(strict_types=1);

namespace App\Controleurs;

use App\App;
use App\Modeles\Message;
use App\Utilitaires\Validation;


class ControleurMessage
{
    public function __construct()
    {
    }



    public function inserer(): void
    {

        $telephone = "";
        $humain = 1;

        // ========= Validation des données ==========

        $validation = new Validation();

        $regexTexte = "/^[a-zA-ZÀ-ÿ'-]+$/u";
        $regexCourriel = "/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/";
        $regexTelephone = "/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/";


        $tPrenom = $validation->validerChamp($_POST['prenom_nom'], $regexTexte, 'nom');
        $tCourriel = $validation->validerChamp($_POST['courriel'], $regexCourriel, 'courriel');
        $tDestinataire = $validation->validerBoolean($_POST['responsable_id'], 'destinataire');
        $tSujet = $validation->validerChamp($_POST['sujet'], $regexTexte, 'sujet');
        $tContenu = $validation->validerChamp($_POST['contenu'], $regexTexte, 'message');
        $tHumain = $validation->validerBoolean($humain, 'humain');

        if (isset($_POST['consentement'])) {

            if ($_POST['consentement'] == "on") {
                $consentement = 1;
            }

            $tConsentement = $validation->validerBoolean($consentement, 'consentement');
        } else {
            $tConsentement = true;
        }

        if (isset($_POST['telephone'])) {
            $telephone = $_POST['telephone'];
            $tTelephone = $validation->validerChamp($telephone, $regexTelephone, 'telephone');
        } else {
            $tTelephone = true;
        }

        // Création d'un array pour contenir les erreurs de validation
        $tValidation = array(
            "prenom_nom" => array("state" => $tPrenom, "value" => $_POST['prenom_nom']),
            "courriel" => array("state" => $tCourriel, "value" => $_POST['courriel']),
            "responsable_id" => array("state" => $tDestinataire, "value" => $_POST['responsable_id']),
            "sujet" => array("state" => $tSujet, "value" => $_POST['sujet']),
            "contenu" => array("state" => $tContenu, "value" => $_POST['contenu']),
            "humain" => array("state" => $tHumain),
            "consentement" => array("state" => $tConsentement),
            "telephone" => array("state" => $tTelephone, "value" => $telephone),
        );


        $allTrue = true; // Création d'une variable pour vérifier si tous les états sont à true

        foreach ($tValidation as $valeur) {
            if (is_array($valeur) && $valeur['state'] !== true) { // Si c'est un objet avec l'état et la valeur
                $allTrue = false; // Mettre la variable $allTrue à false
                break; // Sortir de la boucle, car un seul faux suffit pour que l'ensemble soit faux
            }
        }

        // Vérification de la variable $allTrue
        if ($allTrue) {
            // Si tous les états sont à true, insérer le message dans la base de données et envoyer le courriel
            echo "Tous les états sont à true.";





        } else {
            // Si un ou plusieurs états sont à false, retourner à la page de contact avec les erreurs
            $_SESSION['validation'] = $tValidation;
            $_SESSION['retroaction'] = "completer";
            header('Location: index.php?controleur=site&action=contact');
        }







        // Création d'un objet Message
        // $message = new Message();
        // $message->setPrenomNom($prenomNom);
        // $message->setCourriel($courriel);
        // $message->setTelephone($telephone);
        // $message->setConsentement($consentement);
        // $message->setSujet($sujet);
        // $message->setContenu($contenu);
        // $message->setResponsableId($responsableId);


        // $message->insererBdd();
        // $message->envoyerCourriel();
    }
}
