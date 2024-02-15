@extends('gabarit')

@section('title')
    Accueil
@endsection

@section('contenu')
    <h1> Je suis la page d'accueil... </h1>
    <p>{{$contenu}}</p>
@endsection

@section('script')
<script>
    document.querySelector("body").classList.add("dark-theme")
    document.querySelector("body").classList.remove("light-theme")
</script>
@endsection



