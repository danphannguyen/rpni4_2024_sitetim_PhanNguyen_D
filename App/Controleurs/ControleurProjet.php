<?php

declare(strict_types=1);

namespace App\Controleurs;

use App\App;
use App\Modeles\Texte;
use App\Modeles\Projet;
use App\Modeles\Etape;
use App\Modeles\Diplome;
use App\Modeles\Axe;
use App\Modeles\Cour;

class ControleurProjet
{
    public function __construct()
    {
    }

    // Affiche la liste des projets
    public function projets(): void
    {
        $tDonnees = Texte::getTexteArray([1, 2, 3, 4, 5, 9,]);
        $tProjets = Projet::getProjets();
        echo App::getBlade()->run('projets', ['tDonnees' => $tDonnees, 'tProjets' => $tProjets]);
    }

    // Affiche les projets selon les filtres
    public function filtrer(): void
    {
        // Récupère les paramètres
        $annee = isset($_GET['annee']) ? $_GET['annee'] : null;
        $axe = isset($_GET['axe_id']) ? $_GET['axe_id'] : null;

        // Vérifie si on a un filtre
        $filter = ($annee !== null) || ($axe !== null);

        if ($filter) {
            if ($annee && $axe) {
                // Si on a une année et un axe

                // Récupère les cours selon l'année
                $tProjets = Cour::getAxeCourProjet($annee);

                // Vérifie si les projets sont dans l'axe
                foreach ($tProjets as $keyProjet => $projet) {
                    $check = 0;
                    foreach ($axe as $value) {
                        if ($projet->getAssoAxeCourAxe()[0]->getId() == $value) {
                            // Si le projet est dans l'axe
                            $check = 1;
                            break;
                        } else {
                            // Si le projet n'est pas dans l'axe
                            $check = 0;
                        }
                    }
                    if ($check === 0) {
                        // Supprime le projet
                        unset($tProjets[$keyProjet]);
                    }
                }
            } elseif ($annee !== null) {
                // Si on a une année uniquement
                $tProjets = Cour::getAxeCourProjet($annee);
            } elseif ($axe !== null) {
                // Si on a un axe uniquement
                $tProjets = Axe::getAssoAxeCoursProjet($axe);
            }
        } else {
            // Si on a aucun paramètre
            $tProjets = Projet::getProjets();
        }

        $tDonnees = Texte::getTexteArray([1, 2, 3, 4, 5, 9,]);
        echo App::getBlade()->run('projets', ['tDonnees' => $tDonnees, 'tProjets' => $tProjets]);
    }

    // Affiche la fiche du projet
    public function projetFiche($id): void
    {
        // Recupère les textes
        $tDonnees = Texte::getTexteArray([1, 2, 3, 4, 5, 9,]);

        // Recupère les projets
        $tProjet = Projet::getProjetById($id);

        // Affiche la fiche du projet
        echo App::getBlade()->run('fiche', ['tDonnees' => $tDonnees, 'tProjet' => $tProjet]);
    }
}
