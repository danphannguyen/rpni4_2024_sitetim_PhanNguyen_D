<?php
declare(strict_types=1);

namespace App\Modeles;

use App\App;

use PDO;
use PDO\PDOStatement;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mailer\Transport;
use Symfony\Component\Mime\Email;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use App\Modeles\Responsable;

class Message
{
    private int $id = 0;
    private string $prenom_nom = '';
    private string $courriel = '';
    private string $telephone = '';
    private bool $consentement = false;
    private string $sujet = '';
    private string $contenu = '';
    private int $responsable_id = 0;

    public function __construct()
    {

    }

    /* Méthode SET */

    public function setId(int $id): void
    {
        $this->id = $id;
    }

    public function setPrenomNom(string $prenom_nom): void
    {
        $this->prenom_nom = $prenom_nom;
    }

    public function setCourriel(string $courriel): void
    {
        $this->courriel = $courriel;
    }

    public function setTelephone(string $telephone): void
    {
        $this->telephone = $telephone;
    }

    public function setConsentement(bool $consentement): void
    {
        $this->consentement = $consentement;
    }

    public function setSujet(string $sujet): void
    {
        $this->sujet = $sujet;
    }

    public function setContenu(string $contenu): void
    {
        $this->contenu = $contenu;
    }

    public function setResponsableId(int $responsable_id): void
    {
        $this->responsable_id = $responsable_id;
    }

    public function insererBdd() {
        
        $oPDO = App::getPDO();
        $sRequete = "INSERT INTO messages (prenom_nom, courriel, telephone, consentement, sujet, contenu, dateheure_creation, responsable_id) VALUES (:prenom_nom, :courriel, :telephone, :consentement, :sujet, :contenu, :dateheure_creation, :responsable_id)";
        $oPDOStatement = $oPDO->prepare($sRequete);
        $oPDOStatement->bindValue(':prenom_nom', $this->prenom_nom, PDO::PARAM_STR);
        $oPDOStatement->bindValue(':courriel', $this->courriel, PDO::PARAM_STR);
        $oPDOStatement->bindValue(':telephone', $this->telephone, PDO::PARAM_STR);
        $oPDOStatement->bindValue(':consentement', $this->consentement, PDO::PARAM_INT);
        $oPDOStatement->bindValue(':sujet', $this->sujet, PDO::PARAM_STR);
        $oPDOStatement->bindValue(':contenu', $this->contenu, PDO::PARAM_STR);
        $oPDOStatement->bindValue(':dateheure_creation', date('Y-m-d H:i:s'), PDO::PARAM_STR);
        $oPDOStatement->bindValue(':responsable_id', $this->responsable_id, PDO::PARAM_INT);
        $oPDOStatement->execute();
    }

    public function envoyerCourriel(){
        // PRÉPARER LA VUE DU COURRIEL
        $contenu = $this->contenu;
        $tDonnees = ["contenuCourriel" => $contenu, "courriel" => $this->courriel, "prenom_nom" => $this->prenom_nom, "telephone" => $this->telephone];
        $responsable_courriel = Responsable::getResponsableById($this->responsable_id)->getCourriel();

        $vueTexte = App::getBlade()->run('courriels.messages.courrielTexte', $tDonnees); // Vue par défaut pour client low tech
        $vueHtml =  App::getBlade()->run('courriels.messages.courrielHtml' , $tDonnees); // Vue utilisée si supportée par le client

        // PRÉPARER L'OBJET COURRIEL
        //       Remplacer aaaaaa par: Votre nouvelle adresse courriel Gmail (d'où vient le courriel).
        //       Remplacer bbbbbb par: Votre nouvelle adresse courriel Gmail (où va le courriel -> pour tester).
        $courriel = new Email();
        $courriel->from('timcsfoy@gmail.com')
            ->to('ndan101104@gmail.com')
            //->cc('cc@example.com')
            //->bcc('bcc@example.com')
            //->replyTo('fabien@example.com')
            //->priority(Email::PRIORITY_HIGH)
            ->subject($this->sujet)
            ->text($vueTexte)
            ->html($vueHtml);

        // ENVOYER LE COURRIEL PAR LE SERVEUR SMTP DE GOOGLE
        //       Remplacer 111111 par: Votre nouvelle adresse courriel Gmail.
        //       Remplacer 222222 par: Le mot de passe applicatif de sécurité généré dans votre nouveau compte Google.
        //                             Pour tester l'erreur d'envoi: mettre un mot de passe bidon...
        $transport = Transport::fromDsn('smtp://timcsfoy@gmail.com:qbzolygdlibdpczs@smtp.gmail.com:587');
        $mailer = new Mailer($transport);
        $bilan = 'OK';
        try {
            // Essayer d'envoyer...
            $mailer->send($courriel);
            echo "Le courriel a été envoyé avec succès!";
            echo "<br>";
            echo "Voici le contenu du message :" . $contenu;

        } catch (TransportExceptionInterface $e) {
            // Si ça ne fonctionne pas...
            $bilan = 'ERREUR';
        }
        return $bilan;
    }

}