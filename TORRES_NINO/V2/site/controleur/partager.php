<?php
if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__ ){
    $racine="..";
}
include_once "$racine/modele/bd.partager.inc.php";

$menuBurger = array();
$partagerRestoR = getPartagerRestoR($_POST["ville"]);

$titre = "Partager une table";
    include "$racine/vue/entete.html.php";
    include "$racine/vue/vuePartagerResto.php";
    include "$racine/vue/pied.html.php";
?>