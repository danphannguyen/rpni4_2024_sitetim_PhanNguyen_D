<!DOCTTYPE html>
<html lang="en">
    <head>
        <title>@yield('title')</title>
        <link rel="stylesheet" href="../public/liaisons/css/styles.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="utf-8">
    </head>
    <body class="light-theme">
        <header >
            @include('fragments.entete')
            @include('fragments.logo')
        </header>

        <main>
            @yield('contenu')
        </main>

        <footer>
            @include('fragments.pieddepage', ['date'=> (new \DateTime())->format('Y'), 'legal'=> '© Tous droits réservés'])
        </footer>
    </body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    @yield('script')

</html>




