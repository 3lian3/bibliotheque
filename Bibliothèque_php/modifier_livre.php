<?php
include 'common/header.php';
include 'common/menu.php';
require_once 'common/PDOconnect.php';

if (!isset($_POST['id']) || empty($_POST['id'])) {
    header('Location:livres.php');
    exit;
}
require_once 'common/PDOconnect.php';

$id = $_POST['id'];
$sql = "SELECT books.title, books.release_date, books.number_of_pages, books.synopsis, authors.lastname, authors.firstname, categorys.name, books.id
        FROM `books`
        JOIN `authors` ON books.author_id = authors.id
        JOIN `categorys` ON books.category_id = categorys.id
        WHERE books.`id`= :id";
$requete = $PDO->prepare($sql);
$requete->bindValue(":id", $id, PDO::PARAM_INT);
$requete->execute();
$book = $requete->fetch(PDO::FETCH_ASSOC);

if (!$book) {
    http_response_code(404);
    echo 'Livre inexistant';
    exit;
}
?>
<h1>Modifier le livre :</h1>

<form action="modifier_livre.php" method="POST" onsubmit="return confirm('Êtes-vous sûr de vouloir modifier ce livre ?');">
    <input type="hidden" name="id" value="<?= $book['id'] ?>" />
<div>
    <label for="title">Titre du livre :</label>
    <input type="text" name="title" id="title" value="<?= $book['title'] ?>" required />
</div>
<div>
    <label for="release_date">Année de parution :</label>
    <input type="text" name="release_date" id="release_date" value="<?= $book['release_date'] ?>" required />
</div>
<div>
    <label for="numbreOfPage">Nombre de page :</label>
    <input type="number" name="numberOfPage" id="numberOfPage" value="<?= $book['number_of_pages'] ?>" required />
</div>
<div>
    <label for="synopsis">Synopsis :</label><br>
    <textarea name="synopsis" id="synopsis" rows="5" cols="50" required><?= $book['synopsis'] ?></textarea>
</div>
<div>
    <label for="nom">Nom de l'auteur :</label>
    <input type="text" name="lastname" id="lastname" value="<?= $book['lastname'] ?>" required />
</div>
<div>
    <label for="prenom">Prenom de l'auteur :</label>
    <input type="text" name="firstname" id="firstname" value="<?= $book['firstname'] ?>" required />
</div>
<div>
    <label for="category">Catégorie :</label>
    <select name="category" id="category" required="required">
    <option value="#" selected disabled>Catégorie</option>

<?php    
$sql = "SELECT * FROM categorys";
$requete = $PDO->prepare($sql);
$requete->execute();
$categorys = $requete->fetchAll(PDO::FETCH_ASSOC);
foreach ($categorys as $category) {
    $selected = $book['name'] == $category['name'] ? 'selected' : '';
    echo '<option value="'.$category['id'].'" '.$selected.'>'.$category['name'].'</option>';
}
?>
</select>
</div>
<br>
<button type="submit" name="modifier">Modifier</button><br>
</fieldset>
</form>
<form action="supprimer.php" method="POST" onsubmit="return confirm('Êtes-vous sûr de vouloir supprimer ce livre ?');">
    <input type="hidden" name="id" value="<?= $book['id'] ?>" />
    <button type="submit" name="supprimer">Supprimer</button>
</form>
<?php
if(isset($_POST['modifier'])) {

    $title = $_POST['title'];
    $release_date = $_POST['release_date'];
    $numberOfPage = $_POST['numberOfPage'];
    $synopsis = $_POST['synopsis'];
    $lastname = $_POST['lastname'];
    $firstname = $_POST['firstname'];
    $category = $_POST['category'];

    //mise à jour livre
    $sql = "UPDATE books SET title = :title, release_date = :release_date, number_of_pages = :numberOfPage, synopsis = :synopsis, category_id = :category WHERE id = :id";
    $requete = $PDO->prepare($sql);
    $requete->execute([':title' => $title, ':release_date' => $release_date, ':numberOfPage' => $numberOfPage, ':synopsis' => $synopsis, ':category' => $category, ':id' => $id]);

    // mise à jour auteur
    $sql = "UPDATE authors SET lastname = :lastname, firstname = :firstname WHERE id = (SELECT author_id FROM books WHERE id = :id)";
    $requete = $PDO->prepare($sql);
    $requete->execute([':lastname' => $lastname, ':firstname' => $firstname, ':id' => $id]);

    header('Location: livres.php');
    exit;
}

include 'common/footer.php';
?>
