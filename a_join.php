<?php include "antet.php"; include "func.php";

if (isset($_SESSION["user"][1], $_GET["id"]))
if (!$_SESSION["user"][11])
 if (a_join($_GET["id"], $_SESSION["user"][0]))
 {
		$_GET["id"]=clean($_GET["id"]);
  $_SESSION["user"][11]=$_GET["id"];
  $_SESSION["user"][14]="member";
  msg("You have joined the alliance.");
 }
 else msg($lang['dontHaveInvite']);
else msg($lang['quitAllyFirst']);
else msg($lang['insufData']);
?>