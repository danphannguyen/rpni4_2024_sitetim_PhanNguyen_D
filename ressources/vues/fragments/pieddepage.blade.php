<section class="footerWrapper">
    <div class="footerHeader">
        <div class="footerQuestion">
            {!! $tDonnees[9]->getTitre() !!}
            {!! $tDonnees[9]->getTexte() !!}
        </div>

        <hr id="firstHrFooter">

        <div class="footerHeaderRight">
            <div class="footerSocialMedia">
                {!! $tDonnees[3]->getTexte() !!}
                {!! $tDonnees[4]->getTexte() !!}
                {!! $tDonnees[5]->getTexte() !!}
            </div>
            <div class="footerExternalLink">
                <a class="externalLink" href="http://www.csfoy.ca">
                    Cégep de Sainte-Foy<img src="./liaisons/svg/arrow-up.svg" alt="Page du cégep de sainte foy">
                </a>
                {!! $tDonnees[2]->getTexte() !!}
            </div>
        </div>
    </div>

    <hr>

    <div class="footerBottom">
        <span>Conception et développement web par Dan Phan Nguyen Tous droits réservés © 2024 Techniques d'intégration multimédia - Web et apps, Cégep de Sainte-Foy.</span>
        {!! $tDonnees[1]->getTexte() !!}

    </div>
</section>