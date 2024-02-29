<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

class Texte
{

    private int $id = 0;
    private string $titre = '';
    private string $texte = '';
    private int $epic = 0;

    public function __construct()
    {
    }

    // Méthode Static
    public static function getTexteArray($array)
    {
        $pdo = App::getPDO();

        // Créer une chaîne de paramètres nommés pour chaque valeur d'ID
        $params = implode(', ', array_map(fn ($key) => ":id$key", array_keys($array)));

        // Créer la requête avec les paramètres nommés
        $requete = "SELECT * FROM textes WHERE id IN ($params)";

        $stmt = $pdo->prepare($requete);

        // Lier chaque valeur d'ID à son paramètre nommé dans la requête
        foreach ($array as $key => $value) {
            $stmt->bindValue(":id$key", $value, PDO::PARAM_INT);
        }

        // Exécuter la requête
        $stmt->execute();

        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Texte::class);

        // Retourner un tableau associatif des objets Texte
        $resultats = $stmt->fetchAll();

        // Créer un tableau associatif des objets Texte avec l'ID comme clé
        $resultatsAssoc = [];
        foreach ($resultats as $texte) {
            $resultatsAssoc[$texte->id] = $texte;
        }

        return $resultatsAssoc;
    }

    // Méthode Get
    public function getId(): int
    {
        return $this->id;
    }

    public function getTitre(): string
    {
        return $this->titre;
    }

    public function getTexte(): string
    {
        return $this->texte;
    }

    public function getEpic(): int
    {
        return $this->epic;
    }


}
