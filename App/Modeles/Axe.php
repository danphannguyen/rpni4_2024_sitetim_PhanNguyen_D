<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

// Importation des classes associatives
use App\Modeles\AxeCour;

class Axe
{

    private int $id = 0;
    private string $nom = '';

    public function __construct()
    {
    }

    // Méthode Static
    public static function getAxes()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM axes";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Axe::class);
        return $stmt->fetchAll();
    }

    public static function getAxeById($id)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM axes WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Axe::class);
        return $stmt->fetch();
    }

    public static function getAxesByIds($ids)
    {
        $pdo = App::getPDO();

        $params = implode(', ', array_map(fn ($key) => ":id$key", array_keys($ids)));

        $requete = "SELECT * FROM axes WHERE id IN ($params)";
        $stmt = $pdo->prepare($requete);

        // Lier chaque valeur d'ID à son paramètre nommé dans la requête
        foreach ($ids as $key => $value) {
            $stmt->bindValue(":id$key", $value, PDO::PARAM_INT);
        }
        
        $stmt->execute();
        // // // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Axe::class);
        return $stmt->fetchAll();
    }

    // Méthode Get
    public function getId(): int
    {
        return $this->id;
    }

    public function getNom(): string
    {
        return $this->nom;
    }

    // Méthode Associative

    // Fonction pour obtenir les projets associés à un axe 2/2
    public static function getAssoAxeCoursProjet(array $axeId)
    {
        return AxeCour::getAssoProjet($axeId);
    }

}