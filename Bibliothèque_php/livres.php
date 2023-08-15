<?php
$titre = 'nos livres';
include 'common/session.php';
require 'common/PDOconnect.php';

$sql = "SELECT books.title, authors.lastname, authors.firstname, books.id, books.cover_image
        FROM books 
        JOIN authors ON books.author_id = authors.id";

        
$requete = $PDO->query($sql);
$books = $requete->fetchAll(PDO::FETCH_ASSOC);

include_once 'common/header.php';
include_once 'common/menu.php';
?>
<h1>Liste des livres :</h1>
<?php
if(isset($_GET['supprime']) && $_GET['supprime'] == 1){
    echo '<h3 style="color: orange;">Le livre a été supprimé avec succès !</h3>';
}
?>
<section>
    <?php
    foreach($books as $book):?>
        <article>
        <?php
        if (!empty($book['cover_image']) && file_exists($book['cover_image'])) {
        echo "<img src='" . $book['cover_image'] . "' alt='Image de couverture'><br/>";
        } else {
        echo "<img src='cover_image/img_default.jpg' alt='Image de couverture par défaut'><br/>";
        }
        ?>
        <h1 class="listLivre"><?=$book["title"]?></h1>
        <p><?=$book["lastname"]." ". $book["firstname"]?></p>
        <a href="detail_livre.php?id=<?=$book["id"]?>">En savoir plus</a><br><br>
        </article>
    <?php endforeach; ?>
</section>
<?php
    include "common/footer.php";
?>