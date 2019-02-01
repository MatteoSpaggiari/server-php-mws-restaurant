-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Feb 01, 2019 alle 14:28
-- Versione del server: 5.7.11
-- Versione PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mws_restaurant`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `neighborhood` varchar(150) NOT NULL,
  `photograph_maxw` varchar(150) NOT NULL,
  `photograph_1x` varchar(150) NOT NULL,
  `photograph_2x` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `latlng` varchar(150) NOT NULL,
  `cuisine_type` varchar(150) NOT NULL,
  `operating_hours` varchar(1024) NOT NULL,
  `createdAt` varchar(150) NOT NULL,
  `updatedAt` varchar(250) NOT NULL,
  `is_favorite` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `neighborhood`, `photograph_maxw`, `photograph_1x`, `photograph_2x`, `address`, `latlng`, `cuisine_type`, `operating_hours`, `createdAt`, `updatedAt`, `is_favorite`) VALUES
(1, 'Mission Chinese Food', 'Manhattan', '1.jpg', '1_300w_1x.jpg', '1_600w_2x.jpg', '171 E Broadway, New York, NY 10002', '"lat": 40.713829,"lng": -73.989667', 'Asian', '"Monday": "5:30 pm - 11:00 pm","Tuesday": "5:30 pm - 11:00 pm","Wednesday": "5:30 pm - 11:00 pm","Thursday": "5:30 pm - 11:00 pm","Friday": "5:30 pm - 11:00 pm","Saturday": "12:00 pm - 4:00 pm / 5:30 pm - 12:00 am","Sunday": "12:00 pm - 4:00 pm / 5:30 pm - 11:00 pm"', '1504095563444', '2018-07-15T14:47:44.083Z', 'true'),
(2, 'Emily', 'Brooklyn', '2.jpg', '2_300w_1x.jpg', '2_600w_2x.jpg', '919 Fulton St, Brooklyn, NY 11238', '"lat": 40.683555,"lng": -73.966393', 'Pizza', '"Monday": "5:30 pm - 11:00 pm","Tuesday": "5:30 pm - 11:00 pm","Wednesday": "5:30 pm - 11:00 pm","Thursday": "5:30 pm - 11:00 pm","Friday": "5:30 pm - 11:00 pm","Saturday": "5:00 pm - 11:30 pm","Sunday": "12:00 pm - 3:00 pm / 5:00 pm - 11:00 pm"', '1504095568414', '2018-07-15T14:47:44.089Z', 'true'),
(3, 'Kang Ho Dong Baekjeong', 'Manhattan', '3.jpg', '3_300w_1x.jpg', '3_600w_2x.jpg', '1 E 32nd St, New York, NY 10016', '"lat": 40.747143,"lng": -73.985414', 'Asian', '"Monday": "11:30 am - 2:00 am","Tuesday": "11:30 am - 2:00 am","Wednesday": "11:30 am - 2:00 am","Thursday": "11:30 am - 2:00 am","Friday": "11:30 am - 6:00 am","Saturday": "11:30 am - 6:00 am","Sunday": "11:30 am - 2:00 am"', '1504095571434', '2018-07-15T14:47:44.093Z', 'true'),
(4, 'Katz\'s Delicatessen', 'Manhattan', '4.jpg', '4_300w_1x.jpg', '4_600w_2x.jpg', '205 E Houston St, New York, NY 10002', '"lat": 40.722216,"lng": -73.987501', 'American', '"Monday": "8:00 am - 10:30 pm","Tuesday": "8:00 am - 10:30 pm","Wednesday": "8:00 am - 10:30 pm","Thursday": "8:00 am - 2:30 am","Friday": "8:00 am - Sat","Saturday": "Open 24 hours","Sunday": "Sat - 10:30 pm"', '1504095567091', '2018-07-08T13:04:03.527Z', 'false'),
(5, 'Roberta\'s Pizza', 'Brooklyn', '5.jpg', '5_300w_1x.jpg', '5_600w_2x.jpg', '261 Moore St, Brooklyn, NY 11206', '"lat": 40.705089,"lng": -73.933585', 'Pizza', '"Monday": "11:00 am - 12:00 am","Tuesday": "11:00 am - 12:00 am","Wednesday": "11:00 am - 12:00 am","Thursday": "11:00 am - 12:00 am","Friday": "11:00 am - 12:00 am","Saturday": "10:00 am - 12:00 am","Sunday": "10:00 am - 12:00 am"', '1504095567071', '2018-07-08T14:05:04.674Z', 'true'),
(6, 'Hometown BBQ', 'Brooklyn', '6.jpg', '6_300w_1x.jpg', '6_600w_2x.jpg', '454 Van Brunt St, Brooklyn, NY 11231', '"lat": 40.674925,"lng": -74.016162', 'American', '"Monday": "Closed","Tuesday": "12:00 pm - 10:00 pm","Wednesday": "12:00 pm - 10:00 pm","Thursday": "12:00 pm - 10:00 pm","Friday": "12:00 pm - 11:00 pm","Saturday": "12:00 pm - 11:00 pm","Sunday": "12:00 pm - 9:00 pm"', '1504095567071', '2018-07-15T09:59:48.920Z', 'false'),
(7, 'Superiority Burger', 'Manhattan', '7.jpg', '7_300w_1x.jpg', '7_600w_2x.jpg', '430 E 9th St, New York, NY 10009', '"lat": 40.727397,"lng": -73.983645', 'American', '"Monday": "11:30 am - 10:00 pm","Tuesday": "Closed","Wednesday": "11:30 am - 10:00 pm","Thursday": "11:30 am - 10:00 pm","Friday": "11:30 am - 10:00 pm","Saturday": "11:30 am - 10:00 pm","Sunday": "11:30 am - 10:00 pm"', '1504095567091', '2018-07-09T07:18:14.707Z', 'true'),
(8, 'The Dutch', 'Manhattan', '8.jpg', '8_300w_1x.jpg', '8_600w_2x.jpg', '131 Sullivan St, New York, NY 10012', '"lat": 40.726584,"lng": -74.002082', 'American', '"Monday": "11:30 am - 3:00 pm / 5:30 pm - 11:00 pm","Tuesday": "11:30 am - 3:00 pm / 5:30 pm - 11:00 pm","Wednesday": "11:30 am - 3:00 pm / 5:30 pm - 11:00 pm","Thursday": "11:30 am - 3:00 pm / 5:30 pm - 11:00 pm","Friday": "11:30 am - 3:00 pm / 5:30 pm - 11:30 pm","Saturday": "10:00 am - 3:00 pm / 5:30 pm - 11:30 pm","Sunday": "10:00 am - 3:00 pm / 5:30 pm - 11:00 pm"', '1504095567091', '2018-07-09T07:18:14.710Z', 'false'),
(9, 'Mu Ramen', 'Queens', '9.jpg', '9_300w_1x.jpg', '9_600w_2x.jpg', '1209 Jackson Ave, Queens, NY 11101', '"lat": 40.743797,"lng": -73.950652', 'Asian', '"Monday": "5:00 pm - 10:00 pm","Tuesday": "5:00 pm - 10:00 pm","Wednesday": "5:00 pm - 10:00 pm","Thursday": "5:00 pm - 10:00 pm","Friday": "5:00 pm - 11:00 pm","Saturday": "5:00 pm - 11:00 pm","Sunday": "5:00 pm - 10:00 pm"', '1504095567191', '2018-07-09T07:18:14.717Z', 'false'),
(10, 'Casa Enrique', 'Queens', '10.jpg', '10_300w_1x.jpg', '10_600w_2x.jpg', '5-48 49th Ave, Queens, NY 11101', '"lat": 40.743394,"lng": -73.954235', 'Mexican', '"Monday": "5:00 pm - 12:00 am","Tuesday": "5:00 pm - 12:00 am","Wednesday": "5:00 pm - 12:00 am","Thursday": "5:00 pm - 12:00 am","Friday": "5:00 pm - 12:00 am","Saturday": "11:00 am - 12:00 am","Sunday": "11:00 am - 12:00 am"', '1504095567183', '1504095567183', 'true');

-- --------------------------------------------------------

--
-- Struttura della tabella `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `createdAt` varchar(150) NOT NULL,
  `updatedAt` varchar(150) NOT NULL,
  `rating` smallint(6) NOT NULL,
  `comments` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `reviews`
--

INSERT INTO `reviews` (`id`, `restaurant_id`, `name`, `createdAt`, `updatedAt`, `rating`, `comments`) VALUES
(1, 1, 'Steve', '1504095567183', '1504095567183', 4, 'Mission Chinese Food has grown up from its scrappy Orchard Street days into a big, two story restaurant equipped with a pizza oven, a prime rib cart, and a much broader menu. Yes, it still has all the hits â€” the kung pao pastrami, the thrice cooked bacon â€”but chef/proprietor Danny Bowien and executive chef Angela Dimayuga have also added a raw bar, two generous family-style set menus, and showstoppers like duck baked in clay. And you can still get a lot of food without breaking the bank.'),
(2, 1, 'Morgan', '1504095567183', '1504095567183', 4, 'This place is a blast. Must orders: GREEN TEA NOODS, sounds gross (to me at least) but these were incredible!, Kung pao pastrami (but you already knew that), beef tartare was a fun appetizer that we decided to try, the spicy ma po tofu SUPER spicy but delicous, egg rolls and scallion pancake i could have passed on... I wish we would have gone with a larger group, so much more I would have liked to try!'),
(3, 1, 'Jason', '1504095567183', '1504095567183', 3, 'I was VERY excited to come here after seeing and hearing so many good things about this place. Having read much, I knew going into it that it was not going to be authentic Chinese. The place was edgy, had a punk rock throwback attitude, and generally delivered the desired atmosphere. Things went downhill from there though. The food was okay at best and the best qualities were easily overshadowed by what I believe to be poor decisions by the kitchen staff.'),
(4, 2, 'Steph', '1545217703000', '1545217703000', 4, 'Five star food, two star atmosphere. I would definitely get takeout from this place - but dont think I have the energy to deal with the hipster ridiculousness again. By the time we left the wait was two hours long.'),
(36, 3, 'Steve', '1549031236000', '1549031236000', 4, 'The tables at this 32nd Street favorite are outfitted with grills for cooking short ribs, brisket, beef tongue, rib eye, and pork jowl. The banchan plates are uniformly good, and Deuki Hongâ€™s menu also includes winning dishes like stir-fried squid noodles, kimchi stew, and seafood pancakes. If itâ€™s available, make sure to order the kimchi and rice â€œlunchbox.â€ Baekjeong is a great place for large groups and birthday parties.');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
