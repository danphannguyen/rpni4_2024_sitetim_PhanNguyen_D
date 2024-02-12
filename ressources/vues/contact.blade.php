@extends('gabarit')

@section('title')
    Contact
@endsection

@section('contenu')
    <h1> Je suis la page Contact... </h1>
    <p>{{$contenu}}</p>

    <br>
    <br>
    <br>

    <form action="index.php?controleur=message&action=inserer" id="contactForm" method="post">
        <div class="contactInput">
            <label for="fullname">Nom Complet*</label>
            <input type="text" id="fullname" name="prenom_nom" required>
        </div>

        <div class="contactInput">
            <label for="courriel">Courriel*</label>
            <input type="email" id="courriel" name="courriel" required>
        </div>

        <div class="contactDestWrapper">
            <label for="">Destinataires*</label>

            <div class="contactDestRow">
                <input type="radio" name="responsable_id" value="1">SYLVAIN LAMOUREUX</input>
                <input type="radio" name="responsable_id" value="2">ÈVE FÉVRIER</input>
            </div>

            <div class="contactDestRow">
                <input type="radio" name="responsable_id" value="3">PASCAL LAROSE</input>
                <input type="radio" name="responsable_id" value="4">BENOÎT FRIGON</input>
            </div>
        </div>


        <div class="contactInput">
            <label for="sujet">Sujet*</label>
            <input type="text" id="sujet" name="sujet" required>
        </div>

        <div class="contactInput">
            <label for="message">Message</label>
            <textarea id="message" name="contenu" required></textarea>
        </div>

        <button type="submit">Envoyer</button>
    </form>

    <br>
    <br>
    <br>
@endsection

