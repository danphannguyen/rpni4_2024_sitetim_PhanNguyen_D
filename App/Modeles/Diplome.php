<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

class Diplome
{

    private int $id = 0;
    private string $nom = '';
    private string $prenom = '';
    private string $presentation = '';
    private int $interet_conception = 0;
    private int $interet_medias = 0;
    private int $interet_integration = 0;
    private int $interet_programmation = 0;
    private string $courriel = '';
    private string $linkedin = '';
    private string $site_web = '';

    public function __construct()
    {
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

    public function getPrenom(): string
    {
        return $this->prenom;
    }

    public function getPresentation(): string
    {
        return $this->presentation;
    }

    public function getInteretConception(): int
    {
        return $this->interet_conception;
    }

    public function getInteretMedias(): int
    {
        return $this->interet_medias;
    }

    public function getInteretIntegration(): int
    {
        return $this->interet_integration;
    }

    public function getInteretProgrammation(): int
    {
        return $this->interet_programmation;
    }

    public function getCourriel(): string
    {
        return $this->courriel;
    }

    public function getLinkedin(): string
    {
        return $this->linkedin;
    }

    public function getSiteWeb(): string
    {
        return $this->site_web;
    }

    // Méthode Static
    public static function getDiplomes()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM diplomes";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Diplome::class);
        return $stmt->fetchAll();
    }

    public static function getDiplomeById($id)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM diplomes WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Diplome::class);
        return $stmt->fetchALl();
    }

}