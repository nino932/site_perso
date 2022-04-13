<?php

include_once "bd.inc.php";

function getNotationRestoR() {
    try {
        $cnx = connexionPDO();
        $req = $cnx->prepare("SELECT r.nomR, r.villeR, AVG(note), COUNT(*) FROM critiquer as c JOIN resto as r ON c.idR = r.idR GROUP BY r.idR
        ");
        $req->execute();
        $resultat = $req->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat;
}