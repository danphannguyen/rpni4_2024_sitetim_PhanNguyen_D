<!DOCTTYPE html>
<! Gabarit des courriels ... >
<html lang="fr">
    <head>
        <title>@yield('title')</title>
        <meta charset="utf-8">
    </head>
    <body>
        <header >
            @include('courriels.fragments.entete')
        </header>

        <main>
            @yield('contenu')
        </main>

        <footer>
            @include('courriels.fragments.pieddepage')
        </footer>
    </body>
</html>




