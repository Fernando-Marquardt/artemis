<?php
session_start();
if (isset($_SESSION["user"][0])) include "./language/".$_SESSION["user"][16];
else if (isset($_SESSION["lang"])) include "./language/".$_SESSION["lang"];
else include "./language/en.php";
$title=$lang['title']; $announcement=$lang['announc']; $m=49; $n=49;
$db_host="localhost"; $db_user="root"; $db_pass=""; $db_name="devana";
$top_ad="<table><tr><td> <font class='q_label'>left ads</font> </td><td>";
$bottom_ad="</td><td> <font class='q_label'>right ads</font> </td></tr></table>";
$bottom_text="<font face='Fixedsys' color='orange'>Devana created by Busuioc Andrei.</font> Online at <a class='q_link' href='http://devana.eu'>devana.eu</a></br>";
if (isset($_SESSION["user"][0])&&($_SESSION["user"][4]>1)) {$top_ad=""; $bottom_ad=""; $bottom_text="<font face='Fixedsys' color='orange'>Devana created by Busuioc Andrei.</font> Online at <a class='q_link' href='http://devana.eu'>devana.eu</a></br>";}
function logo($title)
{
 //echo "<embed type='application/x-shockwave-flash' width='640' height='136' src='default/logo.swf' quality='high'></embed>";
 echo "<img src='default/1/logo.jpg'>";
}

function menu_up()
{
global $lang;
if (isset($_SESSION["user"][1], $_GET["town"]))
{
 $_GET["town"]=clean($_GET["town"]);
 $loc=town_xy($_GET["town"]);
 $map_lnk="<a class='q_link' href='map.php?x=".$loc[0]."&y=".$loc[1]."'>".$lang['map']."</a>";
}
else $map_lnk="<a class='q_link' href='map.php?x=0&y=0'>".$lang['map']."</a>";
echo "<a class='q_link' href='index.php'>".$lang['home']."</a> | ";
if (!isset($_SESSION["user"][1])) echo "<a class='q_link' href='login.php'>".$lang['login']."</a> | 
<a class='q_link' href='register.php'>".$lang['register']."</a> | ";
else echo "<a class='q_link' href='logout.php'>".$lang['logout']."</a> | ";
echo $map_lnk." | <a class='q_link' href='/forum' target='blank'>".$lang['forum']."</a> | 
<a class='q_link' href='help.php'>".$lang['about']."</a> || ";
if (isset($_SESSION["user"][1])) echo "<a class='q_link' href='profile_view.php?id=".$_SESSION["user"][0]."'>".$lang['profile']."</a> | <a class='q_link' href='towns.php'>".$lang['towns']."</a> | ";
}

function menu_down()
{
 global $lang;
 if (isset($_SESSION["user"][0], $_GET["town"]))
 {
		$_GET["town"]=clean($_GET["town"]);
		echo "<a class='q_link' href='town.php?town=".$_GET["town"]."'>".$lang['townCenter']."</a> | <a class='q_link' href='town_stats.php?town=".$_GET["town"]."'>".$lang['statistics']."</a> | ";
 }
 if (isset($_SESSION["user"][0])) $alert=msg_rep_alert($_SESSION["user"][0]);
 if ($alert[0][0]) $alert[0]="<font color='red'>".$alert[0][0]."</font> "; else $alert[0]="";
 if ($alert[1][0]) $alert[1]="<font color='red'>".$alert[1][0]."</font> "; else $alert[1]="";
 if (isset($_SESSION["user"][1])) echo "<a class='q_link' href='reports.php?page=0'>".$alert[0].$lang['reports']."</a> | <a class='q_link' href='messages.php?page=0'>".$alert[1].$lang['messages']."</a> || <a class='q_link' href='chat.php'>".$lang['chat']."</a> | ";
 if ((isset($_SESSION["user"][4]))&&($_SESSION["user"][4]>3)) echo "<a class='q_link' href='apanel.php'>".$lang['adminPanel']."</a> | ";
}

function about()
{global $bottom_text; echo $bottom_text;}

$system=array();
$system[0]=5;//chat message life, in minutes
$system[1]=5;//chat refresh time, in seconds
?>