<?php 
include_once "common/header.php";
include_once "common/menu.php";

?>

<form method="POST" action="#">
    <br>
    <fieldset>
    <legend>Champs à remplir</legend>
    <label for="firstname">Prénom :</label>
    <input type="text" id="firstname" name="firstname" required><br>
    <label for="lastname">Nom :</label>
    <input type="text" id="lastname" name="lastname" required><br>
    <label for="email">Email :</label>
    <input type="email" id="email" name="email" required><br>
    <label for="password">Mot de passe :</label>
    <input type="password" id="password" name="password" required><br>
    <div>
        <input type="submit" value="S'inscrire">
    </div>
    </fieldset>
</form>

<?php
require 'common/PDOconnect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (firstname, lastname, email, password) VALUES (:firstname, :lastname, :email, :password)";

    $requete = $PDO->prepare($sql);

    $requete->bindParam(':firstname', $firstname);
    $requete->bindParam(':lastname', $lastname);
    $requete->bindParam(':email', $email);
    $requete->bindParam(':password', $password);
    $requete->execute();
    if ($requete) {
        $message = "Inscription réussie !";
    } else {
        $message = "Erreur lors de l'inscription.";
    }
}
?>
<?php if (isset($message)) : ?>
    <p><?php echo $message; ?></p>
<?php endif; ?>

<?php include_once "footer.php"; ?>