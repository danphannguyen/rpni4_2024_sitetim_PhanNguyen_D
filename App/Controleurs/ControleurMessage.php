<?php

declare(strict_types=1);

namespace App\Controleurs;

use App\App;
use App\Modeles\Message;


class ControleurMessage
{
    public function __construct()
    {
    }



    public function inserer(): void
    {
        $consentement = 0;
        $telephone = "";

        if (isset($_POST['consentement'])) {
            $consentement = 1;
        }

        if (isset($_POST['telephone'])) {
            $telephone = $_POST['telephone'];
        }

        // Validation des données

        $message = new Message();
        $message->setPrenomNom($_POST['prenom_nom']);
        $message->setCourriel($_POST['courriel']);
        $message->setTelephone($telephone);
        $message->setConsentement($consentement);
        $message->setSujet($_POST['sujet']);
        $message->setContenu($_POST['contenu']);
        $message->setResponsableId((int)$_POST['responsable_id']);

        

        $message->insererBdd();
        $message->envoyerCourriel();
    }
}
