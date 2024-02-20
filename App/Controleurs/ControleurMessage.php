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

        $regexTexte = "/^[a-zA-ZÀ-ÿ'\s-]+$/u";
        $regexCourriel = "/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/";
        $regexTelephone = "/^\d{3}[\s-]?\d{3}[\s-]?\d{4}$/";


        $tPrenom = $validation->validerChamp($_POST['prenom_nom'], $regexTexte, 'nom');
        $tCourriel = $validation->validerChamp($_POST['courriel'], $regexCourriel, 'courriel');
        $tDestinataire = $validation->validerBoolean($_POST['responsable_id'], 'destinataire');
        $tSujet = $validation->validerChamp($_POST['sujet'], $regexTexte, 'sujet');
        $tContenu = $validation->validerChamp($_POST['contenu'], $regexTexte, 'message');
        $tHumain = $validation->validerBoolean($humain, 'humain');

        if (isset($_POST['consentement']) && $_POST['consentement'] !== "" || isset($_POST['telephone']) && $_POST['telephone'] !== "") {

            if ($_POST['consentement'] == "on") {
                $consentement = true;
            } else {
                $consentement = false;
            }

            $telephone = $_POST['telephone'];
            $tTelephone = $validation->validerChamp($telephone, $regexTelephone, 'telephone');

            $tConsentement = $validation->validerBoolean($consentement, 'consentement');
        } else {
            $tConsentement = true;
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

            // Création d'un objet Message
            $message = new Message();
            $message->setPrenomNom($_POST['prenom_nom']);
            $message->setCourriel($_POST['courriel']);
            $message->setTelephone($telephone);
            $message->setConsentement($tConsentement);
            $message->setSujet($_POST['sujet']);
            $message->setContenu($_POST['contenu']);
            $message->setResponsableId((int)$_POST['responsable_id']);

            // Insérer le message dans la base de données et envoyer le courriel si tout est bon
            try {
                $message->insererBdd();
                $message->envoyerCourriel();
                $_SESSION['retroaction'] = "envoyer";
            } catch (\Exception $e) {
                $_SESSION['retroaction'] = "aborter";
            }

        } else {
            // Si un ou plusieurs états sont à false, retourner à la page de contact avec les erreurs
            $_SESSION['validation'] = $tValidation;
            $_SESSION['retroaction'] = "completer";
        }

        print_r(json_encode($tValidation));
        echo "<br>";
        echo $_SESSION['retroaction'];

        header('Location: index.php?controleur=site&action=contact');

    }
}
