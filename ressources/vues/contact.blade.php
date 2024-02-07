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

    <form action="" id="contactForm">
        <div class="contactInput">
            <label for="fullname">Nom Complet*</label>
            <input type="text" id="fullname" name="fullname" required>
        </div>

        <div class="contactInput">
            <label for="courriel">Courriel*</label>
            <input type="email" id="courriel" name="courriel" required>
        </div>

        <div class="contactDestWrapper">
            <label for="">Destinataires*</label>

            <div class="contactDestRow">
                <input type="radio" name="destinataires" value="1">SYLVAIN LAMOUREUX</input>
                <input type="radio" name="destinataires" value="2">ÈVE FÉVRIER</input>
            </div>

            <div class="contactDestRow">
                <input type="radio" name="destinataires" value="3">PASCAL LAROSE</input>
                <input type="radio" name="destinataires" value="4">BENOÎT FRIGON</input>
            </div>
        </div>


        <div class="contactInput">
            <label for="sujet">Sujet*</label>
            <input type="text" id="sujet" name="sujet" required>
        </div>

        <div class="contactInput">
            <label for="message">Message</label>
            <textarea id="message" name="message" required></textarea>
        </div>

        <button type="submit">Envoyer</button>
    </form>

    <br>
    <br>
    <br>
@endsection

