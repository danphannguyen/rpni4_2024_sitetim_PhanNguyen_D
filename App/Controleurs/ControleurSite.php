<?php

declare(strict_types=1);

namespace App\Controleurs;

use App\App;
use App\Controleurs\ControleurTexte;


class ControleurSite
{

    public function __construct()
    {
    }

    public function accueil(): void
    {
        $tFinissants = ControleurTexte::getAllFinissants();
        $tDonnees = ControleurTexte::getTexteArray([1,2,3,4,5,9,10,11,18,19,20,21,22,23]);
        echo App::getBlade()->run('accueil', ['tDonnees' => $tDonnees, 'tFinissants' => $tFinissants]);
    }

    public function contact(): void
    {
        $tResponsables = ControleurTexte::getResponsables();
        $tDonnees = ControleurTexte::getTexteArray([1,2,3,4,5,9,]);
        echo App::getBlade()->run('contact', ['tDonnees' => $tDonnees, 'tResponsables' => $tResponsables]);
    }

    public function stage(): void
    {
        $tDonnees = ControleurTexte::getTexteArray([1,2,3,4,5,9,24,25,26,27]);
        echo App::getBlade()->run('stage',['tDonnees' => $tDonnees]);
    }

    public function rejoindre(): void
    {
        $tDonnees = ControleurTexte::getTexteArray([1,2,3,4,5,6,7,8,9]);
        echo App::getBlade()->run('rejoindre', ['tDonnees' => $tDonnees]);
    }

    public function formation(): void
    {
        $tDonnees = ControleurTexte::getTexteArray([1,2,3,4,5,9,12,13,14, 15, 16, 17]);
        echo App::getBlade()->run('formation', ['tDonnees' => $tDonnees]);
    }

    public function projets(): void
    {
        $tDonnees = ControleurTexte::getTexteArray([1,2,3,4,5,9,]);
        echo App::getBlade()->run('projets', ['tDonnees' => $tDonnees]);
    }
}
