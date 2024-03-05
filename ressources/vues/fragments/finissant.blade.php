@foreach ($tFinissants as $finissant)
<li>
    <div class="Card block-center-center gap-2">
        <figure class="block-center-center gap-2">
            <picture>
                <source srcset=" https://raw.githubusercontent.com/mobalti/open-props-interfaces/main/recommendation-carousel/images/img-1.avif " type="image/avif" /> <img src="https://raw.githubusercontent.com/mobalti/open-props-interfaces/main/recommendation-carousel/images/img-1.webp" alt="" width="80" height="80" />
            </picture>
            <figcaption class="block-center-center gap-1">
                <div class="Name">{{ $finissant->getTemoin() }}</div>
                <div class="Username">{{$finissant->getTitrePoste()}}</div>
            </figcaption>
        </figure> <button type="button" data-target="{{$finissant->getId()}}" class="mainButton finissantButton modalBtn">Voir</button>
    </div>
</li>
@endforeach