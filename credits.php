<?php include "antet.php"; include "func.php";

$gen_stats=gen_stats(48);
?>
<html>
<?php echo "<link rel='stylesheet' type='text/css' href='".$imgs.$fimgs."default.css'>"; ?>

<head>
<title><?php echo $title; ?> - credits</title>
</head>

<body class="q_body">

<div align="center">
<?php echo $top_ad; ?>
    <table class="q_table">
      <tr>
        <td class="td_logo">
		<?php logo($title); ?></td>
      </tr>
      <tr>
        <td class="td_top_menu"><?php menu_up(); ?></td>
      </tr>
      <tr>
        <td class="td_content"><p>Devana credits:</p>
        <p><u>Busuioc Andrei</u> - main concept; html, css, php, mysql coding; default css interface.</p>
        <p><u>Busuioc George</u> - town buildings graphics; logo.</p>
        <p><u>Botescu Andra</u> - weapon icons;  unit graphics.</p>
								<p><u>kasp3r</u> - multilingual core editing</p>
								<p><u>Putu Yoga</u> - new CSS classes</p>
								<p><u>Nenad Markovic/yapi</u> - html & javascript based town view remake; better resource view for costs in all buildings; compact menus in some pages;</p>
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