<?php

declare(strict_types=1);

namespace App\Controleurs;

use App\App;
use App\Modeles\Texte;


class ControleurTexte
{

    public function __construct()
    {
    }

    public static function getTexteArray($array)
    {
        $texte = new Texte();
        $textes = array();
        foreach ($array as $id) {
            $textes["texte" . $id] = $texte->getTextes($id);
            $textes["titre" . $id] = $texte->getTitre($id);
        }
        return $textes;
    }

    public static function getAllFinissants()
    {
        $texte = new Texte();
        $tFinissants = array();
        $finissans = $texte->getFinissants();

        foreach ($finissans as $finissant) {
            $infoFinissant = array(
                'id' => $finissant['id'],
                'temoin' => $finissant['temoin'],
                // 'photo' => $finissant['photo'],
                'poste' => $finissant['titre_poste'],
                'entreprise' => $finissant['entreprise'],
                'url' => $finissant['url_entreprise'],
                'temoignage' => $finissant['temoignage'],
                'annee' => $finissant['annee_diplomation']
            );

            $tFinissants["finissant".$finissant['id']] = $infoFinissant;
        }

        return $tFinissants;
    }

    public static function getResponsables()
    {
        $texte = new Texte();
        return $texte->getResponsables();
    }
}
