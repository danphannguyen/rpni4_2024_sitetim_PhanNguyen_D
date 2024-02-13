<?php

declare(strict_types=1);

namespace App\Utilitaires;

use App\App;

use PDO;
use PDO\PDOStatement;

class Validation
{
    private $tMessagesJson;

    public function __construct()
    {
        // Permet de récupérer les messages d'erreurs dans un fichier JSON lors de l'instanciation de la classe
        $contenuBruteFichierJson = file_get_contents("../public/liaisons/json/messages-erreur_form.json");
        $this->tMessagesJson = json_decode($contenuBruteFichierJson, true);
    }

    // Méthode pour retourner le contenu du fichier JSON
    public function getJson()
    {
        return $this->tMessagesJson;
    }

    // Méthode pour valider si un champ est vide ou non
    public function estVide($valeur)
    {
        if ($valeur == "" || $valeur == null) {
            // le champs est vide
            return true;
        } else {
            // le champs n'est pas vide
            return false;
        }
    }

    // Méthode pour valider si un champ est conforme à une expression régulière
    public function validerChamp($valeur, $regex, $jsonid)
    {
        // Test si le champ est vide
        if (Validation::estVide($valeur, $jsonid)) {
            // Si le champ est vide, retourner le message d'erreur approprié
            return $this->tMessagesJson[$jsonid]["erreurs"]["vide"];
        } elseif (!preg_match($regex, $valeur)) {
            // Si le champ ne correspond pas à l'expression régulière, retourner le message d'erreur approprié
            return $this->tMessagesJson[$jsonid]["erreurs"]["motif"];
        } else {
            return true;
        }
    }

    // Méthode pour valider si un champ est conforme à un booléen
    public function validerBoolean($valeur, $jsonid)
    {
        // Test si le champ est vide
        if (Validation::estVide($valeur, $jsonid)) {
            // Si le champ est vide, retourner le message d'erreur approprié
            return $this->tMessagesJson[$jsonid]["erreurs"]["vide"];
        } else {
            return true;
        }
    }

    // Méthode pour retourner un message de rétroaction
    public function getRetroactions($status)
    {
        switch ($status) {
            case "completer":
                $result = $this->tMessagesJson["retroactions"]["courriel"]["completer"];
                break;
            case "envoyer":
                $result = $this->tMessagesJson["retroactions"]["courriel"]["envoyer"];
                break;
            case "avorter":
                $result = $this->tMessagesJson["retroactions"]["courriel"]["avorter"];
                break;
            default:
                $result = "Easter egg ???";
                break;
        }

        return $result;
    }
}
