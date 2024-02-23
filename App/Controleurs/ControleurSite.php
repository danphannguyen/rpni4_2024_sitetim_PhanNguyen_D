<?php
declare(strict_types=1);

namespace App\Controleurs;

use App\App;

class ControleurSite
{
    public function __construct()
    {
    }

    public function accueil(): void
    {
        $tDonnees = array("contenu"=>"Je suis le contenu de la page d'accueil...");
        echo App::getBlade()->run('accueil',$tDonnees);
    }

    public function apropos():void
    {
        $tDonnees = array("contenu"=>"Je suis le contenu de la page à propos...");
        echo App::getBlade()->run('apropos',$tDonnees);
    }

    public function contact():void
    {
        $tDonnees = array("contenu"=>"Je suis le contenu de la page contact...");
        echo App::getBlade()->run('contact',$tDonnees);
    }

    public function stage():void
    {
        $tDonnees = array("contenu"=>"Je suis le contenu de la page stage...");
        echo App::getBlade()->run('stage',$tDonnees);
    }

    public function rejoindre():void
    {
        $tDonnees = array("contenu"=>"Je suis le contenu de la page rejoindre...");
        echo App::getBlade()->run('rejoindre',$tDonnees);
    }

    public function formation():void
    {
        $tDonnees = array("contenu"=>"Je suis le contenu de la page formation...");
        echo App::getBlade()->run('formation',$tDonnees);
    }
}

