@extends('courriels.gabarit')

@section('title')
    Titre du courriel contact
@endsection

@section('contenu')
    <section>
        <p>Bonjour,</p>
        <p>Ceci est le corps de votre courriel de message:</p>
        <p>{{ $contenuCourriel }}</p>
        <p>Vous pouvez ajouter du texte, des liens, des images, etc.</p>
    </section>
@endsection



