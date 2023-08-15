<?php
include 'common/session.php';
include 'common/header.php';
include 'common/menu.php';
$titre = "Ajout livre";
?>

<h1>Ajouter un livre :</h1>

<form action="#" method="POST">
    <fieldset>
        <legend>Champs à remplir</legend>
        <div>
            <label for="title">Titre :</label>
            <input type="text" name="title" id="title" required="required" placeholder="Titre du livre">
        </div>
        <div>
            <label for="release_date">Année de parution :</label>
            <input type="text" name="release_date" id="release_date" required="required" placeholder="AAAA">
        </div>
        <div>
            <label for="numberPages">Nombre de pages :</label>
            <input type="number" name="numberPages" id="numberPages" required="required" placeholder="Nombre de pages">
        </div>
        <div>
            <label for="synopsis">Synopsis :</label><br>
            <textarea name="synopsis" id="synopsis" rows="5" cols="50" required><?= $book['synopsis'] ?></textarea>
        </div>
        <div>
            <label for="lastname">Nom de l'auteur :</label>
            <input type="text" name="lastname" id="lastname" required="required" placeholder="Nom de l'auteur">
        </div>
        <div>
            <label for="firstname">Prénom de l'auteur :</label>
            <input type="text" name="firstname" id="firstname" required="required" placeholder="Prénom de l'auteur">
        </div>
        <div>
            <label for="category">Catégorie :</label>
            <select name="category" id="category" required="required">
                <option value="#" selected disabled>Catégorie</option><br>
                <?php
                require_once 'common/PDOconnect.php';
                $sql = "SELECT * FROM categorys";
                $requete = $PDO->prepare($sql);
                $requete->execute();
                $categorys = $requete->fetchAll(PDO::FETCH_ASSOC);
                foreach ($categorys as $category) {
                    echo '<option value="' . $category['id'] . '">' . $category['name'] . '</option>';
                }
                ?>
            </select>
        </div>
        <button type="submit" name="ajouter">Ajouter</button>
    </fieldset>
</form>

<?php

if (isset($_POST['ajouter'])) {
    if (!empty($_POST['title']) && !empty($_POST['release_date']) && !empty($_POST['numberPages']) && !empty($_POST['lastname']) && !empty($_POST['firstname'])) {
        $title = strip_tags($_POST['title']);
        $release_date = strip_tags($_POST['release_date']);
        $number_of_pages = strip_tags($_POST['numberPages']);
        $synopsis = htmlspecialchars($_POST['synopsis']);
        $author_lastname = strip_tags($_POST['lastname']);
        $author_firstname = strip_tags($_POST['firstname']);
        $category = strip_tags($_POST['category']);

        require_once 'common/PDOconnect.php';

        $sql = "SELECT id FROM authors WHERE lastname = :author_lastname AND firstname = :author_firstname";
        $requete = $PDO->prepare($sql);
        $requete->bindValue(":author_lastname", $author_lastname, PDO::PARAM_STR);
        $requete->bindValue(":author_firstname", $author_firstname, PDO::PARAM_STR);
        $requete->execute();
        $author_id = $requete->fetchColumn();

        if ($author_id === false) {
            $sql = "INSERT INTO authors (lastname, firstname) VALUES (:lastname, :firstname)";
            $requete = $PDO->prepare($sql);
            $requete->bindValue(":lastname", $author_lastname, PDO::PARAM_STR);
            $requete->bindValue(":firstname", $author_firstname, PDO::PARAM_STR);
            $requete->execute();
            $author_id = $PDO->lastInsertId();
        }
        $category_id = strip_tags($_POST['category']);

        if ($category_id === false) {
            echo "Catégorie introuvable";
            exit;
        }
        $sql = "INSERT INTO books (title, release_date, number_of_pages, synopsis, author_id, category_id)
                VALUES (:title, :release_date, :number_of_pages, :synopsis, :author_id, :category_id)";
        $requete = $PDO->prepare($sql);
        $requete->bindValue(":title", $title, PDO::PARAM_STR);
        $requete->bindValue(":release_date", $release_date, PDO::PARAM_INT);
        $requete->bindValue(":number_of_pages", $number_of_pages, PDO::PARAM_INT);
        $requete->bindValue(":synopsis", $synopsis, PDO::PARAM_STR);
        $requete->bindValue(":author_id", $author_id, PDO::PARAM_INT);
        $requete->bindValue(":category_id", $category_id, PDO::PARAM_INT);
        $requete->execute();

        if ($requete) {

            $id = $PDO->lastInsertId();
            if ($id != 0) {
                echo "L'article a été ajouté avec succès. Numéro d'article : $id";
            } else {

            $selectQuery = $PDO->prepare("SELECT id FROM books WHERE title = :title LIMIT 1");
            $selectQuery->bindValue(":title", $title, PDO::PARAM_STR);
            $selectQuery->execute();
            $result = $selectQuery->fetch(PDO::FETCH_ASSOC);
            if ($result && isset($result['id'])) {
                $id = $result['id'];
                echo "L'article a été ajouté avec succès. Numéro d'article : $id";
            } else {
                echo "Erreur lors de l'obtention de l'ID de l'article ajouté";
            }
            }
        } else {
            echo "Erreur lors de l'ajout de l'article";
        }
    }
}

include "common/footer.php";
?>
