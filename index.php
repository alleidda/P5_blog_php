<?php
require_once('controller/frontend.php');

use \Addiella\controller\Frontend;
use \Addiella\model\Session;
//Autoload
require_once('vendor/autoload.php');


$session = new Session();
$session->start();

try {

    if (isset($_GET['action'])) {
        $action = $_GET['action'];
        if (($action == 'readPost')) {
            if (isset($_GET['id']) && $_GET['id'] > 0 && filter_var($_GET['id'], FILTER_VALIDATE_INT) !== false) {
                $idPost = $_GET['id'];
                $frontend = new Frontend();
                $frontend->getPost($idPost);
                return;
            }
            throw new \Exception('Aucun identifiant de billet envoyé');
            return;
        } elseif ($action == 'postsList') {
            $frontend = new Frontend();
            $frontend->getPosts();
            return;
        } elseif ($action == 'forgotPasswordView') {
            $frontend = new Frontend();
            $frontend->forgotPasswordView();
            return;
        } elseif ($action == 'resetPasswordView') {
            $frontend = new Frontend();
            $frontend->resetPasswordView();
            return;
        } elseif ($action == 'resetPassword') {
            $frontend = new Frontend();
            $frontend->resetPassword();
            return;
        } elseif ($action == 'signUpView') {
            $frontend = new Frontend();
            $frontend->signUpView();
            return;
        } elseif ($action == 'signInView') {
            $frontend = new Frontend();
            $frontend->signInView();
            return;
        }
        if ($action == 'signUp') {
            // On check que le formulaire a été envoyé
            if (isset($_POST['email'])) {
                $frontend = new Frontend();
                $frontend->signUp();
                return;
            }
        } elseif ($action == 'signIn') {
            // On check que le formulaire a été envoyé
            if (isset($_POST['email'])) {
                $frontend = new Frontend();
                $frontend->signIn();
                return;
            }
        } elseif ($action == 'homeView') {
            $frontend = new Frontend();
            $frontend->homeView();
            return;
        } elseif ($action == 'contactView') {
            $frontend = new Frontend();
            $frontend->contactView();
            return;
        } elseif ($action == 'postsListView') {
            $frontend = new Frontend();
            $frontend->getPosts();
            return;
        } elseif ($action == 'cvView') {
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
