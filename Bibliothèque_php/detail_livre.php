<?php
$titre = "détail du livre";
include "common/header.php";
include "common/menu.php";
include 'common/session.php';
require_once 'common/PDOconnect.php';

if(!isset($_GET["id"]) || empty($_GET["id"])){
    header("Location: livres.php");
    exit;
}
require_once 'common/PDOconnect.php';

$id = $_GET["id"];
$sql = "SELECT books.title, books.release_date, books.number_of_pages, books.synopsis, authors.lastname, authors.firstname, categorys.name, books.id, books.cover_image
        FROM `books`
        JOIN `authors` ON books.author_id = authors.id
        JOIN `categorys` ON books.category_id = categorys.id
        WHERE books.`id`= :id";
       
$requete = $PDO->prepare($sql);
$requete->bindValue(":id", $id, PDO::PARAM_INT);
$requete->execute();
$books = $requete->fetchAll(PDO::FETCH_ASSOC);

if (!$books){
    http_response_code(404);
    echo "Livre inexistant";
    exit;
}

foreach ($books as $book) {

    if (!empty($book['cover_image']) && file_exists($book['cover_image'])) {
        echo "<br><br><img src='" . $book['cover_image'] . "' alt='Image de couverture'><br/><br/>";
    } else {
        echo "<img src='cover_image/img_default.jpg' alt='Image de couverture par défaut'>";
    }
    
    echo "<br/><strong> Titre : " . $book['title'] . "</strong><br/><br/>";
    echo "Date de sortie : " . $book['release_date'] . "<br/><br/>";
    echo "Nombre de pages : " . $book['number_of_pages'] . "<br><br/>";
    echo "Synopsis : " . $book['synopsis'] . "<br><br/>";
    echo "Auteur : " . $book['lastname'] . " " . $book['firstname'] . "<br><br/>";
    echo "Catégorie : " . $book['name'] . "<br><br>";
    echo '<form action="modifier_livre.php" method="POST">';
    echo '<input type="hidden" name="id" value="' . $book['id'] . '">';
    echo '<button type="submit" name="modifier">Modifier</button>';
    echo '</form><br/>';
    echo '<form action="supprimer.php" method="GET">';
    echo '<input type="hidden" name="id" value="' . $book['id'] . '">';
    echo '<button type="submit" name="supprimer">Supprimer</button>';
    echo '</form>';
}

include "common/footer.php";
?>

