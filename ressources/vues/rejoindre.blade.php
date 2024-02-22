@extends('gabarit')

@section('title')
Accueil
@endsection

<?php

use App\Utilitaires\InfosBdd;

$textes = new InfosBdd();
?>

@section('contenu')

<div>
    <h1 class="mainTitle"> Nous rejoindre </h1>
</div>

<picture id="bgRejoindre1">
    <source srcset="./liaisons/img/Bg_Rejoindre_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Rejoindre_1_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Rejoindre_1_320.png" alt="dessin décoratif" />
</picture>

<picture id="drawRejoindre1">
    <source srcset="./liaisons/img/Dessin_Rejoindre_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Dessin_Rejoindre_1_768.png" media="(min-width: 768px)" />
    <img src="./liaisons/img/Dessin_Rejoindre_1_320.png" alt="dessin décoratif 1" />
</picture>

<section id="sommaireRejoindre">

    <div class="whiteGlass sommaireWrapper">
        <h2>1/ ÉTUDIANT.E.S D’UN JOUR</h2>
        <button class="anchor-button" onclick="window.location.href='#etudUnJour'"><img src="./liaisons/svg/anchor-button.svg" alt=""></button>
    </div>
    <div class="whiteGlass sommaireWrapper">
        <h2>2/ ÉTUDIANT.E.S INTERNATIONAL</h2>
        <button class="anchor-button" onclick="window.location.href='#etudInter'"><img src="./liaisons/svg/anchor-button.svg" alt=""></button>
    </div>
    <div class="whiteGlass sommaireWrapper">
        <h2>3/ DEMANDE D’ADMISSION</h2>
        <button class="anchor-button" onclick="window.location.href='#admission'"><img src="./liaisons/svg/anchor-button.svg" alt=""></button>
    </div>

</section>

<div id="rejoindreResponsiveWrapper">
    <section id="etudUnJour" class="whiteGlass">

        {!! $textes->getTextes(8) !!}

        <picture id="drawRejoindre2">
            <source srcset="./liaisons/img/Dessin_Rejoindre_2_992.png" media="(min-width: 992px)" />
            <source srcset="./liaisons/img/Dessin_Rejoindre_2_768.png" media="(min-width: 768px)" />
            <img src="./liaisons/img/Dessin_Rejoindre_2_320.png" alt="dessin décoratif 1" />
        </picture>

    </section>

    <section id="etudInter" class="whiteGlass">

        {!! $textes->getTextes(7) !!}

        <picture id="drawRejoindre3">
            <source srcset="./liaisons/img/Dessin_Rejoindre_3_992.png" media="(min-width: 992px)" />
            <source srcset="./liaisons/img/Dessin_Rejoindre_3_768.png" media="(min-width: 768px)" />
            <img src="./liaisons/img/Dessin_Rejoindre_3_320.png" alt="dessin décoratif 1" />
        </picture>
    </section>
</div>

<section id="admission" class="whiteGlass">

    {!! $textes->getTextes(6) !!}

    <picture id="drawRejoindre4">
        <source srcset="./liaisons/img/Dessin_Rejoindre_4_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Rejoindre_4_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Rejoindre_4_320.png" alt="dessin décoratif 1" />
    </picture>

</section>

@endsection

@section('script')
<script>

</script>
@endsection