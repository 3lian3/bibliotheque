<?php
$titre = 'suppression livre';
include 'common/session.php';
require 'common/PDOconnect.php';
include 'common/header.php';
include 'common/menu.php';

if (isset($_GET['supprimer'])) {
    if (!empty($_GET['id'])) {
        $id = ($_GET['id']);

        $sql = "DELETE FROM books WHERE id = :id";
        $requete = $PDO->prepare($sql);
        $requete->bindValue(":id", $id, PDO::PARAM_INT);
        $requete->execute();
        header("Location: livres.php?supprime=1");
    }
}
include 'footer.php';
?>
