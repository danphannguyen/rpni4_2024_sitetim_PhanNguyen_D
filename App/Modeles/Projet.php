<?php

declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

// Importation des classes associatives
use App\Modeles\Diplome;
use App\Modeles\Etape;
use App\Modeles\AxeCour;
use App\Modeles\Cour;


class Projet
{
    private int $id = 0;
    private string $titre = '';
    private string $technologies = '';
    private string $description = '';
    private string $url = '';
    private int $diplome_id = 0;
    private int $cours_id = 0;

    public function __construct()
    {
    }

    // Méthodes Static
    public static function getProjets()
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM projets";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        return $stmt->fetchAll();
    }

    public static function getProjetById($id)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM projets WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $id, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        return $stmt->fetch();
    }

    public static function getProjetsByDiplomeId($diplomeId, $projetId)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM projets WHERE diplome_id = :id AND id != :projet_id LIMIT 3";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $diplomeId, PDO::PARAM_INT);
        $stmt->bindValue(":projet_id", $projetId, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        return $stmt->fetchAll();
    }

    public static function getProjetsByCoursId($coursId)
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM projets WHERE cours_id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindValue(":id", $coursId, PDO::PARAM_INT);
        $stmt->execute();
        // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        return $stmt->fetchAll();
    }

    public static function getProjetByCourIds($ids)
    {
        $pdo = App::getPDO();

        $params = implode(', ', array_map(fn ($key) => ":id$key", array_keys($ids)));

        $requete = "SELECT * FROM projets WHERE cours_id IN ($params)";
        $stmt = $pdo->prepare($requete);

        // Lier chaque valeur d'ID à son paramètre nommé dans la requête
        foreach ($ids as $key => $value) {
            $stmt->bindValue(":id$key", $value, PDO::PARAM_INT);
        }
        
        $stmt->execute();
        // // // Instancier les objets Texte avec les résultats de la requête
        $stmt->setFetchMode(PDO::FETCH_CLASS, Projet::class);
        return $stmt->fetchAll();
    }


    // Méthodes Get
    public function getId(): int
    {
        return $this->id;
    }

    public function getTitre(): string
    {
        return $this->titre;
    }

    public function getTechnologies(): string
    {
        return $this->technologies;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function getUrl(): string
    {
        return $this->url;
    }

    public function getDiplomeId(): int
    {
        return $this->diplome_id;
    }

    public function getCoursId(): int
    {
        return $this->cours_id;
    }

    // Méthodes Associatives

    // Fonction pour obtenir le diplômé associé à un projet 1/1
    public function getAssoDiplome()
    {
        return Diplome::getDiplomeById($this->diplome_id);
    }

    // Fonction pour obtenir les étapes associées à un projet 1/1
    public function getAssoEtapes()
    {
        return Etape::getEtapesById($this->id);
    }

    // Fonction pour obtenir les cours associés à un projet 1/1
    public function getAssoCour()
    {
        return Cour::getCoursById($this->cours_id);
    }

    // Fonction pour obtenir les axes associés à un projet 1/2
    public function getAssoAxeCourAxe()
    {
        return AxeCour::getAssoAxe($this->cours_id);
    }
}
