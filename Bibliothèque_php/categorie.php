<?php
$titre = 'catégories';
include 'common/session.php';
require 'common/PDOconnect.php';
include_once 'common/header.php';
include_once 'common/menu.php';

?>
<div>
    <br>
    <form method="GET">
    <label for="category">Catégorie :</label>
    <select name="category" id="category" required="required">
    <option value="#" selected disabled>Catégorie</option>

<?php    
$sql = "SELECT * FROM categorys";
$requete = $PDO->prepare($sql);
$requete->execute();
$categorys = $requete->fetchAll(PDO::FETCH_ASSOC);
foreach ($categorys as $category) {
    echo '<option value="'.$category['id'].'">'.$category['name'].'</option>';
}
?>
<br>
</select>
<button type="submit" name="valider">Valider</button>
</form>
</div>
<br><br>
<?php
if (isset($_GET['category'])) {
    $category_id = $_GET['category'];
    $sql = "SELECT books.title, authors.lastname, authors.firstname, books.id, books.cover_image
            FROM categorys 
            JOIN books ON books.category_id = categorys.id
            JOIN authors ON books.author_id = authors.id
            WHERE categorys.id = :category_id";

    $requete = $PDO->prepare($sql);
    $requete->bindParam(':category_id', $category_id, PDO::PARAM_INT);
    $requete->execute();
    $books = $requete->fetchAll(PDO::FETCH_ASSOC);
} else {
    $books = [];
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
