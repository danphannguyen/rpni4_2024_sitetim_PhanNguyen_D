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

    <!-- Le bladeOne ici permet de regarder si la variable de session est set et si elle est égale à envoyer. Si oui le background sera vert, sinon il sera rouge -->
    <div id="contactFormError" @if (isset($_SESSION['retroaction'])) @if ($_SESSION['retroaction']=='envoyer' ) style='background-color: var(--clr-success-bg);' @else style='background-color: var(--clr-error-bg);' @endif @endif>

        <!-- Ici on affiche le message à l'aide du contenu de la variable de session retroaction et la fonction getRetroactions -->
        @if (isset($_SESSION['retroaction']))
        <?php
        $validation = new Validation();
        echo $validation->getRetroactions($_SESSION['retroaction']);
        ?>
        @endif

    </div>

    <form id="contactForm" action="index.php?controleur=message&action=inserer" id="contactForm" method="post">
        <div class="formRow">
            <div class="contactInput">
                <label for="fullname">Nom Complet<span class="formRequireStar">*</span></label>

                <!-- Ici il permet de remettre la value que l'utilisateur avait  -->
                <input type="text" id="fullname" name="prenom_nom" placeholder="Dan phan nguyen" @if (isset($_SESSION['validation'])) value='{{ $_SESSION['validation']['prenom_nom']['value'] }}' @endif required>

                <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
                @if (isset($_SESSION['validation']) && $_SESSION['validation']['prenom_nom']['state'] !== true)
                @include('fragments.msgerror', ['champ' => $_SESSION['validation']['prenom_nom']['state']])
                @endif

            </div>

            <div class="contactInput">
                <label for="courriel">Courriel<span class="formRequireStar">*</span></label>
                <input type="email" id="courriel" name="courriel" placeholder="danphannguyen.contact@gmail.com" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" @if (isset($_SESSION['validation'])) value='{{ $_SESSION['validation']['courriel']['value'] }}' @endif required>

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
                    <input class="contactRadio" id="responsable1" type="radio" name="responsable_id" value="1" required @if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value']==1) checked @endif @if (isset($_GET['responsable']) && $_GET['responsable']==1) checked @endif>
                    <label class="contactRadioLabel" for="responsable1">SYLVAIN LAMOUREUX <span>Coordonnateur départemental</span></label>
                </div>
                <div class="contactDesInput">

                    <input class="contactRadio" id="responsable2" type="radio" name="responsable_id" value="2" @if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value']==2) checked @endif @if (isset($_GET['responsable']) && $_GET['responsable']==2) checked @endif>
                    <label class="contactRadioLabel" for="responsable2">ÈVE FÉVRIER <span>Webmestre</span></label>
                </div>
            </div>

            <div class="contactDestRow">
                <div class="contactDesInput">
                    <input class="contactRadio" id="responsable3" type="radio" name="responsable_id" value="3" @if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value']==3) checked @endif @if (isset($_GET['responsable']) && $_GET['responsable']==3) checked @endif>
                    <label class="contactRadioLabel" for="responsable3">PASCAL LAROSE <span>Responsable des stages</span></label>
                </div>
                <div class="contactDesInput">
                    <input class="contactRadio" id="responsable4" type="radio" name="responsable_id" value="4" @if (isset($_SESSION['validation']) && $_SESSION['validation']['responsable_id']['value']==4) checked @endif @if (isset($_GET['responsable']) && $_GET['responsable']==4) checked @endif>
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
            <input type="text" id="telephone" name="telephone" @if (isset($_SESSION['validation'])) value='{{ $_SESSION['validation']['telephone']['value'] }}' @endif>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['telephone']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['telephone']['state']])
            @endif
        </div>

        <div id="consentementWrapper" class="contactInput" style="display: none;">
            <label for="consentement">Consentement<span class="formRequireStar">*</span></label>
            <input type="checkbox" id="consentement" name="consentement" @if (isset($_SESSION['validation']) && $_SESSION['validation']['consentement']['state']) checked @endif>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['consentement']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['consentement']['state']])
            @endif
        </div>


        <div class="contactInput">
            <label for="sujet">Sujet<span class="formRequireStar">*</span></label>
            <input type="text" id="sujet" name="sujet" placeholder="Étudiant d’un jour" @if (isset($_SESSION['validation'])) value='{{ $_SESSION['validation']['sujet']['value'] }}' @endif required>

            <!-- BladeOne si la variable de Session validation est set et que le state n'est pas à true on affiche l'erreur -->
            @if (isset($_SESSION['validation']) && $_SESSION['validation']['sujet']['state'] !== true)
            @include('fragments.msgerror', ['champ' => $_SESSION['validation']['sujet']['state']])
            @endif
        </div>

        <div class="contactInput">
            <label for="message">Message <span class="formRequireStar">*</span> </label>
            <textarea id="message" name="contenu" required>
                @if (isset($_SESSION['validation']))
                    {{ $_SESSION['validation']['contenu']['value'] }}
                @endif
            </textarea>

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

@if (isset($_SESSION['retroaction']))
<?php unset($_SESSION['retroaction']); ?>
@endif

@if (isset($_SESSION['validation']))
<?php unset($_SESSION['validation']); ?>
@endif




@section('script')

<script src="./liaisons/js/contact.js"></script>


@endsection