<?php
require_once ('controller/frontend.php');

use \Addiella\controller\Frontend;
use \Addiella\model\Session;
//Autoload
require_once ('vendor/autoload.php');


$session = new Session();
$session->start();

try {
    if (isset($_GET['action'])) {
 if ($_GET['action'] == 'readPost') {
            if (isset($_GET['id']) && $_GET['id'] > 0 && filter_var($_GET['id'], FILTER_VALIDATE_INT) !== false) {
                $idPost = $_GET['id'];
                $frontend = new Frontend();
                $frontend->getPost($idPost);
                return;
            }
            throw new \Exception('Aucun identifiant de billet envoyé');
            return;
        }
 
 elseif ($_GET['action'] == 'postsList') {
                $frontend = new Frontend();
                $frontend->getPosts();
                return;
        } elseif ($_GET['action'] == 'forgotPasswordView') {
                $frontend = new Frontend();
                $frontend->forgotPasswordView();
                return;
        } elseif ($_GET['action'] == 'forgotPassword') {
                $frontend = new Frontend();
                $frontend->forgotPassword();
                return;
        } elseif ($_GET['action'] == 'resetPasswordView') {
                $frontend = new Frontend();
                $frontend->resetPasswordView();
                return;
        } elseif ($_GET['action'] == 'resetPassword') {
                $frontend = new Frontend();
                $frontend->resetPassword();
                return;
        } elseif ($_GET['action'] == 'signUpView') {
                $frontend = new Frontend();
                $frontend->signUpView();
                return;
        } elseif ($_GET['action'] == 'signInView') {
                $frontend = new Frontend();
                $frontend->signInView();
                return;
        } if ($_GET['action'] == 'signUp') {
            // On check que le formulaire a été envoyé
            if (isset($_POST['email'])) {
                $frontend = new Frontend();
                $frontend->signUp();
                return;
            }
        } elseif ($_GET['action'] == 'signIn') {
            // On check que le formulaire a été envoyé
            if (isset($_POST['email'])) {
                $frontend = new Frontend();
                $frontend->signIn();
                return;
            }
        }  elseif ($_GET['action'] == 'homeView') {
            $frontend = new Frontend();
            $frontend->homeView();
            return;
        } elseif ($_GET['action'] == 'contactView') {
            $frontend = new Frontend();
            $frontend->contactView();
            return;
        } elseif ($_GET['action'] == 'postsListView') {
            $frontend = new Frontend();
            $frontend->getPosts();
            return;
        } elseif ($_GET['action'] == 'cvView') {
            $frontend = new Frontend();
            $frontend->cvView();
            return;
        }
    }
    $frontend = new Frontend();
    $frontend->homeView();
} catch (\Exception $e) {
    $errorMessage = $e->getMessage();

    include 'view/errorView.php';
}
