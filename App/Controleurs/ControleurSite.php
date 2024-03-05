<?php

declare(strict_types=1);

namespace App\Controleurs;

use App\App;
use App\Modeles\Texte;
use App\Modeles\Finissant;
use App\Modeles\Responsable;
use App\Modeles\Projet;



class ControleurSite
{

    public function __construct()
    {
    }

    public function accueil(): void
    {
        $tFinissants = Finissant::getFinissants();
        $tDonnees = Texte::getTexteArray([1,2,3,4,5,9,10,11,18,19,20,21,22,23]);
        echo App::getBlade()->run('accueil', ['tDonnees' => $tDonnees, 'tFinissants' => $tFinissants]);
    }

    public function contact(): void
    {
        $tResponsables = Responsable::getResponsables();
        $tDonnees = Texte::getTexteArray([1,2,3,4,5,9,]);
        echo App::getBlade()->run('contact', ['tDonnees' => $tDonnees, 'tResponsables' => $tResponsables]);
    }

    public function stage(): void
    {
        $tDonnees = Texte::getTexteArray([1,2,3,4,5,9,24,25,26,27]);
        echo App::getBlade()->run('stage',['tDonnees' => $tDonnees]);
    }

    public function rejoindre(): void
    {
        $tDonnees = Texte::getTexteArray([1,2,3,4,5,6,7,8,9]);
        echo App::getBlade()->run('rejoindre', ['tDonnees' => $tDonnees]);
    }

    public function formation(): void
    {
        $tDonnees = Texte::getTexteArray([1,2,3,4,5,9,12,13,14, 15, 16, 17]);
        echo App::getBlade()->run('formation', ['tDonnees' => $tDonnees]);
    }


}
