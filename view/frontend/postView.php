<?php

$title = nl2br(htmlspecialchars($post->title()));
$description = 'Lire un article';

ob_start();

?>

<h1 class="my-3"> <?= nl2br(htmlspecialchars($title)) ?> </h1>
<img class="img-fluid rounded mb-3 mb-md-0"
     src="public/upload/<?=nl2br(htmlspecialchars($post->image()))?>" alt="">

<p> <i> <?=nl2br(htmlspecialchars($post->chapo()))?> </i> </p>

<p class="post-content"> <?=nl2br(htmlspecialchars($post->content()))?> </p>

publié le <span class="date"><?=nl2br(htmlspecialchars($post->creationDate()))?>
<?php
$creationDate = $post->creationDate();
$updateDate = $post->updateDate();

if ($creationDate !== $updateDate) {
    ?>
    </span>• mise à jour le <span class="date"><?=nl2br(htmlspecialchars($post->updateDate())) ?></span>
    <?php
}
?>
 par <span class="username"> <?=nl2br(htmlspecialchars($post->username()))?></span></br>

<?php

if (isset($_SESSION['user']) && $_SESSION['user'] !== null) {
    if (strpos($_SESSION['user'] -> permAction(), 'editPost') !== false) {
        ?>

        <a class="btn btn-primary"
           href='modifier-article-<?=nl2br(htmlspecialchars($post->idPost()))?>'>Modifier l'article</a>

        <a class="btn btn-danger"
           href='supprimer-article-<?=nl2br(htmlspecialchars($post->idPost()))?>'
           onclick="return confirm('Etes-vous sûr ?');">Supprimer l'article</a></br>

        <?php
    }
}
?>

<h4>Commentaires</h4>

<?php


if (isset($comments)) {
    foreach ($comments as $oneComment) {
        ?>
    <div class="comment">
        <span class="username"> <?=nl2br(htmlspecialchars($oneComment->username()))?></span>
        <span class="date"> <?=nl2br(htmlspecialchars($oneComment->creationDate()))?></span>
        <p> <?=nl2br(htmlspecialchars($oneComment->content()))?> </p>

        <?php

        if (isset($_SESSION['user'])) {
            if (strpos($_SESSION['user'] -> permAction(), 'deleteComment') !== false) {
                ?>

                <p>
                    <a href='supprimer-commentaire-<?=nl2br(htmlspecialchars($oneComment->idComment()))?>'
                   onclick="return confirm('Etes-vous sûr ?');">Supprimer</a>
                </p>

                <?php
            }
        }
        ?>
        </div>
        <?php
    }
}
if (isset($_SESSION['user'])) {
    if (strpos($_SESSION['user'] -> permAction(), 'addComment') !== false) {
        ?>
        <div class="article">
            <form id = 'form_com' method = "post"
                  action = "ajouter-commentaire-<?=nl2br(htmlspecialchars($post->idPost()))?>">
                <div class="form-group">
                    <label>Ajouter un commentaire </label>
                    <input type="text" class="form-control" name="content"
                           placeholder="Entrez votre commentaire" required /> </td>
                    <button type="submit" class="btn btn-primary">Valider</button>
                </div>

            </form>
        </div>

        <?php
    }
}

?>

<a href="articles">Retour à la liste des billets</a>

<?php

$content = ob_get_clean();
include __DIR__ . "/../template.php";
?>
