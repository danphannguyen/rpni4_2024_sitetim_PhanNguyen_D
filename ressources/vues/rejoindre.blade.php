@extends('gabarit')

@section('title')
Accueil
@endsection

@section('contenu')

<div style="position: relative;">
    <h1 class="mainTitle"> Nous rejoindre </h1>
    <picture id="drawRejoindre1">
        <source srcset="./liaisons/img/Dessin_Rejoindre_1_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Rejoindre_1_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Rejoindre_1_320.png" alt="dessin décoratif 1" />
    </picture>
</div>

<picture id="bgRejoindre1">
    <source srcset="./liaisons/img/Bg_Rejoindre_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Rejoindre_1_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Rejoindre_1_320.png" alt="dessin décoratif" />
</picture>



<section id="sommaireRejoindre">

    <div class="whiteGlass sommaireWrapper">
        {!! $tDonnees["titre8"] !!}
        <button class="anchor-button" onclick="window.location.href='#etudUnJour'"><img src="./liaisons/svg/anchor-button.svg" alt=""></button>
    </div>
    <div class="whiteGlass sommaireWrapper">
        {!! $tDonnees["titre7"] !!}
        <button class="anchor-button" onclick="window.location.href='#etudInter'"><img src="./liaisons/svg/anchor-button.svg" alt=""></button>
    </div>
    <div class="whiteGlass sommaireWrapper">
        {!! $tDonnees["titre6"] !!}
        <button class="anchor-button" onclick="window.location.href='#admission'"><img src="./liaisons/svg/anchor-button.svg" alt=""></button>
    </div>

</section>

<div id="rejoindreResponsiveWrapper">
    <section id="etudUnJour" class="whiteGlass">

        {!! $tDonnees["titre8"] !!}
        {!! $tDonnees["texte8"] !!}

        <picture id="drawRejoindre2">
            <source srcset="./liaisons/img/Dessin_Rejoindre_2_992.png" media="(min-width: 992px)" />
            <source srcset="./liaisons/img/Dessin_Rejoindre_2_768.png" media="(min-width: 768px)" />
            <img src="./liaisons/img/Dessin_Rejoindre_2_320.png" alt="dessin décoratif 1" />
        </picture>

    </section>

    <section id="etudInter" class="whiteGlass">

        {!! $tDonnees["titre7"] !!}
        {!! $tDonnees["texte7"] !!}

        <picture id="drawRejoindre3">
            <source srcset="./liaisons/img/Dessin_Rejoindre_3_992.png" media="(min-width: 992px)" />
            <source srcset="./liaisons/img/Dessin_Rejoindre_3_768.png" media="(min-width: 768px)" />
            <img src="./liaisons/img/Dessin_Rejoindre_3_320.png" alt="dessin décoratif 1" />
        </picture>
    </section>
</div>

<section id="admission" class="whiteGlass">

    {!! $tDonnees["titre6"] !!}
    {!! $tDonnees["texte6"] !!}

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