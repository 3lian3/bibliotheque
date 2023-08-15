<?php
$titre = 'page de connexion';
include 'common/session.php';
include_once 'common/header.php';
include_once 'common/menu.php';
?>

<form action="#" method="POST">
<br>
<div>
    <label>Email</label>
    <input type="text" name="email">
</div>    
<div>
    <label>Mot de passe</label>
    <input type="password" name="password">
</div><br>
<div>
    <input type="submit" value="Login">
</div>
</form>

<?php
require "common/PDOconnect.php";
if($_SERVER["REQUEST_METHOD"] == "POST"){

    if(empty ($_POST["email"])){
        echo "Veuillez entrer votre email.";
    } else{
        $email = $_POST["email"];
    }

    if(empty($_POST["password"])){
        echo "Veuillez entrer votre mot de passe.";
    } else{
        $password = $_POST["password"];
    }

    if(!empty($email) && !empty($password)){
        $sql = "SELECT id, email, password, firstname FROM users WHERE email = :email";
        if($requete = $PDO->prepare($sql)){
            $requete->bindParam(":email", $user_email, PDO::PARAM_STR);
            $user_email = $_POST["email"];
            if($requete->execute()){
                if($requete->rowCount() > 0){
                    if($user = $requete->fetch()){
                        $id = $user["id"];
                        $hashed_password = $user["password"];
                        if(password_verify($password, $hashed_password)){
                            session_start();
                            $_SESSION["logdin"] = true;
                            $_SESSION["id"] = $id;
                            $_SESSION["email"] = $email;
                            $_SESSION["firstname"] = $user["firstname"];                            
                            header("location: index.php");
                        } else{
                            echo "Le mot de passe que vous avez entré n'est pas valide.";
                        }
                    }
                } else{
                    echo "Aucun compte trouvé avec cet email.";
                }
            } else{
                echo "Oops! Quelque chose s'est mal passé. Veuillez réessayer plus tard.";
            }
        }
        unset($requete);
    }
    unset($PDO);
}
?>
<?php include_once 'common/footer.php'; ?>