<?php

$title = 'Accueil';
$description = 'Page d\'accueil';

ob_start();

?>
<div class="d-flex flex-row">

    <img class="img-fluid" alt="" src="public/img/me2.gif" style="height:350px;">

    <div class="home">
        <h3>Hi, I'm Addiëlla</h3>
        <p>
            I am currently learning about programming in order to become a fullstack developer.
            Here you will find some projects I did and the technologies they involves.
        </p>
        </p>
    </div>
</div>


<div class="formstyle mt-4">
    <div class="row">
        <div class="col-md-3"> </div>
        <div class="col-md-6 center">
            <h1 class="my-3"> Contact </h1>

            <!-- Formulaire de contact -->
            <form id = 'form_ins' method = "post" action = "contacter">
                <div class="form-group">
                    <label>Nom </label>
                    <input type="text" class="form-control" name="lastname" placeholder="Entrez votre nom" required />
                    <label>Prénom </label>
                    <input type="text" class="form-control" name="firstname" placeholder="Entrez votre prénom" required />
                    <label>Adresse email </label>
                    <input type="email" class="form-control" name="email" placeholder="Entrez votre adresse email" required />
                    <label>Laisser votre message :</label>
                    <textarea class="form-control" name="message" id="message" rows="4" cols="40" required ></textarea> </br>
                    <div class="g-recaptcha"
                         data-sitekey="6LeF904UAAAAABO6m7Sl-pxLDJMS-2E6v1qzSdUP"></div>

                    <button type="submit" class="btn btn-primary">Valider</button>
                </div>
            </form>
        </div>
        <div class="col-md-3"> </div>
    </div>
</div>
<?php

$content = ob_get_clean();
include __DIR__ . "/../template.php";
?>