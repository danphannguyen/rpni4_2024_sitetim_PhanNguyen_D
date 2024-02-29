@foreach ($tFinissants as $finissant)

<!-- Modal -->
<div id="modalFinissant{{$finissant->getId()}}" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>{{ $finissant->getTemoin() }}</h2>
            <span class="close">&times;</span>
        </div>
        <div class="modal-body">
            <div class="modal-body-left">
                <h2>{{$finissant->getTitrePoste()}}</h2>
                <h3> Diplomé en {{$finissant->getAnneeDiplomation()}}</h3>
                <a class="externalLink" href="{{$finissant->getUrlEntreprise()}}" target="_blank">
                {{$finissant->getEntreprise()}}<img src="./liaisons/svg/arrow-up.svg" alt="Page du cégep de sainte foy">
            </a>
            </div>

            <p>{{$finissant->getTemoignage()}}</p>
        </div>
    </div>
</div>

@endforeach