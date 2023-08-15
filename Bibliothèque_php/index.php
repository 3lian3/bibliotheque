<?php
$titre='Accueil';
include 'common/session.php';
include_once 'common/header.php';
include_once 'common/menu.php';
require_once 'common/PDOconnect.php';
?>
<h1>Formulaire de recherche</h1>
<form action="" method="POST">
    <fieldset>
        <legend>Recherche</legend>
        <label for="titre">Titre du livre :</label>
        <input type="text" name="titre" id="titre" required>
        <input type="submit" value="Envoyer">
    </fieldset>
</form>
<br><br>
<?php
if (isset($_POST['titre']) && !empty($_POST['titre'])) {
    $sql = "SELECT books.title, authors.lastname, authors.firstname, categorys.name, books.synopsis, books.release_date, books.number_of_pages, books.id
    FROM books
    JOIN authors ON books.author_id = authors.id
    JOIN categorys ON books.category_id = categorys.id
    WHERE LOWER(books.title) = :saisieLivre
    OR books.title LIKE CONCAT(:saisieLivreStart, '%')
    OR books.title LIKE CONCAT('%', :saisieLivreEnd)";

    $saisieUtilisateur = strtolower($_POST['titre']);
    $saisieUtilisateurStart = $saisieUtilisateur . '%';
    $saisieUtilisateurEnd = '%' . $saisieUtilisateur;
    $requete = $PDO->prepare($sql);
    $requete->bindParam(':saisieLivre', $saisieUtilisateur);
    $requete->bindParam(':saisieLivreStart', $saisieUtilisateurStart);
    $requete->bindParam(':saisieLivreEnd', $saisieUtilisateurEnd);
    $requete->execute();
    $books = $requete->fetchAll(PDO::FETCH_ASSOC);

    if ($books) {
        foreach ($books as $book) {
            echo "<a href='detail_livre.php?id=" . $book['id'] . "'>" . $book['title'] . "</a><br/>";
        }
    }else{
        echo "Aucun livre trouvé avec ce nom.";
    }
}
include "common/footer.php";
?>
