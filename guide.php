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
So, you've created an account and you want to play. Congratulations! And welcome. :)</br></br>
Now, the first thing you need to do is to create a capital city and start building your empire.</br>
To do this you need to go to the 'towns' menu. There you will see the 'create capital' option. You can choose the map coordinates for your new town, so it is recommended that you look at the map for a location that you might prefer.</br>
Now, having created a new town, the first thing you need to do is to get your economy started. Go to 'towns' and click on the name of your newly created town. You'll be redirected to that town. There will only be a town hall built and you'll have a limited amount of resources at first, so getting more resources is your priority.</br>
Resources are produced from certain buildings. Each faction has different names for buildings so for reference purposes we'll refer to the names of the Empire buildings.</br>
To produce more crop you need to build a Grain mill. Lumber mill is for lumber, Stone mason is for stone and the Iron foundry produces iron. Pretty easy, huh?</br>
Well, not really? :P After your Grain mill is complete, the crop production would still be the same. That's because the crop is produced in Farms, and farms are managed at the Grain mill. Click on the Grain mill after it is built.</br>
You will now see 4 or 6 options [depending on which resource the game randomly choose to have 6 production locations]. Click on one of the options that says Upgrade Farm x to level y. When the upgrade is finished, your crop production would have increased.</br>
Do the same with the other resource producing buildings.</br>
Now you're probably wondering: How do I produce gold?</br>
Well, gold isn't "produced", it is collected from the town folk by means of taxes. Taxes can be setup in the Town hall. But remember, high taxes means low morale. Low morale means low resource production rates.</br>
The morale is shown along with the current available resources at the town view and it represents the percentage in which resources are actually produced.</br>
Here's an example: if you have a morale of 50 [meaning 50%], your town will only produce resources [gold not included] by the currently shown resource production rates multiplied by the current morale and divided by 100.</br>
A morale of 50 means that you only produce at half of normal production rates. So the tricky and interesting part is to balance taxes with morale in order to have a blooming economy that will ensure the growth of your town, and later on, your empire.</br>
</br></br>
This concluded the starter's guide to Devana. I hope you have fun playing, as I had fun creating it. If you have more questions, please read the FAQ or, if your question isn't answered there, post on the forum in the Questions section.</br>
Enjoy! :)
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
