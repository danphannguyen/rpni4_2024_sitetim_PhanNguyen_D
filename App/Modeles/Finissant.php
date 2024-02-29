<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

class Finissant {

    private int $id = 0;
    private string $temoin = '';
    private string $titre_poste = '';
    private string $entreprise = '';
    private string $url_entreprise = '';
    private string $temoignage = '';
    private string $annee_diplomation = '';

    public function __construct()
    {
    }

    // Méthode Static
    public static function getFinissants()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM temoignages";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Finissant::class);
        return $stmt->fetchAll();
    }

    // Méthode Get
    public function getId(): int
    {
        return $this->id;
    }

    public function getTemoin(): string
    {
        return $this->temoin;
    }

    public function getTitrePoste(): string
    {
        return $this->titre_poste;
    }

    public function getEntreprise(): string
    {
        return $this->entreprise;
    }

    public function getUrlEntreprise(): string
    {
        return $this->url_entreprise;
    }

    public function getTemoignage(): string
    {
        return $this->temoignage;
    }

    public function getAnneeDiplomation(): string
    {
        return $this->annee_diplomation;
    }
}