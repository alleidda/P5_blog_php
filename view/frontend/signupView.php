<?php

$title = 'Inscription';
$description = 'Page d\'inscription';

ob_start();

?>

<div class="formstyle">
    <div class="row">
        <div class="col-md-3"> </div>
        <div class="col-md-6 center">
            <h1 class="my-3"> <?= nl2br(htmlspecialchars($title)) ?> </h1>

            <!-- Formulaire d'inscription -->
            <form id = 'form_ins' method = "post" action = "s-inscrire">
                <div class="form-group">
                    <label>Adresse email</label>
                    <input type="email" class="form-control" name="email"
                           placeholder="Entrez votre adresse email" required />
                    <label>Pseudo</label>
                    <input type="text" class="form-control" name="username"
                           placeholder="Entrez votre pseudo" required />
                    <label>Nom</label>
                    <input type="text" class="form-control" name="lastname"
                           placeholder="Entrez votre nom" required />
                    <label>Prénom</label>
                    <input type="text" class="form-control" name="firstname"
                           placeholder="Entrez votre prénom" required />
                    <label>Mot de passe</label>
                    <input type="password" class="form-control" name="password"
                           placeholder="Entrez votre mot de passe" required />
                    <label>Entrez à nouveau votre mot de passe</label>
                    <input type="password" class="form-control" name="passwordbis"
                           placeholder="Retappez votre mot de passe" required /></br>
                    <div class="g-recaptcha"
                          data-sitekey="6Le8uSkjAAAAAPNVJg1CDyZ-1FG_tS2VR4CO5MOO"></div>
                    <button type="submit" class="btn btn-primary">Valider</button>
                </div>
            </form>

            <p> Déja inscrit ? </p>
            <p> <a class="btn btn-primary" href='connexion'>Se connecter</a> </p>
        </div>
        <div class="col-md-3"> </div>
    </div>
</div>
<?php
$content = ob_get_clean();

include __DIR__ . "/../template.php";
?>
