@extends('courriels.gabarit')

@section('title')
    Courriel provenant du site Tim
@endsection

@section('contenu')
    <section>
        <h1>Courriel provenant de {{$prenom_nom}}</h1>
        <p>Email : {{$courriel}}</p>
        <p>Numéro de Téléphone : {{$telephone}}</p>
        <hr>
        <p>{{ $contenuCourriel }}</p>
    </section>
@endsection



