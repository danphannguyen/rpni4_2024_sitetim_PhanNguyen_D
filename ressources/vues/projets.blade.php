@extends('gabarit')

@section('title')
Projets
@endsection

@section('contenu')
<h1 class="mainTitle"> LES PROJETS </h1>

<form action="index.php" method="get">
    <input type="hidden" name="controleur" value="projet">
    <input type="hidden" name="action" value="filtrer">
    <div>
        <label for="Annee1">Année 1</label>
        <input type="checkbox" name="annee[]" id="Annee1" value="1">
    </div>
    <div>
        <label for="Annee2">Année 2</label>
        <input type="checkbox" name="annee[]" id="Annee2" value="2">
    </div>
    <div>
        <label for="Annee3">Année 3</label>
        <input type="checkbox" name="annee[]" id="Annee3" value="3">
    </div>
    <br>
    <br>
    <br>
    <div>
        <label for="Axe1">Conception</label>
        <input type="checkbox" name="axe_id[]" id="Axe1" value="1">
    </div>
    <div>
        <label for="Axe2">Intégration</label>
        <input type="checkbox" name="axe_id[]" id="Axe2" value="2">
    </div>
    <div>
        <label for="Axe3">Programmation</label>
        <input type="checkbox" name="axe_id[]" id="Axe3" value="3">
    </div>
    <div>
        <label for="Axe4">Médias</label>
        <input type="checkbox" name="axe_id[]" id="Axe4" value="4">
    </div>
    <div>
        <label for="Axe5">Autres</label>
        <input type="checkbox" name="axe_id[]" id="Axe5" value="5">
    </div>
    <button type="submit">Envoyer</button>
</form>

<?php
print_r($tProjets)
?>

@endsection

@section('script')
<script>
    document.querySelector("body").classList.add("dark-theme")
    document.querySelector("body").classList.remove("light-theme")
</script>
@endsection