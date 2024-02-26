<?php
declare(strict_types=1);

namespace App\Modeles;

use App\App;
use PDO;
use PDO\PDOStatement;

class Texte {

    public function __construct()
    {
    }

    public function getTextes($id): string
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM textes WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        $texte = $stmt->fetch(PDO::FETCH_ASSOC);
        return $texte['texte'];
    }

    public function getTitre($id): string
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM textes WHERE id = :id";
        $stmt = $pdo->prepare($requete);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        $texte = $stmt->fetch(PDO::FETCH_ASSOC);
        return $texte['titre'];

    }

    public function getResponsables(): array
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM responsables";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);

    }

    public function getFinissants(): array
    {
        $pdo = App::getPDO();
        $requete = "SELECT * FROM temoignages";
        $stmt = $pdo->prepare($requete);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

}