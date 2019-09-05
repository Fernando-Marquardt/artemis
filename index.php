<?php include "antet.php"; include "func.php";
$gen_stats=gen_stats(48);
?>
<html>
<?php echo "<link rel='stylesheet' type='text/css' href='".$imgs.$fimgs."default.css'>"; ?>

<head>
<title><?php echo $title; ?> - <?php echo $lang['home'] ?></title>
</head>

<body class="q_body">

<div align="center">
<?php echo $top_ad; ?>
    <table class="q_table">
      <tr>
        <td class="td_logo"><?php logo($title); ?></td>
      </tr>
      <tr>
        <td class="td_top_menu">
	<?php menu_up(); ?>
	</td>
      </tr>
      <tr>
        <td class="td_content">
	  <font class="q_text"><?php echo $announcement; ?></font></br></br>
	  <?php
	   echo $lang['weHave']." ".$gen_stats[0][0]." ".$lang['users'].".</br>".$gen_stats[1][0]." ".$lang['activeUsers'];
	   echo "</br></br>Choose language:</br> <a class='q_link' href='ch_lang.php?lang=en.php'><img src='default/flag_en.gif'></a> | <a class='q_link' href='ch_lang.php?lang=ro.php'><img src='default/flag_ro.gif'></a> | <a class='q_link' href='ch_lang.php?lang=de.php'><img src='default/flag_de.gif'></a> | <a class='q_link' href='ch_lang.php?lang=it.php'><img src='default/flag_it.gif'></a> | <a class='q_link' href='ch_lang.php?lang=nl.php'><img src='default/flag_nl.gif'></a> | <a class='q_link' href='ch_lang.php?lang=fr.php'><img src='default/flag_fr.gif'></a>";
	   if (!isset($_SESSION["lang"])) $_SESSION["lang"]="en.php";
	  ?>
	</td>
      </tr>
      <tr>
        <td class="td_bottom_menu">
        <?php menu_down(); ?>
        </td>
      </tr>
    </table>
<?php echo $bottom_ad; ?>
<p><?php about(); ?></div>

</body>

</html>