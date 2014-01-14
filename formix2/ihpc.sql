-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2014 at 06:57 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ihpc`
--
CREATE DATABASE IF NOT EXISTS `ihpc` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ihpc`;

-- --------------------------------------------------------

--
-- Table structure for table `disaster_db`
--

CREATE TABLE IF NOT EXISTS `disaster_db` (
  `ID` int(5) NOT NULL,
  `Type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `AlertLV` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `DateInfo` char(29) COLLATE utf8_unicode_ci NOT NULL,
  `Magnitude` float NOT NULL,
  `Depth` float NOT NULL,
  `Speed` float NOT NULL,
  `Lat` float NOT NULL,
  `Long` float NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE IF NOT EXISTS `input` (
  `inputid` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `Header` int(128) NOT NULL,
  `nodeName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `nodeType` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `cityName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CountryName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`inputid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=919 ;

--
-- Dumping data for table `input`
--

INSERT INTO `input` (`inputid`, `userID`, `Header`, `nodeName`, `nodeType`, `latitude`, `longitude`, `cityName`, `CountryName`, `Description`) VALUES
(753, 23, 168, 'Brussels', 'Distribution Centre', '50.83710098', '4.367599964', 'Brussels', 'Belgium', 'Brussels:Belgium'),
(754, 23, 2, 'Istanbul', 'Vendor Tier 2', '41.06600189', '29.0060997', 'Lanzhou', 'China', 'Lanzhou:China'),
(755, 23, 6, 'Hong Kong', 'Vendor Tier 1', '21.75', '115', 'Hong Kong', 'China', 'Hong Kong:China'),
(756, 23, 14, 'Chaling', 'Manufacturing Plant', '26.78129959', '113.5406036', 'Chaling', 'China', 'Chaling:China'),
(757, 23, 18, 'Taizhou', 'Manufacturing Plant', '28.57500076', '104.9091034', 'Taizhou', 'China', 'Taizhou:China'),
(758, 23, 164, 'Bordeaux', 'Distribution Centre', '44.84149933', '-0.599500001', 'Bordeaux', 'France', 'Bordeaux:France'),
(759, 23, 192, 'Lyon', 'Customer', '45.74710083', '4.855400085', 'Lyon', 'France', 'Lyon:France'),
(760, 23, 194, 'Marseille', 'Customer', '43.2845993', '5.385099888', 'Marseille', 'France', 'Marseille:France'),
(761, 23, 205, 'Paris', 'Customer', '48.88150024', '2.432800055', 'Paris', 'France', 'Paris:France'),
(762, 23, 213, ' Toulouse', 'Customer', '42.4530164', '-0.3275515', ' Toulouse', 'France', ' Toulouse:France'),
(763, 23, 159, 'Berlin', 'Distribution Centre', '52.5163002', '13.32759953', 'Berlin', 'Germany', 'Berlin:Germany'),
(764, 23, 163, 'Bonn', 'Distribution Centre', '50.73460007', '7.09980011', 'Bonn', 'Germany', 'Bonn:Germany'),
(765, 23, 166, 'Bremen', 'Distribution Centre', '53.08010101', '8.857600212', 'Bremen', 'Germany', 'Bremen:Germany'),
(766, 23, 179, 'Essen', 'Customer', '51.44964', '7.02052', 'Essen', 'Germany', 'Essen:Germany'),
(767, 23, 198, 'Munich', 'Customer', '51.21670151', '4.699999809', 'Munich', 'Germany', 'Munich:Germany'),
(768, 23, 167, 'Bristol', 'Distribution Centre', '51.46920013', '-2.539999962', 'Bristol', 'Great Britain', 'Bristol:Great Britain'),
(769, 23, 189, 'Liverpool', 'Customer', '53.42259979', '-2.970999956', 'Liverpool', 'Great Britain', 'Liverpool:Great Britain'),
(770, 23, 190, 'London', 'Customer', '51.48789978', '-0.178000003', 'London', 'Great Britain', 'London:Great Britain'),
(771, 23, 4, 'New Delhi', 'Vendor Tier 2', '28.56870079', '77.21679688', 'New Delhi', 'India', 'New Delhi:India'),
(772, 23, 8, 'Mumbai', 'Vendor Tier 1', '19.07740021', '72.82640076', 'Mumbai', 'India', 'Mumbai:India'),
(773, 23, 12, 'Bangalore', 'Manufacturing Plant', '12.97469997', '77.58769989', 'Bangalore', 'India', 'Bangalore:India'),
(774, 23, 16, 'Ludhiana', 'Manufacturing Plant', '30.90609932', '75.84680176', 'Ludhiana', 'India', 'Ludhiana:India'),
(775, 23, 178, 'Dublin', 'Customer', '53.34159851', '-6.2572999', 'Dublin', 'Ireland', 'Dublin:Ireland'),
(776, 23, 21, 'Milan', 'Assembly Plant', '45.47340012', '9.190500259', 'Milan', 'Italy', 'Milan:Italy'),
(777, 23, 162, 'Bologna', 'Distribution Centre', '44.52920151', '11.29580021', 'Bologna', 'Italy', 'Bologna:Italy'),
(778, 23, 180, 'Florenc', 'Customer', '43.7660545', '11.2501058', 'Florenc', 'Italy', 'Florenc:Italy'),
(779, 23, 212, 'Torino', 'Customer', '45.07490158', '7.666399956', 'Torino', 'Italy', 'Torino:Italy'),
(780, 23, 215, 'Verona', 'Customer', '45.43690109', '10.99289989', 'Verona', 'Italy', 'Verona:Italy'),
(781, 23, 7, 'Kuala Lumpur', 'Vendor Tier 1', '3.0990889', '101.6885736', 'Kuala Lumpur', 'Malaysia', 'Kuala Lumpur:Malaysia'),
(782, 23, 15, 'Juarez', 'Manufacturing Plant', '17.61919975', '-93.16049957', 'Juarez', 'Mexico', 'Juarez:Mexico'),
(783, 23, 17, 'Mexico City', 'Manufacturing Plant', '19.42700005', '-99.12760162', 'Mexico City', 'Mexico', 'Mexico City:Mexico'),
(784, 23, 22, 'Rotterdam', 'Assembly Plant', '51.92559814', '4.485199928', 'Rotterdam', 'Netherlands', 'Rotterdam:Netherlands'),
(785, 23, 153, 'Amsterdam', 'Distribution Centre', '52.3730011', '4.894800186', 'Amsterdam', 'Netherlands', 'Amsterdam:Netherlands'),
(786, 23, 154, 'Arnhem', 'Distribution Centre', '51.98839951', '5.9229002', 'Arnhem', 'Netherlands', 'Arnhem:Netherlands'),
(787, 23, 188, 'Lisbon', 'Customer', '38.4559021', '-9.122799873', 'Lisbon', 'Portugal', 'Lisbon:Portugal'),
(788, 23, 19, 'Barcelona', 'Assembly Plant', '41.3627016', '2.1093169', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(789, 23, 157, 'Barcelona', 'Distribution Centre', '41.35810089', '2.158600092', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(790, 23, 174, 'Cordoba', 'Customer', '37.88370132', '-4.77699995', 'Cordoba', 'Spain', 'Cordoba:Spain'),
(791, 23, 193, 'Madrid', 'Customer', '40.44219971', '-3.690999985', 'Madrid', 'Spain', 'Madrid:Spain'),
(792, 23, 158, 'Basel', 'Distribution Centre', '47.54700089', '7.576499939', 'Basel', 'Switzerland', 'Basel:Switzerland'),
(793, 23, 160, 'Bern', 'Distribution Centre', '46.94820023', '7.445700169', 'Bern', 'Switzerland', 'Bern:Switzerland'),
(794, 23, 13, 'Bangkok', 'Manufacturing Plant', '13.83329964', '100.4832993', 'Bangkok', 'Thailand', 'Bangkok:Thailand'),
(795, 23, 3, 'Lan Zhou', 'Vendor Tier 2', '36.061255', '103.834377', 'Istanbul', 'Turkey', 'Istanbul:Turkey'),
(796, 23, 20, 'Houston', 'Assembly Plant', '29.687525', '-95.273101', 'Houston', 'USA', 'Houston:USA'),
(797, 23, 155, 'Atlanta', 'Distribution Centre', '33.78422546', '-84.38647461', 'Atlanta', 'USA', 'Atlanta:USA'),
(798, 23, 156, 'Baltimore', 'Distribution Centre', '39.32189941', '-76.61840057', 'Baltimore', 'USA', 'Baltimore:USA'),
(799, 23, 161, 'Boise City', 'Distribution Centre', '36.72489929', '-102.5118027', 'Boise City', 'USA', 'Boise City:USA'),
(800, 23, 165, 'Boston', 'Distribution Centre', '42.37530136', '-71.1026001', 'Boston', 'USA', 'Boston:USA'),
(801, 23, 169, 'Buffalo', 'Customer', '42.89870071', '-78.8483963', 'Buffalo', 'USA', 'Buffalo:USA'),
(802, 23, 170, 'Charleston', 'Customer', '32.86109924', '-79.98210144', 'Charleston', 'USA', 'Charleston:USA'),
(803, 23, 171, 'Charlotte', 'Customer', '35.2057991', '-80.83570099', 'Charlotte', 'USA', 'Charlotte:USA'),
(804, 23, 172, 'Chicago', 'Customer', '41.82649994', '-87.64129639', 'Chicago', 'USA', 'Chicago:USA'),
(805, 23, 173, 'Cincinnati', 'Customer', '39.14799881', '-84.47699738', 'Cincinnati', 'USA', 'Cincinnati:USA'),
(806, 23, 175, 'Dallas', 'Customer', '32.76369858', '-96.66369629', 'Dallas', 'USA', 'Dallas:USA'),
(807, 23, 176, 'Denver', 'Customer', '39.57780075', '-105.0787964', 'Denver', 'USA', 'Denver:USA'),
(808, 23, 177, 'Detroit', 'Customer', '42.39429855', '-83.0789032', 'Detroit', 'USA', 'Detroit:USA'),
(809, 23, 181, 'Green Bay', 'Customer', '44.49860001', '-88.03780365', 'Green Bay', 'USA', 'Green Bay:USA'),
(810, 23, 182, 'Greenville', 'Customer', '34.84799957', '-82.41470337', 'Greenville', 'USA', 'Greenville:USA'),
(811, 23, 183, 'Houston', 'Customer', '29.77179909', '-95.40709686', 'Houston', 'USA', 'Houston:USA'),
(812, 23, 184, 'Iowa City', 'Customer', '41.65859985', '-91.52970123', 'Iowa City', 'USA', 'Iowa City:USA'),
(813, 23, 185, 'Kansas City', 'Customer', '38.99409866', '-94.62660217', 'Kansas City', 'USA', 'Kansas City:USA'),
(814, 23, 186, 'Las Vegas', 'Customer', '36.16159821', '-115.1542969', 'Las Vegas', 'USA', 'Las Vegas:USA'),
(815, 23, 187, 'Lexington', 'Customer', '37.77700043', '-79.44830322', 'Lexington', 'USA', 'Lexington:USA'),
(816, 23, 191, 'Los Angeles', 'Customer', '34.02220154', '-118.2440033', 'Los Angeles', 'USA', 'Los Angeles:USA'),
(817, 23, 195, 'Memphis', 'Customer', '35.11470032', '-90.00029755', 'Memphis', 'USA', 'Memphis:USA'),
(818, 23, 196, 'Miami', 'Customer', '25.83209991', '-80.27020264', 'Miami', 'USA', 'Miami:USA'),
(819, 23, 197, 'Minneapolis', 'Customer', '44.92419815', '-93.30780029', 'Minneapolis', 'USA', 'Minneapolis:USA'),
(820, 23, 199, 'Nashville', 'Customer', '36.14160156', '-86.8184967', 'Nashville', 'USA', 'Nashville:USA'),
(821, 23, 200, 'Newark', 'Customer', '40.72650146', '-74.39689636', 'Newark', 'USA', 'Newark:USA'),
(822, 23, 201, 'New Orleans', 'Customer', '29.95639992', '-90.09870148', 'New Orleans', 'USA', 'New Orleans:USA'),
(823, 23, 202, 'Norfolk', 'Customer', '36.87929916', '-76.26860046', 'Norfolk', 'USA', 'Norfolk:USA'),
(824, 23, 203, 'Omaha', 'Customer', '41.2521019', '-95.97859955', 'Omaha', 'USA', 'Omaha:USA'),
(825, 23, 204, 'Orlando', 'Customer', '28.60029984', '-81.36270142', 'Orlando', 'USA', 'Orlando:USA'),
(826, 23, 206, 'Phoenix', 'Customer', '33.370341', '-112.060537', 'Phoenix', 'USA', 'Phoenix:USA'),
(827, 23, 207, 'Pittsburgh', 'Customer', '40.49720001', '-79.99710083', 'Pittsburgh', 'USA', 'Pittsburgh:USA'),
(828, 23, 208, 'Reno', 'Customer', '39.52550125', '-119.7967987', 'Reno', 'USA', 'Reno:USA'),
(829, 23, 209, 'San Jose', 'Customer', '37.30810165', '-121.9465027', 'San Jose', 'USA', 'San Jose:USA'),
(830, 23, 210, 'Seattle', 'Customer', '47.5760994', '-122.6648026', 'Seattle', 'USA', 'Seattle:USA'),
(831, 23, 211, 'Spokane', 'Customer', '47.66960144', '-117.3944016', 'Spokane', 'USA', 'Spokane:USA'),
(832, 23, 214, 'Tulsa', 'Customer', '36.13209915', '-95.92990112', 'Tulsa', 'USA', 'Tulsa:USA'),
(833, 23, 216, 'Yuma', 'Customer', '32.7181015', '-114.6260986', 'Yuma', 'USA', 'Yuma:USA'),
(834, 23, 1, 'Ho Chi Minh', 'Vendor Tier 2', '10.660608', '106.61132', 'Ho Chi Minh', 'Vietnam', 'Ho Chi Minh:Vietnam'),
(835, 23, 5, 'Chiang Mai', 'Vendor Tier 1', '18.7964642', '98.6600586', 'Chiang Mai', 'Vietnam', 'Chiang Mai:Vietnam'),
(836, 23, 168, 'Brussels', 'Distribution Centre', '50.83710098', '4.367599964', 'Brussels', 'Belgium', 'Brussels:Belgium'),
(837, 23, 2, 'Istanbul', 'Vendor Tier 2', '41.06600189', '29.0060997', 'Lanzhou', 'China', 'Lanzhou:China'),
(838, 23, 6, 'Hong Kong', 'Vendor Tier 1', '21.75', '115', 'Hong Kong', 'China', 'Hong Kong:China'),
(839, 23, 14, 'Chaling', 'Manufacturing Plant', '26.78129959', '113.5406036', 'Chaling', 'China', 'Chaling:China'),
(840, 23, 18, 'Taizhou', 'Manufacturing Plant', '28.57500076', '104.9091034', 'Taizhou', 'China', 'Taizhou:China'),
(841, 23, 164, 'Bordeaux', 'Distribution Centre', '44.84149933', '-0.599500001', 'Bordeaux', 'France', 'Bordeaux:France'),
(842, 23, 192, 'Lyon', 'Customer', '45.74710083', '4.855400085', 'Lyon', 'France', 'Lyon:France'),
(843, 23, 194, 'Marseille', 'Customer', '43.2845993', '5.385099888', 'Marseille', 'France', 'Marseille:France'),
(844, 23, 205, 'Paris', 'Customer', '48.88150024', '2.432800055', 'Paris', 'France', 'Paris:France'),
(845, 23, 213, ' Toulouse', 'Customer', '42.4530164', '-0.3275515', ' Toulouse', 'France', ' Toulouse:France'),
(846, 23, 159, 'Berlin', 'Distribution Centre', '52.5163002', '13.32759953', 'Berlin', 'Germany', 'Berlin:Germany'),
(847, 23, 163, 'Bonn', 'Distribution Centre', '50.73460007', '7.09980011', 'Bonn', 'Germany', 'Bonn:Germany'),
(848, 23, 166, 'Bremen', 'Distribution Centre', '53.08010101', '8.857600212', 'Bremen', 'Germany', 'Bremen:Germany'),
(849, 23, 179, 'Essen', 'Customer', '51.44964', '7.02052', 'Essen', 'Germany', 'Essen:Germany'),
(850, 23, 198, 'Munich', 'Customer', '51.21670151', '4.699999809', 'Munich', 'Germany', 'Munich:Germany'),
(851, 23, 167, 'Bristol', 'Distribution Centre', '51.46920013', '-2.539999962', 'Bristol', 'Great Britain', 'Bristol:Great Britain'),
(852, 23, 189, 'Liverpool', 'Customer', '53.42259979', '-2.970999956', 'Liverpool', 'Great Britain', 'Liverpool:Great Britain'),
(853, 23, 190, 'London', 'Customer', '51.48789978', '-0.178000003', 'London', 'Great Britain', 'London:Great Britain'),
(854, 23, 4, 'New Delhi', 'Vendor Tier 2', '28.56870079', '77.21679688', 'New Delhi', 'India', 'New Delhi:India'),
(855, 23, 8, 'Mumbai', 'Vendor Tier 1', '19.07740021', '72.82640076', 'Mumbai', 'India', 'Mumbai:India'),
(856, 23, 12, 'Bangalore', 'Manufacturing Plant', '12.97469997', '77.58769989', 'Bangalore', 'India', 'Bangalore:India'),
(857, 23, 16, 'Ludhiana', 'Manufacturing Plant', '30.90609932', '75.84680176', 'Ludhiana', 'India', 'Ludhiana:India'),
(858, 23, 178, 'Dublin', 'Customer', '53.34159851', '-6.2572999', 'Dublin', 'Ireland', 'Dublin:Ireland'),
(859, 23, 21, 'Milan', 'Assembly Plant', '45.47340012', '9.190500259', 'Milan', 'Italy', 'Milan:Italy'),
(860, 23, 162, 'Bologna', 'Distribution Centre', '44.52920151', '11.29580021', 'Bologna', 'Italy', 'Bologna:Italy'),
(861, 23, 180, 'Florenc', 'Customer', '43.7660545', '11.2501058', 'Florenc', 'Italy', 'Florenc:Italy'),
(862, 23, 212, 'Torino', 'Customer', '45.07490158', '7.666399956', 'Torino', 'Italy', 'Torino:Italy'),
(863, 23, 215, 'Verona', 'Customer', '45.43690109', '10.99289989', 'Verona', 'Italy', 'Verona:Italy'),
(864, 23, 7, 'Kuala Lumpur', 'Vendor Tier 1', '3.0990889', '101.6885736', 'Kuala Lumpur', 'Malaysia', 'Kuala Lumpur:Malaysia'),
(865, 23, 15, 'Juarez', 'Manufacturing Plant', '17.61919975', '-93.16049957', 'Juarez', 'Mexico', 'Juarez:Mexico'),
(866, 23, 17, 'Mexico City', 'Manufacturing Plant', '19.42700005', '-99.12760162', 'Mexico City', 'Mexico', 'Mexico City:Mexico'),
(867, 23, 22, 'Rotterdam', 'Assembly Plant', '51.92559814', '4.485199928', 'Rotterdam', 'Netherlands', 'Rotterdam:Netherlands'),
(868, 23, 153, 'Amsterdam', 'Distribution Centre', '52.3730011', '4.894800186', 'Amsterdam', 'Netherlands', 'Amsterdam:Netherlands'),
(869, 23, 154, 'Arnhem', 'Distribution Centre', '51.98839951', '5.9229002', 'Arnhem', 'Netherlands', 'Arnhem:Netherlands'),
(870, 23, 188, 'Lisbon', 'Customer', '38.4559021', '-9.122799873', 'Lisbon', 'Portugal', 'Lisbon:Portugal'),
(871, 23, 19, 'Barcelona', 'Assembly Plant', '41.3627016', '2.1093169', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(872, 23, 157, 'Barcelona', 'Distribution Centre', '41.35810089', '2.158600092', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(873, 23, 174, 'Cordoba', 'Customer', '37.88370132', '-4.77699995', 'Cordoba', 'Spain', 'Cordoba:Spain'),
(874, 23, 193, 'Madrid', 'Customer', '40.44219971', '-3.690999985', 'Madrid', 'Spain', 'Madrid:Spain'),
(875, 23, 158, 'Basel', 'Distribution Centre', '47.54700089', '7.576499939', 'Basel', 'Switzerland', 'Basel:Switzerland'),
(876, 23, 160, 'Bern', 'Distribution Centre', '46.94820023', '7.445700169', 'Bern', 'Switzerland', 'Bern:Switzerland'),
(877, 23, 13, 'Bangkok', 'Manufacturing Plant', '13.83329964', '100.4832993', 'Bangkok', 'Thailand', 'Bangkok:Thailand'),
(878, 23, 3, 'Lan Zhou', 'Vendor Tier 2', '36.061255', '103.834377', 'Istanbul', 'Turkey', 'Istanbul:Turkey'),
(879, 23, 20, 'Houston', 'Assembly Plant', '29.687525', '-95.273101', 'Houston', 'USA', 'Houston:USA'),
(880, 23, 155, 'Atlanta', 'Distribution Centre', '33.78422546', '-84.38647461', 'Atlanta', 'USA', 'Atlanta:USA'),
(881, 23, 156, 'Baltimore', 'Distribution Centre', '39.32189941', '-76.61840057', 'Baltimore', 'USA', 'Baltimore:USA'),
(882, 23, 161, 'Boise City', 'Distribution Centre', '36.72489929', '-102.5118027', 'Boise City', 'USA', 'Boise City:USA'),
(883, 23, 165, 'Boston', 'Distribution Centre', '42.37530136', '-71.1026001', 'Boston', 'USA', 'Boston:USA'),
(884, 23, 169, 'Buffalo', 'Customer', '42.89870071', '-78.8483963', 'Buffalo', 'USA', 'Buffalo:USA'),
(885, 23, 170, 'Charleston', 'Customer', '32.86109924', '-79.98210144', 'Charleston', 'USA', 'Charleston:USA'),
(886, 23, 171, 'Charlotte', 'Customer', '35.2057991', '-80.83570099', 'Charlotte', 'USA', 'Charlotte:USA'),
(887, 23, 172, 'Chicago', 'Customer', '41.82649994', '-87.64129639', 'Chicago', 'USA', 'Chicago:USA'),
(888, 23, 173, 'Cincinnati', 'Customer', '39.14799881', '-84.47699738', 'Cincinnati', 'USA', 'Cincinnati:USA'),
(889, 23, 175, 'Dallas', 'Customer', '32.76369858', '-96.66369629', 'Dallas', 'USA', 'Dallas:USA'),
(890, 23, 176, 'Denver', 'Customer', '39.57780075', '-105.0787964', 'Denver', 'USA', 'Denver:USA'),
(891, 23, 177, 'Detroit', 'Customer', '42.39429855', '-83.0789032', 'Detroit', 'USA', 'Detroit:USA'),
(892, 23, 181, 'Green Bay', 'Customer', '44.49860001', '-88.03780365', 'Green Bay', 'USA', 'Green Bay:USA'),
(893, 23, 182, 'Greenville', 'Customer', '34.84799957', '-82.41470337', 'Greenville', 'USA', 'Greenville:USA'),
(894, 23, 183, 'Houston', 'Customer', '29.77179909', '-95.40709686', 'Houston', 'USA', 'Houston:USA'),
(895, 23, 184, 'Iowa City', 'Customer', '41.65859985', '-91.52970123', 'Iowa City', 'USA', 'Iowa City:USA'),
(896, 23, 185, 'Kansas City', 'Customer', '38.99409866', '-94.62660217', 'Kansas City', 'USA', 'Kansas City:USA'),
(897, 23, 186, 'Las Vegas', 'Customer', '36.16159821', '-115.1542969', 'Las Vegas', 'USA', 'Las Vegas:USA'),
(898, 23, 187, 'Lexington', 'Customer', '37.77700043', '-79.44830322', 'Lexington', 'USA', 'Lexington:USA'),
(899, 23, 191, 'Los Angeles', 'Customer', '34.02220154', '-118.2440033', 'Los Angeles', 'USA', 'Los Angeles:USA'),
(900, 23, 195, 'Memphis', 'Customer', '35.11470032', '-90.00029755', 'Memphis', 'USA', 'Memphis:USA'),
(901, 23, 196, 'Miami', 'Customer', '25.83209991', '-80.27020264', 'Miami', 'USA', 'Miami:USA'),
(902, 23, 197, 'Minneapolis', 'Customer', '44.92419815', '-93.30780029', 'Minneapolis', 'USA', 'Minneapolis:USA'),
(903, 23, 199, 'Nashville', 'Customer', '36.14160156', '-86.8184967', 'Nashville', 'USA', 'Nashville:USA'),
(904, 23, 200, 'Newark', 'Customer', '40.72650146', '-74.39689636', 'Newark', 'USA', 'Newark:USA'),
(905, 23, 201, 'New Orleans', 'Customer', '29.95639992', '-90.09870148', 'New Orleans', 'USA', 'New Orleans:USA'),
(906, 23, 202, 'Norfolk', 'Customer', '36.87929916', '-76.26860046', 'Norfolk', 'USA', 'Norfolk:USA'),
(907, 23, 203, 'Omaha', 'Customer', '41.2521019', '-95.97859955', 'Omaha', 'USA', 'Omaha:USA'),
(908, 23, 204, 'Orlando', 'Customer', '28.60029984', '-81.36270142', 'Orlando', 'USA', 'Orlando:USA'),
(909, 23, 206, 'Phoenix', 'Customer', '33.370341', '-112.060537', 'Phoenix', 'USA', 'Phoenix:USA'),
(910, 23, 207, 'Pittsburgh', 'Customer', '40.49720001', '-79.99710083', 'Pittsburgh', 'USA', 'Pittsburgh:USA'),
(911, 23, 208, 'Reno', 'Customer', '39.52550125', '-119.7967987', 'Reno', 'USA', 'Reno:USA'),
(912, 23, 209, 'San Jose', 'Customer', '37.30810165', '-121.9465027', 'San Jose', 'USA', 'San Jose:USA'),
(913, 23, 210, 'Seattle', 'Customer', '47.5760994', '-122.6648026', 'Seattle', 'USA', 'Seattle:USA'),
(914, 23, 211, 'Spokane', 'Customer', '47.66960144', '-117.3944016', 'Spokane', 'USA', 'Spokane:USA'),
(915, 23, 214, 'Tulsa', 'Customer', '36.13209915', '-95.92990112', 'Tulsa', 'USA', 'Tulsa:USA'),
(916, 23, 216, 'Yuma', 'Customer', '32.7181015', '-114.6260986', 'Yuma', 'USA', 'Yuma:USA'),
(917, 23, 1, 'Ho Chi Minh', 'Vendor Tier 2', '10.660608', '106.61132', 'Ho Chi Minh', 'Vietnam', 'Ho Chi Minh:Vietnam'),
(918, 23, 5, 'Chiang Mai', 'Vendor Tier 1', '18.7964642', '98.6600586', 'Chiang Mai', 'Vietnam', 'Chiang Mai:Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `member_system`
--

CREATE TABLE IF NOT EXISTS `member_system` (
  `userID` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `member_system`
--

INSERT INTO `member_system` (`userID`, `username`, `password`, `email`) VALUES
(23, 'testuser', '5d9c68c6c50ed3d02a2fcf54f63993b6', '1234'),
(25, '1234', '81dc9bdb52d04dc20036dbd8313ed055', 'aaaaaa@dfdfdf');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
