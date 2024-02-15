<!DOCTTYPE html>
<html lang="en">
    <head>
        <title>@yield('title')</title>
        <link rel="stylesheet" href="../public/liaisons/css/styles.css">
        <meta charset="utf-8">
    </head>
    <body class="light-theme">
        <header >
            @include('fragments.entete')
        </header>

        <main>
            @yield('contenu')
        </main>

        <footer>
            @include('fragments.pieddepage', ['date'=> (new \DateTime())->format('Y'), 'legal'=> '© Tous droits réservés'])
        </footer>
    </body>

    @yield('script')

</html>




