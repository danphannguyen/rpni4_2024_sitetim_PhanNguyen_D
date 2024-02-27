@foreach ($tFinissants as $finissant)

<!-- Modal -->
<div id="modalFinissant{{$finissant['id']}}" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>{{$finissant['temoin']}}</h2>
            <span class="close">&times;</span>
        </div>
        <div class="modal-body">
            <div class="modal-body-left">
                <h2>{{$finissant['poste']}}</h2>
                <h3> Diplomé en {{$finissant['annee']}}</h3>
                <a class="externalLink" href="{{$finissant['url']}}">
            {{$finissant['entreprise']}}<img src="./liaisons/svg/arrow-up.svg" alt="Page du cégep de sainte foy">
            </a>
            </div>

            <p>{{$finissant['temoignage']}}</p>
        </div>
    </div>
</div>

@endforeach