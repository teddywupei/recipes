<?php
    include("header.php");
    
    if(!isset($_POST['oldPassword'], $_POST['newPassword1'], $_POST['newPassword2'])){
        $_SESSION['currentUser']->displayChangePasswordForm();
    }else {
        if($_POST['oldPassword']==$_SESSION['currentUser']->password
           && $_POST['newPassword1']!=""
           && $_POST['newPassword2']!=""
           && $_POST['newPassword1']==$_POST['newPassword2']) {
            $_SESSION['currentUser']->changePassword($_POST['newPassword1']);
        }else if($_POST['oldPassword']=="" || $_POST['newPassword1']=="" || $_POST['newPassword2']=="" ) {
            $_SESSION['currentUser']->displayChangePasswordForm();
            echo '<script type="text/javascript">alert("All fields are required.");</script>';
        }else if($_POST['oldPassword']!=$_SESSION['currentUser']->password){
            $_SESSION['currentUser']->displayChangePasswordForm();
            echo '<script type="text/javascript">alert("Your password was incorrect.");</script>';
        }else if($_POST['newPassword1']!=$_POST['newPassword2']){
            $_SESSION['currentUser']->displayChangePasswordForm();
            echo '<script type="text/javascript">alert("Your passwords didn\'t match.");</script>';
        }
    }
    
    include("footer.php");
?>