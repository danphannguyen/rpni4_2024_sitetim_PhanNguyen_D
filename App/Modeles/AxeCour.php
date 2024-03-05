<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

// Importation des classes associatives
use App\Modeles\Axe;
use App\Modeles\Projet;

class AxeCour
{

    private int $id = 0;
    private int $axe_id = 0;
    private int $cours_id = 0;

    public function __construct()
    {
    }

    // Méthode Static
    public static function getAxeCour()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM axes_cours";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, AxeCour::class);
        return $stmt->fetchAll();
    }

    public static function getAxeCourById($id)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM axes_cours WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, AxeCour::class);
        return $stmt->fetch();
    }

    public static function getAxeIdByCourId($cours_id)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM axes_cours WHERE cours_id = :cours_id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":cours_id", $cours_id, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, AxeCour::class);
        return $stmt->fetchAll();
    }

    public static function getAxeCourByAxeId($axe_ids)
    {
        $pdo = App::getPDO();
        $params = implode(', ', array_map(fn ($key) => ":id$key", array_keys($axe_ids)));

        $requete = "SELECT * FROM axes_cours WHERE axe_id IN ($params)";

        $stmt = $pdo->prepare($requete);

        // Lier chaque valeur d'ID à son paramètre nommé dans la requête
        foreach ($axe_ids as $key => $value) {
            $stmt->bindValue(":id$key", $value, PDO::PARAM_INT);
        }

        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, AxeCour::class);
        return $stmt->fetchAll();
    }

    // Méthode Get
    public function getId(): int
    {
        return $this->id;
    }

    public function getAxeId(): int
    {
        return $this->axe_id;
    }

    public function getCourId(): int
    {
        return $this->cours_id;
    }

    // Méthodes Associatives

    // Fonction pour obtenir les axes associés à un projet 2/2
    public static function getAssoAxe($cours_id)
    {
        $idAxes = AxeCour::getAxeIdByCourId($cours_id);
        $tIdAxes = [];
        foreach ($idAxes as $idAxe) {
            $idAxe = $idAxe->getAxeId();
            array_push($tIdAxes, intval($idAxe));
        }
        return Axe::getAxesByIds($tIdAxes);
    }

    // Fonction pour obtenir les projets associés à un axe 2/2
    public static function getAssoProjet($axe_id)
    {
        $idCours = AxeCour::getAxeCourByAxeId($axe_id);
        $tIdCours = [];
        foreach ($idCours as $idCour) {
            $idCour = $idCour->getCourId();
            array_push($tIdCours, intval($idCour));
        }
        return Projet::getProjetByCourIds($tIdCours);
    }

}
