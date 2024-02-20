<?php

use App\Utilitaires\InfosBdd;

$textes = new InfosBdd();

?>
<section class="footerWrapper">
    <div class="footerHeader">
        <div class="footerQuestion">
            <h2>{{ $textes->getTitre(9) }}</h2>
            {!! $textes->getTextes(9) !!}
        </div>

        <hr id="firstHrFooter" >

        <div class="footerHeaderRight">
            <div class="footerSocialMedia">
                {!! $textes->getTextes(3) !!}
                {!! $textes->getTextes(4) !!}
                {!! $textes->getTextes(5) !!}
            </div>
            <div class="footerExternalLink">
                <a class="externalLink" href="http://www.csfoy.ca">
                Cégep de Sainte-Foy<img src="./liaisons/svg/arrow-up.svg" alt="Page du cégep de sainte foy">
                </a>
                {!! $textes->getTextes(2) !!}
            </div>
        </div>
    </div>

    <hr>

    <div class="footerBottom" >
        <span>Conception et développement web par Dan Phan Nguyen Tous droits réservés © 2024 Techniques d'intégration multimédia - Web et apps, Cégep de Sainte-Foy.</span>
        {!! $textes->getTextes(1) !!}
    </div>
</section>