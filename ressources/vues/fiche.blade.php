@extends('gabarit')

@section('title')
Fiche
@endsection

@section('contenu')
<a href=""></a>
<div>
    Voici la fiche du projet
</div>

<?php

print_r($tProjet);

print_r($tProjet->getAssoEtapes()[1]->getNom());

print_r($tProjet->getCoursId());

// print_r($tProjet->getAssoAxeCourAxe()[0]->getNom());
print_r($tProjet->getAssoAxeCourAxe()[0]->getNom());

?>

@endsection

@section('script')
@endsection