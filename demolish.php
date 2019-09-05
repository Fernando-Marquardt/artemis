<?php include "antet.php"; include "func.php";

if (isset($_SESSION["user"][0], $_GET["town"], $_POST["a"], $_POST["b"]))
{
 $_GET["town"]=clean($_GET["town"]); $_POST["a"]=clean($_POST["a"]); $_POST["b"]=clean($_POST["b"]);
 $town=town($_GET["town"]); if ($town[1]!=$_SESSION["user"][0]) {header('Location: login.php'); die();}
 $buildings=buildings($_SESSION["user"][10]); $lim=explode("-", $town[11]);
 $land=explode("/", $town[13]); $land[0]=explode("-", $land[0]); $land[1]=explode("-", $land[1]); $land[2]=explode("-", $land[2]); $land[3]=explode("-", $land[3]); $land[4]=explode("-", $town[8]);
 $upk=explode("-", $buildings[$_POST["b"]][7]);
 if ($land[$_POST["a"]][$_POST["b"]]) $land[$_POST["a"]][$_POST["b"]]--; $town[3]-=$upk[$land[$_POST["a"]][$_POST["b"]]];
 if ($_POST["a"]<4)
 {
  $col="land"; $data=array(); $data[0]=implode("-", $land[0]); $data[1]=implode("-", $land[1]); $data[2]=implode("-", $land[2]); $data[3]=implode("-", $land[3]); $data=implode("/", $data);
 }
 else
 {
		$col="buildings"; $data=implode("-", $land[4]);
 }
 if ($_POST["a"]==4) switch ($_POST["b"])
 {//default limits values for a new town: 600-400-200-20-100-0-0-0-0-0-0-0-0
		case 4: $lim[0]=explode("-", $buildings[4][5]); if ($land[4][4]>0) $lim[0]=$lim[0][$land[4][4]-1]; else $lim[0]=600; break;
		case 5: $lim[1]=explode("-", $buildings[5][5]); if ($land[4][5]>0) $lim[1]=$lim[1][$land[4][5]-1]; else $lim[1]=400; break;
		case 6: $lim[5]=explode("-", $buildings[6][5]); if ($land[4][6]>0) $lim[5]=$lim[5][$land[4][6]-1]; else $lim[5]=0; break;
		case 7: $lim[2]-=800; $lim[4]=explode("-", $buildings[7][5]); if ($land[4][7]>0) $lim[4]=$lim[4][$land[4][7]-1]; else $lim[4]=100; break;
		case 8: $lim[3]=explode("-", $buildings[8][5]); if ($land[4][8]>0) $lim[3]=$lim[3][$land[4][8]-1]; else $lim[3]=20; break;
		case 13: $lim[6]=explode("-", $buildings[13][5]); if ($land[4][13]>0) $lim[6]=$lim[6][$land[4][13]-1]; else $lim[6]=0; break;
		case 14: $lim[7]=explode("-", $buildings[14][5]); if ($land[4][14]>0) $lim[7]=$lim[7][$land[4][14]-1]; else $lim[7]=0; break;
		case 15: $lim[8]=explode("-", $buildings[15][5]); if ($land[4][15]>0) $lim[8]=$lim[8][$land[4][15]-1]; else $lim[8]=0; break;
		case 18: $lim[9]=explode("-", $buildings[18][5]); if ($land[4][18]>0) $lim[9]=$lim[9][$land[4][18]-1]; else $lim[9]=0; break;
		case 19: $lim[10]=explode("-", $buildings[19][5]); if ($land[4][19]>0) $lim[10]=$lim[10][$land[4][19]-1]; else $lim[10]=0; break;
		case 20: $lim[11]=explode("-", $buildings[20][5]); if ($land[4][20]>0) $lim[11]=$lim[11][$land[4][20]-1]; else $lim[11]=0; break;
		case 21: $lim[12]=explode("-", $buildings[21][5]); if ($land[4][21]>0) $lim[12]=$lim[12][$land[4][21]-1]; else $lim[12]=0; break;
 }
 if ((($_POST["a"]==4)&&($_POST["b"]!=7))||($_POST["a"]<4))
 {
  $query="update towns set population=".$town[3].", ".$col."='".$data."', limits='".implode("-", $lim)."' where id=".$town[0];
  mysql_query($query, $db_id); header("Location: hall.php?town=".$town[0]);
 }
 else msg($lang['accessDenied']);
}
else {header('Location: login.php'); die();}
?>
