-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2009 at 05:47 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `devana`
--

-- --------------------------------------------------------

--
-- Table structure for table `alliances`
--

CREATE TABLE IF NOT EXISTS `alliances` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varbinary(45) NOT NULL,
  `founder` int(10) unsigned NOT NULL default '0',
  `description` varbinary(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliances`
--


-- --------------------------------------------------------

--
-- Table structure for table `a_queue`
--

CREATE TABLE IF NOT EXISTS `a_queue` (
  `town` int(10) unsigned NOT NULL default '0',
  `target` int(10) unsigned NOT NULL default '0',
  `id` int(10) unsigned NOT NULL default '0',
  `type` int(10) unsigned NOT NULL default '0',
  `phase` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `army` varbinary(128) NOT NULL,
  `general` varbinary(128) NOT NULL,
  `uup` varbinary(128) NOT NULL,
  `wup` varbinary(128) NOT NULL,
  `aup` varbinary(128) NOT NULL,
  `rLoot` varbinary(128) NOT NULL,
  `wLoot` varbinary(128) NOT NULL,
  `intel` varbinary(128) NOT NULL,
  `sent` varbinary(128) NOT NULL,
  UNIQUE KEY `Index_1` (`town`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE IF NOT EXISTS `buildings` (
  `type` int(10) unsigned NOT NULL default '0',
  `faction` int(10) unsigned NOT NULL default '0',
  `name` varbinary(45) NOT NULL,
  `requirements` varbinary(128) NOT NULL,
  `input` varbinary(128) NOT NULL,
  `output` varbinary(128) NOT NULL,
  `duration` varbinary(128) NOT NULL,
  `upkeep` varbinary(128) NOT NULL,
  `description` varbinary(512) NOT NULL,
  PRIMARY KEY  (`type`,`faction`),
  UNIQUE KEY `Index_1` (`type`,`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`type`, `faction`, `name`, `requirements`, `input`, `output`, `duration`, `upkeep`, `description`) VALUES
(0, 1, 'Grain mill-Farm', '', '50-65-50-50-45', '20-40-60-80-100-120-140-160-180-200', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '3-1-2-2-3-3-3-3-5-5', 'At the grain mill farms are created and upgraded. Farms produce crop.'),
(0, 2, 'Mill-Grain field', '', '50-65-50-50-45', '20-40-60-80-100-120-140-160-180-200', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '3-1-2-2-3-3-3-3-5-5', 'At the farms grain fields are created and upgraded. Grain fields produce crop.'),
(0, 3, 'Rations control-Food gatherer', '', '50-65-50-50-45', '20-40-60-80-100-120-140-160-180-200', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '3-1-2-2-3-3-3-3-5-5', 'At the rations control food gatherers are created and upgraded. Food gatherers gather crop.'),
(1, 1, 'Lumber mill-Forest', '', '65-50-50-45-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the lumber mill forests are managed. Forests produce lumber.'),
(1, 2, 'Saw mill-Lumber patch', '', '65-50-50-45-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the saw mill lumber patches are managed. Lumber patches produce lumber.'),
(1, 3, 'Wood cutters-Wood patch', '', '65-50-50-45-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the wood cutters wood patches are managed. Wood patches produce lumber.'),
(2, 1, 'Stone mason-Quary', '', '50-60-50-65-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the stone mason quaries are created and upgraded. Quaries produce stone.'),
(2, 2, 'Rock quaries-Stone sites', '', '50-60-50-65-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the stone mason quaries are created and upgraded. Quaries produce stone.'),
(2, 3, 'Stone hils-Stone pit', '', '50-60-50-65-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the stone hils stone pits are created and upgraded. Stone pits produce stone.'),
(3, 1, 'Iron foundry-Ore site', '', '50-60-65-50-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the iron foundry ore sites are created and upgraded. Ore sites produce iron.'),
(3, 2, 'Foundry-Metal deposits', '', '50-60-65-50-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the foundry metal deposites are found and exploited. Metal deposites produce iron.'),
(3, 3, 'Mines-Shafts', '', '50-60-65-50-45', '10-14-28-32-36-40-44-48-52-56', '0:3-0:8-0:14-0:24-0:32-0:46-1:6-1:35-2:0-2:49', '2-1-1-1-2-2-2-3-3-3', 'At the mines shafts are created and upgraded. Shafts produce iron.'),
(4, 1, 'Granary', '0-1', '55-65-65-55-50', '800-1100-1800-2500-3600-5400-7100-9000-10000-11100', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The granary stores crop.'),
(4, 2, 'Food stocks', '0-1', '55-65-65-55-50', '800-1100-1800-2500-3600-5400-7100-9000-10000-11100', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The food stocks store crop.'),
(4, 3, 'Rations', '0-1', '55-65-65-55-50', '800-1100-1800-2500-3600-5400-7100-9000-10000-11100', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The food rations are stored here.'),
(5, 1, 'Warehouse', '1-1/2-1/3-1', '55-65-65-55-50', '600-900-1700-2700-4200-5800-7500-9300-10200-11500', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The warehouse stores lumber, stone and iron.'),
(5, 2, 'General stocks', '1-1/2-1/3-1', '55-65-65-55-50', '600-900-1700-2700-4200-5800-7500-9300-10200-11500', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The general stocks store lumber, stone and iron.'),
(5, 3, 'Resource storage', '1-1/2-1/3-1', '55-65-65-55-50', '600-900-1700-2700-4200-5800-7500-9300-10200-11500', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'It stores lumber, stone and iron.'),
(6, 1, 'Cache', '4-1/5-1', '60-60-50-50-45', '500-1000-1600-2200-2700-3400-4300-5200-6100-7000', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The cache stores certain amounts of resources, protecting them from enemy raids.'),
(6, 2, 'Deposit', '4-1/5-1', '60-60-50-50-45', '500-1000-1600-2200-2700-3400-4300-5200-6100-7000', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The deposit stores certain amounts of resources, protecting them from enemy raids.'),
(6, 3, 'Bunker', '4-1/5-1', '60-60-50-50-45', '500-1000-1600-2200-2700-3400-4300-5200-6100-7000', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '1-1-1-1-1-1-1-1-1-1', 'The bunker stores certain amounts of resources, protecting them from enemy raids.'),
(7, 1, 'Town hall-Castle', '', '70-70-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-3-2-3-2-3-3-3-4-10', 'At the town hall you can build other structures and set taxes. The higher the level the faster constructions are completed and the bigger your vault will be.'),
(7, 2, 'Town council-Palace', '', '70-70-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-3-2-3-2-3-3-3-4-10', 'At the town council you can build other structures and set taxes. The higher the level the faster constructions are completed and the bigger your vault will be.'),
(7, 3, 'Town central-Fortress', '', '70-70-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-3-2-3-2-3-3-3-4-10', 'At the town central you can build other structures and set taxes. The higher the level the faster constructions are completed and the bigger your vault will be.'),
(8, 1, 'House', '', '60-60-50-50-45', '30-50-80-120-190-260-360-480-650-850', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '0-0-0-0-0-0-0-0-0-0', 'Here you provide living quarters for your population.'),
(8, 2, 'Lodges', '', '60-60-50-50-45', '30-50-80-120-190-260-360-480-650-850', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '0-0-0-0-0-0-0-0-0-0', 'Here you provide living quarters for your population.'),
(8, 3, 'Quarters', '', '60-60-50-50-45', '30-50-80-120-190-260-360-480-650-850', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '0-0-0-0-0-0-0-0-0-0', 'Here you provide living quarters for your population.'),
(9, 1, 'Embassy', '7-3', '400-300-300-300-250', '', '1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7', '10', 'The embassy allows you to create alliances with other players.'),
(9, 2, 'External affaires', '7-3', '400-300-300-300-250', '', '1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7', '10', 'External affaires allow you to create alliances with other players.'),
(9, 3, 'Foreign relations', '7-3', '400-300-300-300-250', '', '1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7-1:7', '10', 'Here you create alliances with other players.'),
(10, 1, 'Marketplace', '7-3', '60-60-55-50-50', '', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '15-2-2-2-2-2-2-2-2-2', 'The marketplace allows you to trade resources and/or weapons with other players. The higher the level the more you can trade at a time.'),
(10, 2, 'Trading post', '7-3', '60-60-55-50-50', '', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '15-2-2-2-2-2-2-2-2-2', 'The trading post allows you to trade resources and/or weapons with other players. The higher the level the more you can trade at a time.'),
(10, 3, 'Trade district', '7-3', '60-60-55-50-50', '', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '15-2-2-2-2-2-2-2-2-2', 'The trade district allows you to trade resources and/or weapons with other players. The higher the level the more you can trade at a time.'),
(11, 1, 'Cathedral', '7-7', '70-60-60-60-55', '20-30-40-50-60-70-80-90-100-110', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'The cathedral boosts the morale of the town folk.'),
(11, 2, 'Cathedral', '7-7', '70-60-60-60-55', '20-30-40-50-60-70-80-90-100-110', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'The cathedral boosts the morale of the town folk.'),
(11, 3, 'Cathedral', '7-7', '70-60-60-60-55', '20-30-40-50-60-70-80-90-100-110', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'The cathedral boosts the morale of the town folk.'),
(12, 1, 'Port', '9-1', '60-60-65-55-50', '', '1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30', '15-2-2-2-2-2-2-2-2-2', 'The higher the level the faster the ships are built.'),
(12, 2, 'Docks', '9-1', '60-60-65-55-50', '', '1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30', '15-2-2-2-2-2-2-2-2-2', 'The higher the level the faster the ships are built.'),
(12, 3, 'Ship bay', '9-1', '60-60-65-55-50', '', '1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30-1:30', '15-2-2-2-2-2-2-2-2-2', 'The higher the level the faster the ships are built.'),
(13, 1, 'Wall', '17-1', '70-70-90-60-55', '10-15-20-25-30-35-40-45-50-55', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '3-1-1-2-3-2-3-3-4-4', 'The wall is a defensive structure. It boosts the defensive capabilities of the town in case of attack.'),
(13, 2, 'Border', '17-1', '70-70-90-60-55', '10-15-20-25-30-35-40-45-50-55', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '3-1-1-2-3-2-3-3-4-4', 'The border is a defensive structure. It boosts the defensive capabilities of the town in case of attack.'),
(13, 3, 'Enforced frontier', '17-1', '70-70-90-60-55', '10-15-20-25-30-35-40-45-50-55', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '3-1-1-2-3-2-3-3-4-4', 'The enforced frontier is a defensive structure. It boosts the defensive capabilities of the town in case of attack.'),
(14, 1, 'Tower', '17-1', '65-60-75-60-50', '10-15-20-25-30-35-40-45-50-55', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'The tower is an offensive structure. It boosts the offensive capabilities of the town in case of attack.'),
(14, 2, 'Outpost', '17-1', '65-60-75-60-50', '10-15-20-25-30-35-40-45-50-55', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'The outpost is an offensive structure. It boosts the offensive capabilities of the town in case of attack.'),
(14, 3, 'Enforced tower', '17-1', '65-60-75-60-50', '10-15-20-25-30-35-40-45-50-55', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'The enforced tower is an offensive structure. It boosts the offensive capabilities of the town in case of attack.'),
(15, 1, 'Barracks', '16-1/17-1/21-1', '70-65-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '3-1-1-2-3-2-3-3-4-4', 'At the barracks troops can be trained. The higher the level the faster the troops are trained.'),
(15, 2, 'Mercenary camp', '16-1/17-1/21-1', '70-65-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '3-1-1-2-3-2-3-3-4-4', 'At the mercenary camp troops can be recruited. The higher the level the faster the troops are recruited.'),
(15, 3, 'Training grounds', '16-1/17-1/21-1', '70-65-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '3-1-1-2-3-2-3-3-4-4', 'At the training grounds troops can be trained. The higher the level the faster the troops are trained.'),
(16, 1, 'Academy', '21-1', '400-300-400-300-250', '', '1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0', '10', 'At the academy you can upgrade the maximum hit points of your army.'),
(16, 2, 'Army research', '21-1', '400-300-400-300-250', '', '1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0', '10', 'At the army research you can upgrade the maximum hit points of your army.'),
(16, 3, 'Military advances', '21-1', '400-300-400-300-250', '', '1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0-1:0', '10', 'At the military advances you can upgrade the maximum hit points of your army.'),
(17, 1, 'Blacksmith', '16-1/21-1', '250-350-350-450-200', '', '0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45', '7', 'At the blacksmith you can upgrade the weapons & armor of your units.'),
(17, 2, 'Forge', '16-1/21-1', '250-350-350-450-200', '', '0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45', '7', 'At the forge you can upgrade the weapons & armor of your units.'),
(17, 3, 'Warmill', '16-1/21-1', '250-350-350-450-200', '', '0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45-0:45', '7', 'At the warmill you can upgrade the weapons & armor of your units.'),
(18, 1, 'Weapon and armor shop', '16-1/21-1', '55-65-65-75-50', '100-90-85-80-75-70-65-60-55-50', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '2-1-1-1-2-2-2-3-3-3', 'Here you can create weapons needed for your troops. The higher the level the faster the weapons are forged.'),
(18, 2, 'Weapons and shields Inc.', '16-1/21-1', '55-65-65-75-50', '100-90-85-80-75-70-65-60-55-50', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '2-1-1-1-2-2-2-3-3-3', 'Here you can create weapons needed for your troops. The higher the level the faster the weapons are forged.'),
(18, 3, 'Military equipment', '16-1/21-1', '55-65-65-75-50', '100-90-85-80-75-70-65-60-55-50', '0:5-0:10-0:17-0:27-0:39-0:50-1:15-1:45-2:20-3:0', '2-1-1-1-2-2-2-3-3-3', 'Here you can create weapons needed for your troops. The higher the level the faster the weapons are forged.'),
(19, 1, 'Stable', '15-5/16-1/21-1', '80-60-55-60-55', '100-90-85-80-75-70-65-60-55-50', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '3-1-2-2-3-3-3-3-5-5', 'At the stable you can breed horses needed for your mounted troops. The higher the level the faster the horses are bred.'),
(19, 2, 'Horse pens', '15-5/16-1/21-1', '80-60-55-60-55', '100-90-85-80-75-70-65-60-55-50', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '3-1-2-2-3-3-3-3-5-5', 'At the horse pens you can breed horses needed for your mounted troops. The higher the level the faster the horses are bred.'),
(19, 3, 'Mounts', '15-5/16-1/21-1', '80-60-55-60-55', '100-90-85-80-75-70-65-60-55-50', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '3-1-2-2-3-3-3-3-5-5', 'Here you can breed horses needed for your mounted troops. The higher the level the faster the horses are bred.'),
(20, 1, 'Siege shop', '15-10/16-1/17-1/21-1', '70-65-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'At the siege shop you can build siege weapons. The higher the level the faster the siege weapons are done.'),
(20, 2, 'Catapult & co.', '15-10/16-1/17-1/21-1', '70-65-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'At the siege shop you can build siege weapons. The higher the level the faster the siege weapons are done.'),
(20, 3, 'Heavy weapons', '15-10/16-1/17-1/21-1', '70-65-80-60-55', '100-90-85-80-75-70-65-60-55-50', '0:20-0:30-0:50-1:35-2:00-2:55-3:45-4:25-5:05-6:0', '2-1-1-1-2-2-2-3-3-3', 'Here you can build siege weapons. The higher the level the faster the siege weapons are done.'),
(21, 1, 'Military storage', '', '55-65-65-75-50', '5-10-20-30-45-70-90-100-150-250', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '2-1-1-1-2-2-2-2-2-2', 'Here weapons are stored.'),
(21, 2, 'Weapon vault', '', '55-65-65-75-50', '5-10-20-30-45-70-90-100-150-250', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '2-1-1-1-2-2-2-2-2-2', 'Here weapons are stored.'),
(21, 3, 'Weapon racks', '', '55-65-65-75-50', '5-10-20-30-45-70-90-100-150-250', '0:10-0:20-0:40-0:55-1:20-1:55-2:45-3:25-4:05-5:0', '2-1-1-1-2-2-2-2-2-2', 'Here weapons are stored.');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `sId` int(10) unsigned NOT NULL,
  `timeStamp` datetime NOT NULL,
  `message` varbinary(512) NOT NULL,
  `recipient` int(10) unsigned NOT NULL,
  `sender` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--


-- --------------------------------------------------------

--
-- Table structure for table `chat_s`
--

CREATE TABLE IF NOT EXISTS `chat_s` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varbinary(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `chat_s`
--


-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `name` varbinary(256) NOT NULL,
  `value` varbinary(256) NOT NULL,
  `ord` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ord`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`name`, `value`, `ord`) VALUES
('allow_duplicate_ip', '1', 0),
('allow_duplicate_email', '0', 1),
('login', '1', 2),
('register', '1', 3),
('mail_new_pass', '0', 4);

-- --------------------------------------------------------

--
-- Table structure for table `c_queue`
--

CREATE TABLE IF NOT EXISTS `c_queue` (
  `town` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `b` int(10) unsigned NOT NULL default '0',
  `subB` int(11) NOT NULL default '0',
  UNIQUE KEY `Index_1` (`town`,`b`,`subB`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `d_queue`
--

CREATE TABLE IF NOT EXISTS `d_queue` (
  `user` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE IF NOT EXISTS `factions` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varbinary(45) NOT NULL,
  `grPath` varbinary(128) NOT NULL,
  `ratio` float NOT NULL default '1.5',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `name`, `grPath`, `ratio`) VALUES
(1, 'the Empire', '1/', 1.7),
(2, 'the Guild', '1/', 1.6),
(3, 'the Order', '1/', 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `alliance` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(128) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `forums`
--


-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `x` int(10) unsigned NOT NULL default '0',
  `y` int(10) unsigned NOT NULL default '0',
  `type` int(10) unsigned NOT NULL default '0',
  `subtype` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `Index_1` (`x`,`y`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map`
--


-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `sender` int(10) unsigned NOT NULL default '0',
  `recipient` int(10) unsigned NOT NULL default '0',
  `subject` varbinary(45) NOT NULL,
  `contents` varbinary(10240) NOT NULL,
  `sent` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `pacts`
--

CREATE TABLE IF NOT EXISTS `pacts` (
  `type` int(10) unsigned NOT NULL default '0',
  `a1` int(10) unsigned NOT NULL default '0',
  `a2` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `Index_1` (`type`,`a1`,`a2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pacts`
--


-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `thread` int(10) unsigned NOT NULL,
  `author` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(128) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `recipient` int(10) unsigned NOT NULL default '0',
  `subject` varbinary(45) NOT NULL,
  `contents` varbinary(10240) NOT NULL,
  `sent` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `forum` int(10) unsigned NOT NULL,
  `author` int(10) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(128) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `threads`
--


-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE IF NOT EXISTS `towns` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `owner` int(10) unsigned NOT NULL default '0',
  `name` varbinary(45) NOT NULL,
  `population` int(10) unsigned NOT NULL default '2',
  `isCapital` tinyint(1) NOT NULL default '0',
  `morale` int(10) unsigned NOT NULL default '100',
  `weapons` varbinary(128) NOT NULL,
  `army` varbinary(128) NOT NULL,
  `buildings` varbinary(128) NOT NULL,
  `production` varbinary(128) NOT NULL,
  `resources` varbinary(128) NOT NULL,
  `limits` varbinary(128) NOT NULL,
  `upkeep` int(10) unsigned NOT NULL default '2',
  `land` varbinary(128) NOT NULL,
  `description` varbinary(512) default NULL,
  `general` varbinary(128) NOT NULL,
  `water` int(11) NOT NULL default '-1',
  `uUpgrades` varbinary(128) NOT NULL,
  `wUpgrades` varbinary(128) NOT NULL,
  `aUpgrades` varbinary(128) NOT NULL,
  `lastCheck` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `towns`
--


-- --------------------------------------------------------

--
-- Table structure for table `t_queue`
--

CREATE TABLE IF NOT EXISTS `t_queue` (
  `seller` int(10) unsigned NOT NULL default '0',
  `buyer` int(10) unsigned default NULL,
  `sType` int(10) unsigned NOT NULL default '0',
  `sSubType` int(10) unsigned NOT NULL default '0',
  `sQ` int(10) unsigned NOT NULL default '0',
  `bType` int(10) unsigned NOT NULL default '0',
  `bSubType` int(10) unsigned NOT NULL default '0',
  `bQ` int(10) unsigned NOT NULL default '0',
  `type` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime default NULL,
  `x` int(10) unsigned NOT NULL default '0',
  `y` int(10) unsigned NOT NULL default '0',
  `water` int(11) NOT NULL default '0',
  `maxTime` float NOT NULL default '0',
  UNIQUE KEY `Index_1` (`seller`,`sType`,`sSubType`,`bType`,`bSubType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `type` int(10) unsigned NOT NULL default '0',
  `faction` int(10) unsigned NOT NULL default '0',
  `name` varbinary(45) NOT NULL,
  `requirements` varbinary(128) NOT NULL,
  `input` varbinary(128) NOT NULL,
  `hp` int(10) unsigned NOT NULL default '0',
  `attack` int(10) unsigned NOT NULL default '0',
  `defense` int(10) unsigned NOT NULL default '0',
  `speed` int(10) unsigned NOT NULL default '0',
  `duration` varbinary(128) NOT NULL,
  `description` varbinary(512) default NULL,
  PRIMARY KEY  (`type`,`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`type`, `faction`, `name`, `requirements`, `input`, `hp`, `attack`, `defense`, `speed`, `duration`, `description`) VALUES
(0, 1, 'Spearman', '0-6', '150-80-50-60-50', 15, 3, 20, 6, '0:5', 'The spearman is the basic military unit.\r\nRequirements: Spear, Chain armor.'),
(0, 2, 'Spearman', '0-6', '130-60-30-40-30', 15, 1, 25, 6, '0:5', 'The spearman is the basic military unit.\r\nRequirements: Spear, Chain armor.'),
(0, 3, 'Spearman', '0-6', '170-100-70-80-70', 15, 5, 15, 6, '0:5', 'The spearman is the basic military unit.\r\nRequirements: Spear, Chain armor.'),
(1, 1, 'Swordsman', '1-6-8', '250-150-100-170-100', 20, 5, 25, 5, '0:10', 'The swordsman is the most common military unit.\r\nRequirements: Short sword, Chain armor, Shield.'),
(1, 2, 'Swordsman', '1-6-8', '230-130-80-150-80', 20, 3, 30, 5, '0:10', 'The swordsman is the most common military unit.\r\nRequirements: Short sword, Chain armor, Shield.'),
(1, 3, 'Swordsman', '1-6-8', '270-170-120-190-120', 20, 7, 20, 5, '0:10', 'The swordsman is the most common military unit.\r\nRequirements: Short sword, Chain armor, Shield.'),
(2, 1, 'Elite Swordsman', '2-7-8', '300-200-150-250-150', 25, 7, 40, 4, '0:15', 'The elite swordsman is the most versatile infantry unit.\r\nRequirements: Long sword, Plate armor, Shield.'),
(2, 2, 'Elite Swordsman', '2-7-8', '280-180-130-230-130', 25, 5, 45, 4, '0:15', 'The elite swordsman is the most versatile infantry unit.\r\nRequirements: Long sword, Plate armor, Shield.'),
(2, 3, 'Elite Swordsman', '2-7-8', '320-220-170-270-170', 25, 9, 35, 4, '0:15', 'The elite swordsman is the most versatile infantry unit.\r\nRequirements: Long sword, Plate armor, Shield.'),
(3, 1, 'Bowman', '3-5', '300-350-100-100-150', 10, 10, 10, 7, '0:10', 'The bowman is a good offensive unit, though he lacks defensive capabilities.\r\nRequirements: Bow, Leather armor.'),
(3, 2, 'Bowman', '3-5', '280-330-80-80-130', 10, 8, 15, 7, '0:10', 'The bowman is a good offensive unit, though he lacks defensive capabilities.\r\nRequirements: Bow, Leather armor.'),
(3, 3, 'Bowman', '3-5', '320-370-120-120-170', 10, 12, 5, 7, '0:10', 'The bowman is a good offensive unit, though he lacks defensive capabilities.\r\nRequirements: Bow, Leather armor.'),
(4, 1, 'Crossbowman', '4-6', '250-250-100-120-200', 15, 12, 20, 6, '0:15', 'The crossbowman is good at both offense and defense.\r\nRequirements: Crossbow, Chain armor.'),
(4, 2, 'Crossbowman', '4-6', '230-230-80-100-180', 15, 10, 25, 6, '0:15', 'The crossbowman is good at both offense and defense.\r\nRequirements: Crossbow, Chain armor.'),
(4, 3, 'Crossbowman', '4-6', '270-270-120-140-220', 15, 14, 15, 6, '0:15', 'The crossbowman is good at both offense and defense.\r\nRequirements: Crossbow, Chain armor.'),
(5, 1, 'Knight', '2-7-8-9', '400-300-150-250-250', 40, 15, 45, 10, '0:20', 'The knight is the best cavalry unit.\r\nRequirements: Long sword, Plate armor, Shield, Horse.'),
(5, 2, 'Knight', '2-7-8-9', '380-280-130-230-230', 40, 13, 50, 10, '0:20', 'The knight is the best cavalry unit.\r\nRequirements: Long sword, Plate armor, Shield, Horse.'),
(5, 3, 'Knight', '2-7-8-9', '420-320-170-270-270', 40, 17, 40, 10, '0:20', 'The knight is the best cavalry unit.\r\nRequirements: Long sword, Plate armor, Shield, Horse.'),
(6, 1, 'Ranger', '3-5-9', '300-250-150-150-250', 25, 10, 15, 12, '0:20', 'The ranger is a mounted bowman.\r\nRequirements: Bow, Leather armor, Horse.'),
(6, 2, 'Ranger', '3-5-9', '280-230-130-130-230', 25, 8, 20, 12, '0:20', 'The ranger is a mounted bowman.\r\nRequirements: Bow, Leather armor, Horse.'),
(6, 3, 'Ranger', '3-5-9', '320-270-170-170-270', 25, 12, 10, 12, '0:20', 'The ranger is a mounted bowman.\r\nRequirements: Bow, Leather armor, Horse.'),
(7, 1, 'Battering ram', '', '300-300-350-250-200', 75, 30, 20, 4, '0:45', 'The battering is a versatile siege weapon.\r\nRequirements: none.'),
(7, 2, 'Battering ram', '', '280-280-330-230-180', 75, 28, 25, 4, '0:45', 'The battering is a versatile siege weapon.\r\nRequirements: none.'),
(7, 3, 'Battering ram', '', '320-320-370-270-220', 75, 32, 15, 4, '0:45', 'The battering is a versatile siege weapon.\r\nRequirements: none.'),
(8, 1, 'Catapult', '', '400-400-300-200-300', 50, 50, 0, 2, '0:30', 'The catapult is a siege weapon.\r\nRequirements: none.'),
(8, 2, 'Catapult', '', '380-380-280-180-280', 50, 48, 5, 2, '0:30', 'The catapult is a siege weapon.\r\nRequirements: none.'),
(8, 3, 'Catapult', '', '420-420-320-220-320', 50, 52, 0, 2, '0:30', 'The catapult is a siege weapon.\r\nRequirements: none.'),
(9, 1, 'Warship', '10', '600-700-400-300-500', 500, 250, 30, 26, '2:0', 'The warship is a powerful unit that protects your port, or attacks enemy ports.\r\nRequirements: 12 cannon.'),
(9, 2, 'Warship', '10', '580-680-380-280-480', 500, 248, 35, 26, '2:0', 'The warship is a powerful unit that protects your port, or attacks enemy ports.\r\nRequirements: 12 cannon.'),
(9, 3, 'Warship', '10', '620-720-420-320-520', 500, 252, 25, 26, '2:0', 'The warship is a powerful unit that protects your port, or attacks enemy ports.\r\nRequirements: 12 cannon.'),
(10, 1, 'Transport ship', '', '500-600-300-200-400', 300, 15, 10, 20, '1:0', 'Transport ships are used at sea attacks, or to reinforce an ally via water.\r\nRequirements: none.'),
(10, 2, 'Transport ship', '', '480-580-280-180-380', 300, 13, 15, 20, '1:0', 'Transport ships are used at sea attacks, or to reinforce an ally via water.\r\nRequirements: none.'),
(10, 3, 'Transport ship', '', '520-620-320-220-420', 300, 17, 5, 20, '1:0', 'Transport ships are used at sea attacks, or to reinforce an ally via water.\r\nRequirements: none.'),
(11, 1, 'Colonist', '1-5', '1000-700-500-600-600', 25, 5, 20, 5, '1:0', 'Colonists build new towns.\r\nRequirements: Short sword, Leather armor.'),
(11, 2, 'Colonist', '1-5', '980-680-480-580-680', 25, 3, 25, 5, '1:0', 'Colonists build new towns.\r\nRequirements: Short sword, Leather armor.'),
(11, 3, 'Colonist', '1-5', '1020-720-520-620-620', 25, 7, 15, 5, '1:0', 'Colonists build new towns.\r\nRequirements: Short sword, Leather armor.'),
(12, 1, 'Scout', '1-5-9', '300-250-150-150-200', 35, 10, 15, 14, '0:20', 'Scouts are used to gather information about other towns.\r\nRequirements: Short swords, Leather armor, Horse.'),
(12, 2, 'Scout', '1-5-9', '280-230-130-130-180', 35, 8, 20, 14, '0:20', 'Scouts are used to gather information about other towns.\r\nRequirements: Short swords, Leather armor, Horse.'),
(12, 3, 'Scout', '1-5-9', '320-270-170-170-220', 35, 12, 10, 14, '0:20', 'Scouts are used to gather information about other towns.\r\nRequirements: Short swords, Leather armor, Horse.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varbinary(45) NOT NULL,
  `pass` varbinary(45) NOT NULL,
  `email` varbinary(45) default NULL,
  `level` int(10) unsigned NOT NULL default '0',
  `joined` date NOT NULL default '0000-00-00',
  `lastVisit` datetime default '0000-00-00 00:00:00',
  `points` int(10) unsigned NOT NULL default '0',
  `ip` varbinary(45) NOT NULL,
  `description` varbinary(512) default NULL,
  `faction` int(10) unsigned NOT NULL default '1',
  `alliance` int(10) unsigned NOT NULL default '0',
  `sitter` varbinary(45) default NULL,
  `grPath` varbinary(128) default NULL,
  `rank` varbinary(45) default NULL,
  `mute` tinyint(1) NOT NULL,
  `lang` varbinary(45) NOT NULL default 'en.php',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `uup_queue`
--

CREATE TABLE IF NOT EXISTS `uup_queue` (
  `town` int(10) unsigned NOT NULL default '0',
  `unit` int(10) unsigned NOT NULL default '0',
  `tree` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime NOT NULL default '0000-00-00 00:00:00',
  UNIQUE KEY `Index_1` (`town`,`unit`,`tree`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uup_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `u_queue`
--

CREATE TABLE IF NOT EXISTS `u_queue` (
  `town` int(10) unsigned NOT NULL default '0',
  `type` int(10) unsigned NOT NULL default '0',
  `quantity` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime NOT NULL default '0000-00-00 00:00:00',
  UNIQUE KEY `Index_1` (`town`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_queue`
--


-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE IF NOT EXISTS `weapons` (
  `type` int(10) unsigned NOT NULL default '0',
  `faction` int(10) unsigned NOT NULL default '0',
  `name` varbinary(45) NOT NULL,
  `input` varbinary(128) NOT NULL,
  `duration` varbinary(128) default NULL,
  `description` varbinary(512) default NULL,
  PRIMARY KEY  (`type`,`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`type`, `faction`, `name`, `input`, `duration`, `description`) VALUES
(0, 1, 'Spear', '20-30-5-10-5', '0:5', 'Spears are basic two handed weapons.'),
(0, 2, 'Spear', '20-30-5-10-5', '0:7', 'Spears are basic two handed weapons.'),
(0, 3, 'Spear', '20-30-5-10-5', '0:3', 'Spears are basic two handed weapons.'),
(1, 1, 'Short sword', '20-10-10-30-10', '0:10', 'Short swords are the weapons most commonly used.'),
(1, 2, 'Short sword', '20-10-10-30-10', '0:12', 'Short swords are the weapons most commonly used.'),
(1, 3, 'Short sword', '20-10-10-30-10', '0:8', 'Short swords are the weapons most commonly used.'),
(2, 1, 'Long sword', '30-15-10-40-20', '0:15', 'Long swords are the best in melee combat.'),
(2, 2, 'Long sword', '30-15-10-40-20', '0:17', 'Long swords are the best in melee combat.'),
(2, 3, 'Long sword', '30-15-10-40-20', '0:13', 'Long swords are the best in melee combat.'),
(3, 1, 'Bow', '20-30-10-5-10', '0:10', 'Bows are good ranged weapons.'),
(3, 2, 'Bow', '20-30-10-5-10', '0:12', 'Bows are good ranged weapons.'),
(3, 3, 'Bow', '20-30-10-5-10', '0:8', 'Bows are good ranged weapons.'),
(4, 1, 'Crossbow', '30-40-15-10-20', '0:15', 'Crossbows are better than bows.'),
(4, 2, 'Crossbow', '30-40-15-10-20', '0:17', 'Crossbows are better than bows.'),
(4, 3, 'Crossbow', '30-40-15-10-20', '0:13', 'Crossbows are better than bows.'),
(5, 1, 'Leather armor', '30-15-10-15-15', '0:10', 'Leather armor offers minimum protection.'),
(5, 2, 'Leather armor', '30-15-10-15-15', '0:12', 'Leather armor offers minimum protection.'),
(5, 3, 'Leather armor', '30-15-10-15-15', '0:8', 'Leather armor offers minimum protection.'),
(6, 1, 'Chain armor', '40-15-15-30-20', '0:15', 'Chain armor offers medium protection.'),
(6, 2, 'Chain armor', '40-15-15-30-20', '0:17', 'Chain armor offers medium protection.'),
(6, 3, 'Chain armor', '40-15-15-30-20', '0:13', 'Chain armor offers medium protection.'),
(7, 1, 'Plate armor', '45-20-15-40-30', '0:20', 'Plate armor offers good protection.'),
(7, 2, 'Plate armor', '45-20-15-40-30', '0:22', 'Plate armor offers good protection.'),
(7, 3, 'Plate armor', '45-20-15-40-30', '0:18', 'Plate armor offers good protection.'),
(8, 1, 'Shield', '20-15-10-35-15', '0:5', 'Shields offer additional protection.'),
(8, 2, 'Shield', '20-15-10-35-15', '0:7', 'Shields offer additional protection.'),
(8, 3, 'Shield', '20-15-10-35-15', '0:3', 'Shields offer additional protection.'),
(9, 1, 'Horse', '50-35-20-20-40', '0:30', 'Horses are required for mounted troops.'),
(9, 2, 'Horse', '50-35-20-20-40', '0:32', 'Horses are required for mounted troops.'),
(9, 3, 'Horse', '50-35-20-20-40', '0:28', 'Horses are required for mounted troops.'),
(10, 1, '12 cannon', '100-50-60-150-80', '0:40', 'Cannons are required for warships.'),
(10, 2, '12 cannon', '100-50-60-150-80', '0:42', 'Cannons are required for warships.'),
(10, 3, '12 cannon', '100-50-60-150-80', '0:38', 'Cannons are required for warships.');

-- --------------------------------------------------------

--
-- Table structure for table `w_queue`
--

CREATE TABLE IF NOT EXISTS `w_queue` (
  `town` int(10) unsigned NOT NULL default '0',
  `dueTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `type` int(10) unsigned NOT NULL default '0',
  `quantity` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `Index_1` (`town`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w_queue`
--

