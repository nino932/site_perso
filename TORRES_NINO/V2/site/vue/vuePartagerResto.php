<h1>Partager une table</h1>
<table width=100% border="2 px" >
  <form method="post">
    <label for="ville"> Dans quelle ville :</label><br>
    <input type="text" name="ville"> <br>
    <input type="submit" name="partager" value="Rechercher">
  </form>

  <tr>
    <th>Restaurant</th>
    <th>Ville</th>
    <th>Qui aime ce resto</th>
  </tr>
  <?php foreach($partagerRestoR as $n) { ?>
  <tr>
    <td><?= $n["nomR"] ?></td>
    <td><?= $n["villeR"] ?></td>
    <td><?= $n["mailU"]?></td>
  </tr>
  <?php } ?>
</table>