@foreach ($tFinissants as $finissant)
<li>
    <div class="Card block-center-center gap-2">
        <figure class="block-center-center gap-2">
            <picture>
                <img src="./liaisons/imgTemoignages/temoin_{{$finissant->getId()}}.webp" alt="" width="80" height="80" />
            </picture>
            <figcaption class="block-center-center gap-1">
                <div class="Name">{{ $finissant->getTemoin() }}</div>
                <div class="Username">{{$finissant->getTitrePoste()}}</div>
            </figcaption>
        </figure> <button type="button" data-target="{{$finissant->getId()}}" class="mainButton finissantButton modalBtn">Voir</button>
    </div>
</li>
@endforeach