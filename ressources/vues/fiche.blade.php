@extends('gabarit')

@section('title')
Fiche
@endsection

@section('contenu')

<div class="projectTitleWrapper">

    <div id="projectLeftWrapper">
        <h1 class="ficheTitle">{{$tProjet->getTitre()}}</h1>
        <div class="technoWrapper">
            <span class="technoTag">{{$tProjet->getAssoCour()->getAnnee()}}e année</span>
            @foreach($tProjet->getAssoAxeCourAxe() as $axe)
            <span class="technoTag">{{$axe->getNom()}}</span>
            @endforeach
        </div>
    </div>

    <div id="projectRightWrapper">
        <p>Réalisation d’une exposition en ligne, de type immergent, pour l’exposition sur Anticoste. Pour ce projet nous devions réaliser une interface avec les critères que notre client nous avait fixée. Dans ses critères nous pouvions retrouver l’obligation d’avoir une boussole dans notre navigation ainsi que de faire une mises-en-page permettant aux œuvres d’être mis en valeur.</p>
    </div>
</div>

<img class="imgFiche1" src="./liaisons/imgProjets/1200/1_1_01.png" alt="">

<div class="blackGlass">
    <div id="projectTopWrapper">
        <span>RÉALISÉ DANS LE COURS</span>
        <h2>{{$tProjet->getAssoCour()->getNom()}}</h2>
    </div>
    <div id="projectBottomWrapper">
        <span>À L’AIDE DE</span>
        <h2>FIGMA, ADOBE PHOTOSHOP, ADOBE ILLUSTRATOR</h2>
    </div>
</div>

<?php


// print_r($tProjet->getCoursId());

?>

@endsection

@section('script')
<script>
    document.querySelector("body").classList.add("dark-theme")
    document.querySelector("body").classList.remove("light-theme")
</script>
@endsection