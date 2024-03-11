<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

class Etape
{

    private int $id = 0;
    private string $nom = '';
    private string $ordre = '';
    private string $description = '';
    private int $projet_id = 0;


    public function __construct()
    {
    }

    // Méthode Static
    public static function getEtapesById($idProjet)
    {
        try {
            $pdo = App::getPDO();
            $requete = "SELECT * FROM etapes WHERE projet_id = :idProjet ORDER BY ordre ASC";
            $stmt = $pdo->prepare($requete);
            $stmt->bindValue(":idProjet", $idProjet, PDO::PARAM_INT);
            $stmt->execute();
            // Instancier les objets Texte avec les résultats de la requête
            $stmt->setFetchMode(PDO::FETCH_CLASS, Etape::class);
            return $stmt->fetchAll();
        } catch (\PDOException $e) {
            return [];
        }

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

    public function getOrdre(): string
    {
        return $this->ordre;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function getProjetId(): int
    {
        return $this->projet_id;
    }

}