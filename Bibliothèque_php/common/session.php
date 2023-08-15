<?php
session_start();

if(isset($_SESSION["login"]) && $_SESSION["login"] === true){
    echo 'Bonjour '. htmlspecialchars($_SESSION ["firstname"]) . '!';
} else {
    echo 'L\'utilisateur n\'est pas connecté';
}
?>
