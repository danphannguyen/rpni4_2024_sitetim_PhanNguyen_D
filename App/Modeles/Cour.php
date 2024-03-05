<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

// Importation des classes associatives
use App\Modeles\Projet;

class Cour
{

    private int $id = 0;
    private string $nom = '';
    private int $session = 0;
    private int $annee = 0;

    public function __construct()
    {
    }

    // Méthode Static
    public static function getCours()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM cours";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Cour::class);
        return $stmt->fetchAll();
    }

    public static function getCoursById($id)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM cours WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Cour::class);
        return $stmt->fetch();
    }

    public static function getCoursByAnnee($annees)
    {
        $pdo = App::getPDO();

        $params = implode(', ', array_map(fn ($key) => ":id$key", array_keys($annees)));

        $requete = "SELECT * FROM cours WHERE annee in ($params)";
        $stmt = $pdo->prepare($requete);

        foreach ($annees as $key => $value) {
            $stmt->bindValue(":id$key", $value, PDO::PARAM_INT);
        }

        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Cour::class);
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

    public function getSession(): int
    {
        return $this->session;
    }

    public function getAnnee(): int
    {
        return $this->annee;
    }

    // Méthode Associative

    // Fonction pour obtenir les projets associés à une année 1/2
    public static function getAxeCourProjet($annee)
    {
        $idAnnees = Cour::getCoursByAnnee($annee);
        $tIdCours = [];
        foreach ($idAnnees as $idAnnees) {
            $idCour = $idAnnees->getId();
            array_push($tIdCours, intval($idCour));
        }
        return Projet::getProjetByCourIds($tIdCours);
    }
}
