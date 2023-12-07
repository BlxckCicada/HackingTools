<?php
$directory = 'C:/'; 

foreach(glob($directory . '/*', GLOB_ONLYDIR) as $dir) {
    echo $dir . "<br>";
}
?>
