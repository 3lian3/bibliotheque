<?php
$titre = 'bibliothèque';
include 'common/session.php';
require 'common/PDOconnect.php';
include_once 'common/header.php';
include_once 'common/menu.php';

?>
<div>
    <br>
    <form method="GET">
    <label for="library">Bibliothèque :</label>
    <select name="library" id="library" required="required">
    <option value="#" selected disabled>Bibliothèque</option>

<?php    
$sql = "SELECT * FROM librarys";
$requete = $PDO->prepare($sql);
$requete->execute();
$librarys = $requete->fetchAll(PDO::FETCH_ASSOC);
foreach ($librarys as $library) {
    echo '<option value="'.$library['id'].'">'.$library['name'].'</option>';
}
?>
<br>
</select>
<button type="submit" name="valider">Valider</button>
</form>
</div>
<br><br>
<?php
if (isset($_GET['library'])) {
    $library_id = $_GET['library'];
    $sql = "SELECT librarys.name, librarys.adress, librarys.phone_number, librarys.email, librarys.opening_hours
            FROM librarys 
            WHERE librarys.id = :library_id";

    $requete = $PDO->prepare($sql);
    $requete->bindParam(':library_id', $library_id, PDO::PARAM_INT);
    $requete->execute();
    $librarys = $requete->fetchAll(PDO::FETCH_ASSOC);
}else{
    $librarys = [];
}
?>
<section>
    <?php
    foreach($librarys as $library):?>
        <article>
        <h1 class="listbiblio"><?=$library["name"]?></h1>
        <p><?=$library["adress"]?></p>
        <p><?=$library["phone_number"]?></p>
        <p><?=$library["email"]?></p>
        <p><?=$library["opening_hours"]?></p>
       
        </article>
    <?php endforeach; ?>
</section>
<?php
    include "common/footer.php";
?>
