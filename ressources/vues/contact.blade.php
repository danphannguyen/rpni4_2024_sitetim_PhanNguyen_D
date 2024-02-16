@extends('gabarit')

@section('title')
Contact
@endsection

@section('contenu')
<h1 class="mainTitle"> Nous Contacter </h1>

<?php

use App\Utilitaires\Validation;
?>

<picture id="bgContact1">
    <source srcset="./liaisons/img/Bg_Contact_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Contact_1_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Contact_1_320.png" alt="example" />
</picture>

<picture id="drawContact1">
    <source srcset="./liaisons/img/Dessin_Contact_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Dessin_Contact_1_768.png" media="(min-width: 768px)" />
    <img src="./liaisons/img/Dessin_Contact_1_320.png" alt="example" />
</picture>

<div id="contactFormWrapper">

    <div id="contactFormHeader">
        <h2>PAR COURRIEL</h2>
        <p><span class="formRequireStar">*</span>Champs obligatoires</p>
    </div>

    <div id="contactFormError" <?php
                                if (isset($_SESSION['retroaction'])) {
                                    if ($_SESSION == 'envoyer') {
                                        echo "style='background-color: var(--clr-success);'";
                                    } else {
                                        echo "style='background-color: var(--clr-error);'";
                                    }
                                }
                                ?>>
        <?php
        if (isset($_SESSION['retroaction'])) {
            $validation = new Validation();
            echo $validation->getRetroactions($_SESSION['retroaction']);
        }
        ?>
    </div>

    <form id="contactForm" action="index.php?controleur=message&action=inserer" id="contactForm" method="post">
        <div class="formRow">
            <div class="contactInput">
                <label for="fullname">Nom Complet<span class="formRequireStar">*</span></label>
                <input type="text" id="fullname" name="prenom_nom" placeholder="Dan phan nguyen" <?php
                                                                                                    // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                                    if (isset($_SESSION['validation'])) {
                                                                                                        echo "value='" . $_SESSION['validation']['prenom_nom']['value'] . "'";
                                                                                                    }
                                                                                                    ?> required>

                <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
                @if (isset($_SESSION['validation']) && $_SESSION['validation']['prenom_nom']['state'] !== true)
                @include('fragments.msgerror', ['champ' => $_SESSION['validation']['prenom_nom']['state']])
                @endif

            </div>

            <div class="contactInput">
                <label for="courriel">Courriel<span class="formRequireStar">*</span></label>
                <input type="email" id="courriel" name="courriel" placeholder="danphannguyen.contact@gmail.com" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" <?php
                                                                                                                                                                    // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                                                                                                    if (isset($_SESSION['validation'])) {
                                                                                                                                                                        echo "value='" . $_SESSION['validation']['courriel']['value'] . "'";
                                                                                                                                                                    }
                                                                                                                                                                    ?> required>

                <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
                @if (isset($_SESSION['validation']) && $_SESSION['validation']['courriel']['state'] !== true)
                @include('fragments.msgerror', ['champ' => $_SESSION['validation']['courriel']['state']])
                @endif
            </div>
        </div>

        <div class="contactDesWrapper">
            <label for="">Destinataires<span class="formRequireStar">*</span></label>

            <div class="contactDestRow">
                <div class="contactDesInput">
                    <input class="contactRadio" id="responsable1" type="radio" name="responsable_id" value="1" required <?php
                                                                                                                        // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                                                        if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value'] == 1) {
                                                                                                                            echo "checked";
                                                                                                                        }
                                                                                                                        if (isset($_GET['responsable']) && $_GET['responsable'] == 1) {
                                                                                                                            echo "checked";
                                                                                                                        }
                                                                                                                        ?>>
                    <label class="contactRadioLabel" for="responsable1">SYLVAIN LAMOUREUX <span>Coordonnateur départemental</span></label>
                </div>
                <div class="contactDesInput">

                    <input class="contactRadio" id="responsable2" type="radio" name="responsable_id" value="2" <?php
                                                                                                                // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                                                if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value'] == 2) {
                                                                                                                    echo "checked";
                                                                                                                }
                                                                                                                if (isset($_GET['responsable']) && $_GET['responsable'] == 2) {
                                                                                                                    echo "checked";
                                                                                                                }
                                                                                                                ?>>
                    <label class="contactRadioLabel" for="responsable2">ÈVE FÉVRIER <span>Webmestre</span></label>
                </div>
            </div>

            <div class="contactDestRow">
                <div class="contactDesInput">
                    <input class="contactRadio" id="responsable3" type="radio" name="responsable_id" value="3" <?php
                                                                                                                // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                                                if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value'] == 3) {
                                                                                                                    echo "checked";
                                                                                                                }
                                                                                                                if (isset($_GET['responsable']) && $_GET['responsable'] == 3) {
                                                                                                                    echo "checked";
                                                                                                                }
                                                                                                                ?>>
                    <label class="contactRadioLabel" for="responsable3">PASCAL LAROSE <span>Responsable des stages</span></label>
                </div>
                <div class="contactDesInput">
                    <input class="contactRadio" id="responsable4" type="radio" name="responsable_id" value="4" <?php
                                                                                                                // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                                                if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value'] == 4) {
                                                                                                                    echo "checked";
                                                                                                                }
                                                                                                                if (isset($_GET['responsable']) && $_GET['responsable'] == 4) {
                                                                                                                    echo "checked";
                                                                                                                }
                                                                                                                ?>>
                    <label class="contactRadioLabel" for="responsable4">BENOÎT FRIGON <span>Responsable "Étudiant d'un jour"</span></label>
                </div>
            </div>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['responsable_id']['state']])
            @endif
        </div>

        <div id="telephoneWrapper" class="contactInput" style="display: none;">
            <label for="telephone">Téléphone<span class="formRequireStar">*</span> </label>
            <input type="text" id="telephone" name="telephone" <?php
                                                                // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                if (isset($_SESSION['validation'])) {
                                                                    echo "value='" . $_SESSION['validation']['telephone']['value'] . "'";
                                                                }
                                                                ?>>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['telephone']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['telephone']['state']])
            @endif
        </div>

        <div id="consentementWrapper" class="contactInput" style="display: none;">
            <label for="consentement">Consentement<span class="formRequireStar">*</span></label>
            <input type="checkbox" id="consentement" name="consentement" <?php
                                                                            // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                            if (isset($_SESSION['validation']) && $_SESSION['validation']['consentement']['state']) {
                                                                                echo "checked";
                                                                            }
                                                                            ?>>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['consentement']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['consentement']['state']])
            @endif
        </div>


        <div class="contactInput">
            <label for="sujet">Sujet<span class="formRequireStar">*</span></label>
            <input type="text" id="sujet" name="sujet" placeholder="Étudiant d’un jour" <?php
                                                                                        // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                                                        if (isset($_SESSION['validation'])) {
                                                                                            echo "value='" . $_SESSION['validation']['sujet']['value'] . "'";
                                                                                        }
                                                                                        ?> required>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['sujet']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['sujet']['state']])
            @endif
        </div>

        <div class="contactInput">
            <label for="message">Message <span class="formRequireStar">*</span> </label>
            <textarea id="message" name="contenu" required><?php
                                                            // Si la validation a échoué, on affiche la valeur entrée par l'utilisateur
                                                            if (isset($_SESSION['validation'])) {
                                                                echo $_SESSION['validation']['contenu']['value'];
                                                            }
                                                            ?></textarea>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['contenu']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['contenu']['state']])
            @endif
        </div>

        <button id="contactSubmitBtn" class="mainButton" type="submit">Envoyer</button>
    </form>
</div>

<br>
<br>
<br>
@endsection

<?php
if (isset($_SESSION['retroaction'])) {
    unset($_SESSION['retroaction']);
}
if (isset($_SESSION['validation'])) {
    unset($_SESSION['validation']);
}
?>

@section('script')

<script src="./liaisons/js/contact.js"></script>


@endsection