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
        {!! $tProjet->getDescription() !!}
    </div>
</div>

<img class="imgFiche1" src="./liaisons/imgProjets/1200/{!! $tProjet->getDiplomeId() !!}_{!! $tProjet->getId() !!}_01.webp" alt="">

<div class="blackGlass">
    <div id="projectTopWrapper">
        <span>RÉALISÉ DANS LE COURS</span>
        <h2>{{$tProjet->getAssoCour()->getNom()}}</h2>
    </div>
    <div id="projectBottomWrapper">
        <span>À L’AIDE DE</span>
        <h2>{!! $tProjet->getTechnologies() !!}</h2>
    </div>
</div>

<section class="imageWrapper">
    @php
    $chemin_image2 = './liaisons/imgProjets/1200/' . $tProjet->getDiplomeId() . '_' . $tProjet->getId() . '_02.webp';
    @endphp

    @if (file_exists($chemin_image2))
    <img class="imgFiche" src="{{ $chemin_image2 }}" alt="">
    @endif

    @php
    $chemin_image3 = './liaisons/imgProjets/1200/' . $tProjet->getDiplomeId() . '_' . $tProjet->getId() . '_03.webp';
    @endphp

    @if (file_exists($chemin_image3))
    <img class="imgFiche" src="{{ $chemin_image3 }}" alt="">
    @endif
</section>

<section id="finissantWrapper" class="blackGlass">
    <div class="headerFinissant">
        <span>PROJET RÉALISÉ PAR</span>
        <h2>{{$tProjet->getAssoDiplome()[0]->getPrenom()}} {{$tProjet->getAssoDiplome()[0]->getNom()}}</h2>
    </div>
    <div class="contentFinissant">
        <p>
            J’ai débuté mon parcours avec un premier DEC en graphisme au collège Ahuntsic à Montréal. J’y ai appris la grosse base du HTML et du CSS avec Brackets. Ces petits cours de multimédias m’ont davantage donné le goût d’en apprendre sur le web et la création de sites web. Voulant changer d’air, je me suis dirigé vers une ville un peu plus tranquille qu’est la belle ville de Québec. Après quelques recherches, mon choix s’est arrêté, sans trop de difficulté, sur le programme que m’offrait le Cégep de Sainte-Foy. J’y ai, donc, poursuivi mes études dans le domaine numérique. Dans ce programme, j’ai pu améliorer mes connaissances du HTML et du CSS et même en voir beaucoup plus que je ne l’avais imaginé. J’ai même pu réaliser des design d’interface beaucoup plus poussés et réfléchis, grâce des recherches, des diagrammes et des interviews utilisateur qui me permettait de mieux viser mon public cible.
        </p>
    </div>
</section>

<section id="finissantContentWapper">
    <div class="blackGlass">
        <h2>INTÉRÊTS</h2>
        <div class="interetWrapper">
            <div class="interetRow">
                <label class="interetLabel" for="IConception">
                    <h3>Conception</h3>
                </label>
                <div class="subInteret">
                    <progress class="interetProgress" id="IConception" value="{{$tProjet->getAssoDiplome()[0]->getInteretConception()}}" max="10"></progress>
                    <span>{{$tProjet->getAssoDiplome()[0]->getInteretConception()}}</span>
                </div>
            </div>

            <div class="interetRow">
                <label class="interetLabel" for="IMedias">
                    <h3>Médias</h3>
                </label>
                <div class="subInteret">
                    <progress class="interetProgress" id="IMedias" value="{{$tProjet->getAssoDiplome()[0]->getInteretMedias()}}" max="10"></progress>
                    <span>{{$tProjet->getAssoDiplome()[0]->getInteretMedias()}}</span>
                </div>
            </div>

            <div class="interetRow">
                <label class="interetLabel" for="IIntegration">
                    <h3>Intégration</h3>
                </label>
                <div class="subInteret">
                    <progress class="interetProgress" id="IIntegration" value="{{$tProjet->getAssoDiplome()[0]->getInteretIntegration()}}" max="10"></progress>
                    <span>{{$tProjet->getAssoDiplome()[0]->getInteretIntegration()}}</span>
                </div>
            </div>

            <div class="interetRow">
                <label class="interetLabel" for="IProgrammation">
                    <h3>Programmation</h3>
                </label>
                <div class="subInteret">
                    <progress class="interetProgress" id="IProgrammation" value="{{$tProjet->getAssoDiplome()[0]->getInteretProgrammation()}}" max="10"></progress>
                    <span>{{$tProjet->getAssoDiplome()[0]->getInteretProgrammation()}}</span>
                </div>
            </div>

        </div>
    </div>
    <div class="blackGlass">
        <h2>Réseaux</h2>
        <div class="reseauxWrapper">
            <a class="externalLink" href="{{$tProjet->getAssoDiplome()[0]->getLinkedin()}}">
                Linkedin
                <img src="./liaisons/svg/arrow-up.svg" alt="Liens vers Linkedin">
            </a>
            <a class="externalLink" href="mailto:{{$tProjet->getAssoDiplome()[0]->getCourriel()}}">
                Courriel
                <img src="./liaisons/svg/arrow-up.svg" alt="Envoyer un courriel">
            </a>

            @if($tProjet->getAssoDiplome()[0]->getSiteWeb() != null)
            <a class="externalLink" href="{{ $tProjet->getAssoDiplome()[0]->getSiteWeb() }}">Site web<img src="./liaisons/svg/arrow-up.svg" alt="Liens vers le site web"></a>
            @endif

        </div>
    </div>
</section>

@if($tProjet->getAssoEtapes() != null)
@foreach($tProjet->getAssoEtapes() as $key => $etape)
@php
$chemin_image_etape = './liaisons/imgProjets/1200/' . $tProjet->getDiplomeId() . '_' . $tProjet->getId() . '_e' . $etape->getId() . '.webp';
@endphp

<div class="etapeWrapper blackGlass">
    <img class="etapeImg" src="{{ $chemin_image_etape }}" alt="">
    <div>
        <h2>{{$etape->getNom()}}</h2>
        {!!$etape->getDescription()!!}
    </div>
</div>
@endforeach
@endif


<section id="recommandation">

    <h2>VOIR D'AUTRES PROJETS PAR {{$tProjet->getAssoDiplome()[0]->getPrenom()}}</h2>

    <div id="recommandationWrapper">


        @foreach($tRecommandations as $recommandation)
        <div class="blackGlass">
            <img class="imgProjet" src="./liaisons/imgProjets/600/{!! $recommandation->getDiplomeId() !!}_{!! $recommandation->getId() !!}_01.webp" alt="">
            <h2>{!! $recommandation->getTitre() !!}</h2>
            <a class="mainButton" href="index.php?controleur=projet&action=fiche&id={!! $recommandation->getId() !!}">Voir le projet</a>
        </div>
        @endforeach
    </div>

</section>

@endsection

@section('script')
<script>
    document.querySelector("body").classList.add("dark-theme")
    document.querySelector("body").classList.remove("light-theme")
</script>
@endsection