<?php

include_once "bd.inc.php";

function getPartagerRestoR($resto) {
    try {
        $cnx = connexionPDO();
        $req = $cnx->prepare("SELECT nomR, villeR, mailU FROM aimer , resto  WHERE aimer.idR = resto.idR AND resto.villeR = :resto;");
        $req->bindValue(":resto", $resto );
        $req->execute();
        $resultat = $req->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat;
}