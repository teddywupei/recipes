<?php
    include("header.php");
    
    $result = mysql_query("select * from recipes order by title");
    echo "<table>";
    echo "<th></th><th>Title</th><th>Type</th>";
    while($row = mysql_fetch_array($result)){
        echo "<tr><td>";
        
        if($_SESSION['currentUser']->username==$row['user']) {
            echo '<a href="deleteRecipe.php?indx='.$row['indx'].'">x</a>';
        }
        
        echo "</td>
            <td><a href=\"showForm.php?indx=".$row['indx']."\">".$row['title']."</a></td>
            <td>".$row['type']."</td>
            </tr>";
    }
    echo '</table>';
    
    include("footer.php");
?>