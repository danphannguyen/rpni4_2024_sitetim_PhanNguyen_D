<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

class Responsable
{
    private int $id = 0;
    private string $responsabilite = '';
    private string $prenom = '';
    private string $nom = '';
    private string $courriel = '';
    private string $telephone = '';

    public function __construct()
    {
    }

    // Méthode Static
    public static function getResponsables()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM responsables";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Responsable::class);
        return $stmt->fetchAll();
    }

    // Méthode Get
    public function getId(): int
    {
        return $this->id;
    }

    public function getResponsabilite(): string
    {
        return $this->responsabilite;
    }

    public function getPrenom(): string
    {
        return $this->prenom;
    }

    public function getNom(): string
    {
        return $this->nom;
    }

    public function getCourriel(): string
    {
        return $this->courriel;
    }

    public function getTelephone(): string
    {
        return $this->telephone;
    }
}
