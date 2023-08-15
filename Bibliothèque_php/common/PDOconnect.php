<?php
define('DSN', 'mysql:host=localhost;dbname=bibliotheque');
define('USER', 'root');
define('PASS','');

try{
    $PDO = new PDO(DSN, USER, PASS);
    $PDO->exec("SET NAMES utf8");
    $PDO->$setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $PDO->$setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
catch(PDOException $pe){
   die("ERREUR : " .$pe->getMessage());
}
?>