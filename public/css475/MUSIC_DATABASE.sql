-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 03, 2016 at 02:04 AM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `MUSIC_DATABASE`
--

-- --------------------------------------------------------
--
-- Table structure for table `ALBUM`
--

CREATE TABLE `ALBUM` (
  `albumName` varchar(50) NOT NULL,
  `albumNo` char(9) NOT NULL,
  `artistNo` char(9) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ALBUM`
--

INSERT INTO `ALBUM` (`albumName`, `albumNo`, `artistNo`, `year`) VALUES
('In My Feelings', '1', '10', 2015),
('Malibu', '10', '77', 2015),
('Brilliant Sanity', '100', '11', 2016),
('The Casket Factory', '11', '14', 2015),
('Pawn Shop', '12', '10', 2015),
('Greatful', '13', '74', 2015),
('Not to Disappear', '14', '50', 2015),
('Cuzznz', '15', '50', 2015),
('Its About Time', '16', '2', 2015),
('Church Clothes 3', '17', '4', 2015),
('Death of a Bachelor', '18', '52', 2015),
('Nothing Shines Like Neon', '19', '35', 2015),
('Blackstar', '2', '1', 2015),
('The Long Way Home', '20', '63', 2015),
('Anarchytecture', '21', '32', 2015),
('One Night in Indy', '22', '12', 2015),
('Jesu/Sun Kil Moon', '23', '44', 2015),
('Each Other', '24', '55', 2015),
('Debutante', '25', '75', 2015),
('Moth', '26', '85', 2015),
('The Boop-A-Doo', '27', '80', 2015),
('Original Machines', '28', '75', 2015),
('New View', '29', '74', 2015),
('Wildfire', '3', '51', 2015),
('Information', '30', '24', 2015),
('Perfect', '31', '23', 2015),
('Gamble for a Rose', '32', '38', 2015),
('Dystopia', '33', '57', 2015),
('Curve of the Earth', '34', '24', 2015),
('Bloom', '35', '27', 2015),
('We Come Apart', '36', '28', 2015),
('Night Thoughts', '37', '84', 2015),
('The Waiting Room', '38', '81', 2015),
('The Catastrophist', '39', '80', 2015),
('Leave Me Alone', '4', '10', 2015),
('Skilled Mechanics', '40', '61', 2015),
('Anti', '41', '63', 2015),
('Ritual Spirit', '42', '64', 2015),
('New City Blues', '43', '75', 2015),
('Ghostlights', '44', '77', 2015),
('Memento', '45', '7', 2015),
('Promise Everything', '46', '21', 2015),
('Hymns', '47', '34', 2015),
('Earthbound', '48', '45', 2015),
('Bridges', '49', '64', 2015),
('A War Against You', '5', '6', 2015),
('Nine Track Mind', '50', '78', 2015),
('The Astonishing', '51', '85', 2016),
('American Appetite', '52', '90', 2016),
('Islah', '53', '32', 2016),
('The 1984 Suite', '54', '32', 2016),
('Suicide Songs', '55', '34', 2016),
('This Is Acting', '56', '54', 2016),
('Matter', '57', '7', 2016),
('Let Me Get By', '58', '57', 2016),
('Lost Property', '59', '8', 2016),
('Keep Up', '6', '62', 2015),
('Dont You', '60', '9', 2016),
('10 Ways to Steal Home Plate', '61', '5', 2016),
('Sensuous Chill', '62', '1', 2016),
('Made Series', '63', '32', 2016),
('Songs for the Late Night Drive Home', '64', '33', 2016),
('The Driver', '65', '45', 2016),
('Is the Is Are', '66', '84', 2016),
('Wonderful Crazy Night', '67', '47', 2016),
('Opus', '68', '48', 2016),
('All I Need', '69', '49', 2016),
('Joytime', '7', '67', 2015),
('Holding Patterns', '70', '45', 2016),
('Begin', '71', '43', 2016),
('Majid Jordan', '72', '23', 2016),
('Good Advice', '73', '53', 2016),
('Life Screams', '74', '56', 2016),
('My Wild West', '75', '59', 2016),
('Painting With', '76', '57', 2016),
('Night Swim', '77', '32', 2016),
('Heavy Crown', '78', '31', 2016),
('Victorious', '79', '34', 2016),
('Big World', '8', '44', 2015),
('Day One', '80', '35', 2016),
('Protection', '81', '53', 2016),
('Warrior Sound', '82', '58', 2016),
('A Man Alive', '83', '59', 2016),
('After Party', '84', '64', 2016),
('Us and the Night', '85', '66', 2016),
('Limitless', '86', '66', 2016),
('Have It All', '87', '63', 2016),
('Painkillers', '88', '58', 2016),
('Second Love', '89', '83', 2016),
('Where Have You Been All My Life?', '9', '74', 2015),
('Chaosmosis', '90', '53', 2016),
('Beautiful Lies', '91', '52', 2016),
('This Is Your Brain on Love', '92', '53', 2016),
('Mind of Mine', '93', '34', 2016),
('The Follower', '94', '47', 2016),
('Lukas Graham', '95', '82', 2016),
('Velvet Portraits', '96', '53', 2016),
('Red Flag', '97', '47', 2016),
('Man About Town', '98', '75', 2016),
('Love Streams', '99', '43', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `ARTIST`
--

CREATE TABLE `ARTIST` (
  `artistName` varchar(30) NOT NULL,
  `artistNo` char(9) NOT NULL,
  `labelID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ARTIST`
--

INSERT INTO `ARTIST` (`artistName`, `artistNo`, `labelID`) VALUES
('Adele', '1', '10'),
('Shawn Mendes', '10', '24'),
('Yatindra', '100', '14'),
('Meghan Trainor', '11', '23'),
('Sia', '12', '52'),
('DNCE', '13', '34'),
('Selena Gomez', '14', '44'),
('Bryson Tiller', '15', '12'),
('Charlie Puth', '16', '53'),
('Mike Posner', '17', '52'),
('Future', '18', '47'),
('Calvin Harris', '19', '85'),
('Justin Bieber', '2', '1'),
('Beyoncé', '20', '86'),
('Florida Georgia Line', '21', '88'),
('Flo Rida', '22', '88'),
('Major Lazer', '23', '65'),
('Fetty Wap', '24', '54'),
('Alessia Cara', '25', '62'),
('DJ Khaled', '26', '42'),
('DJ Snake', '27', '41'),
('Kevin Gates', '28', '43'),
('Justin Timberlake', '29', '42'),
('Drake', '3', '2'),
('Tory Lanez', '30', '43'),
('G-Eazy', '31', '47'),
('Daya', '32', '46'),
('Coldplay', '33', '55'),
('Thomas Rhett', '34', '11'),
('P!nk', '35', '11'),
('Zayn Malik', '36', '12'),
('James Bay', '37', '23'),
('Luke Bryan', '38', '54'),
('Gnash', '39', '47'),
('Twenty One Pilots', '4', '10'),
('Zara Larsson', '40', '85'),
('Jeremih', '41', '96'),
('D.R.A.M.', '42', '52'),
('Kiiara', '43', '13'),
('Lukas Graham', '44', '53'),
('Kanye West', '45', '52'),
('Flume', '46', '27'),
('Dierks Bentley', '47', '58'),
('X Ambassadors', '48', '54'),
('Kent Jones', '49', '53'),
('The Chainsmokers', '5', '3'),
('Cole Swindell', '50', '23'),
('Keith Urban', '51', '33'),
('Yo Gotti', '52', '63'),
('Taylor Swift', '53', '96'),
('Young Thug', '54', '2'),
('Nick Jonas', '55', '8'),
('Sam Hunt', '56', '7'),
('Carrie Underwood', '57', '6'),
('Blake Shelton', '58', '3'),
('Jason Aldean', '59', '4'),
('Rihanna', '6', '3'),
('Chris Brown', '60', '22'),
('Ruth B', '61', '33'),
('Tim McGraw', '62', '24'),
('Post Malone', '63', '27'),
('Kenny Chesney', '64', '28'),
('Kelsea Ballerini', '65', '47'),
('Ellie Goulding', '66', '41'),
('Lil Wayne', '67', '12'),
('Old Dominion', '68', '43'),
('Hailee Steinfeld', '69', '42'),
('The Weeknd', '7', '14'),
('Prince', '70', '44'),
('Elle King', '71', '89'),
('O.T. Genasis', '72', '95'),
('Fat Joe', '73', '86'),
('Rae Sremmurd', '74', '93'),
('Travis Scott', '75', '53'),
('Usher', '76', '86'),
('Maren Morris', '77', '89'),
('Rachel Platten', '78', '87'),
('Brett Eldredge', '79', '77'),
('Ariana Grande', '8', '52'),
('Wiz Khalifa', '80', '66'),
('Disturbed', '81', '24'),
('Martin Garrix', '82', '10'),
('Young M', '83', '5'),
('Chris Young', '84', '7'),
('Eric Church', '85', '7'),
('One Direction', '86', '8'),
('Chance the Rapper', '87', '9'),
('Demi Lovato', '88', '33'),
('Robin Schulz', '89', '34'),
('Desiigner', '9', '24'),
('Miranda Lambert', '90', '52'),
('John Smith', '91', '39'),
('Jojo Tamble', '92', '18'),
('Meria', '93', '56'),
('Lissa Johnson', '94', '34'),
('Aadhira', '95', '74'),
('Aakarshan', '96', '75'),
('Zubhatmaka', '97', '23'),
('Zubin', '98', '16'),
('Zuhair', '99', '19');

-- --------------------------------------------------------

--
-- Table structure for table `LABEL`
--

CREATE TABLE `LABEL` (
  `labelName` varchar(30) NOT NULL,
  `labelID` varchar(10) NOT NULL,
  `artistsSigned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LABEL`
--

INSERT INTO `LABEL` (`labelName`, `labelID`, `artistsSigned`) VALUES
('Strange Music', '1', 10),
('Roc-La-Familia', '10', 10),
('Tee Productions', '100', 10),
('G-Unit Records', '101', 10),
('Head Start Music Group', '102', 10),
('OFWGKTA', '11', 10),
('Ice Age Entertainment', '12', 10),
('Hades Records', '13', 10),
('Subzero Records', '14', 10),
('Up Above Records', '15', 10),
('Star Trak Entertainment', '16', 10),
('Shady Records', '17', 10),
('Uncle Howie Records', '18', 10),
('Slip-N-Slide Records', '19', 10),
('Rock Bottom Entertainment', '2', 10),
('Sleeping Bag Records', '20', 10),
('Kon Live Distribution', '21', 10),
('Streetsweepers Entertainment', '22', 10),
('Cooking Vinyl', '23', 10),
('Rap-A-Lot Records', '24', 10),
('Hefty Records', '25', 10),
('Interscope Records', '26', 10),
('OVO Sound', '27', 10),
('Obese Records', '28', 10),
('Roc-A-Fella Records', '29', 10),
('Street Records Corporation', '3', 10),
('UTP Records', '30', 10),
('Ill Will Records', '31', 10),
('Trend Records', '32', 10),
('Barsuk', '33', 10),
('One Records', '34', 10),
('Unidisc Music Inc.', '35', 10),
('Shonuff Records', '36', 10),
('Uptown Records', '37', 10),
('Thizz Entertainment', '38', 10),
('Rawkus Records', '39', 10),
('Quannum Projects', '4', 10),
('Selfmade Records', '40', 10),
('S. Carter Records', '41', 10),
('Hydra Entertainment', '42', 10),
('Racetrack Records', '43', 10),
('Strange Famous Records', '44', 10),
('Kross Over Entertainment', '45', 10),
('Infinity Records', '46', 10),
('Tokyo Dawn Records', '47', 10),
('Street Sounds', '48', 10),
('Unda K9 Records', '49', 10),
('The Ultimate Group', '5', 10),
('Sin City Sounds', '50', 10),
('SRC Records', '51', 10),
('QN5', '52', 10),
('Roc Nation', '53', 10),
('Siri Music', '54', 10),
('Duck Down Records', '55', 10),
('Tan Cressida', '56', 10),
('Smoke-A-Lot Records', '57', 10),
('Remedy Records', '58', 10),
('SoBe Entertainment', '59', 10),
('Re-Up Records', '6', 10),
('Top Dawg Entertainment', '60', 10),
('Doggystyle Records', '61', 10),
('Trill Entertainment', '62', 10),
('Ogopa DJs', '63', 10),
('Dame Dash Music Group', '64', 10),
('Sub Verse Music', '65', 10),
('Charly Records', '66', 10),
('Sniper Records', '67', 10),
('Rekabet Records', '68', 10),
('UpFront Records', '69', 10),
('URBNET Records', '7', 10),
('Konvict Muzik', '70', 10),
('Reach Records', '71', 10),
('Rhythm King', '72', 10),
('Def Jam South', '73', 10),
('Relentless', '74', 10),
('Tres Records', '75', 10),
('Stones Throw Records', '76', 10),
('Dunk Yer Funk Records', '77', 10),
('Hollywood BASIC', '78', 10),
('Hidden Beach Recordings', '79', 10),
('Blix Street Records', '8', 10),
('Hypnotize Minds', '80', 10),
('Funk Volume', '81', 10),
('Kennis Music', '82', 10),
('D-Block Records', '83', 10),
('Freebandz', '84', 10),
('D.P.G. Recordz', '85', 10),
('Ruthless Records', '86', 10),
('Thump Records', '87', 10),
('KFM Records', '88', 10),
('United Naxal Records', '89', 10),
('Tommy Boy Records', '9', 10),
('Tuff City Records', '90', 10),
('Oxygen Music Works', '91', 10),
('Swishahouse', '92', 10),
('A&M Records', '93', 10),
('Sugar Hill Records', '94', 10),
('Charnel Music', '95', 10),
('Uncensored Records', '96', 10),
('Select Records', '97', 10),
('Rhymesayers Entertainment', '98', 10),
('Doomtree', '99', 10);

-- --------------------------------------------------------

--
-- Table structure for table `MUSIC_VIDEO`
--

CREATE TABLE `MUSIC_VIDEO` (
  `songID` char(9) NOT NULL,
  `dateShot` date NOT NULL,
  `dateReleased` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MUSIC_VIDEO`
--

INSERT INTO `MUSIC_VIDEO` (`songID`, `dateShot`, `dateReleased`) VALUES
('1', '2015-12-30', '2015-12-31'),
('2', '2015-12-30', '2015-12-31'),
('3', '2015-12-30', '2015-12-31'),
('4', '2015-12-30', '2015-12-31'),
('5', '2015-12-30', '2015-12-31'),
('6', '2015-12-30', '2015-12-31'),
('7', '2015-12-30', '2015-12-31'),
('8', '2015-12-30', '2015-12-31'),
('9', '2015-12-30', '2015-12-31'),
('10', '2015-12-30', '2015-12-31'),
('11', '2015-12-30', '2015-12-31'),
('12', '2015-12-30', '2015-12-31'),
('13', '2015-12-30', '2015-12-31'),
('14', '2015-12-30', '2015-12-31'),
('15', '2015-12-30', '2015-12-31'),
('16', '2015-12-30', '2015-12-31'),
('17', '2015-12-30', '2015-12-31'),
('18', '2015-12-30', '2015-12-31'),
('19', '2015-12-30', '2015-12-31'),
('20', '2015-12-30', '2015-12-31'),
('21', '2015-12-30', '2015-12-31'),
('22', '2015-12-30', '2015-12-31'),
('23', '2015-12-30', '2015-12-31'),
('24', '2015-12-30', '2015-12-31'),
('25', '2015-12-30', '2015-12-31'),
('26', '2015-12-30', '2015-12-31'),
('27', '2015-12-30', '2015-12-31'),
('28', '2015-12-30', '2015-12-31'),
('29', '2015-12-30', '2015-12-31'),
('30', '2015-12-30', '2015-12-31'),
('31', '2015-12-30', '2015-12-31'),
('32', '2015-12-30', '2015-12-31'),
('33', '2015-12-30', '2015-12-31'),
('34', '2015-12-30', '2015-12-31'),
('35', '2015-12-30', '2015-12-31'),
('36', '2015-12-30', '2015-12-31'),
('37', '2015-12-30', '2015-12-31'),
('38', '2015-12-30', '2015-12-31'),
('39', '2015-12-30', '2015-12-31'),
('40', '2015-12-30', '2015-12-31'),
('41', '2015-12-30', '2015-12-31'),
('42', '2015-12-30', '2015-12-31'),
('43', '2015-12-30', '2015-12-31'),
('44', '2015-12-30', '2015-12-31'),
('45', '2015-12-30', '2015-12-31'),
('46', '2015-12-30', '2015-12-31'),
('47', '2015-12-30', '2015-12-31'),
('48', '2015-12-30', '2015-12-31'),
('49', '2015-12-30', '2015-12-31'),
('50', '2015-12-30', '2015-12-31'),
('51', '2015-12-30', '2015-12-31'),
('52', '2015-12-30', '2015-12-31'),
('53', '2015-12-30', '2015-12-31'),
('54', '2015-12-30', '2015-12-31'),
('55', '2015-12-30', '2015-12-31'),
('56', '2015-12-30', '2015-12-31'),
('57', '2015-12-30', '2015-12-31'),
('58', '2015-12-30', '2015-12-31'),
('59', '2015-12-30', '2015-12-31'),
('60', '2015-12-30', '2015-12-31'),
('61', '2015-12-30', '2015-12-31'),
('62', '2015-12-30', '2015-12-31'),
('63', '2015-12-30', '2015-12-31'),
('64', '2015-12-30', '2015-12-31'),
('65', '2015-12-30', '2015-12-31'),
('66', '2015-12-30', '2015-12-31'),
('67', '2015-12-30', '2015-12-31'),
('68', '2015-12-30', '2015-12-31'),
('69', '2015-12-30', '2015-12-31'),
('70', '2015-12-30', '2015-12-31'),
('71', '2015-12-30', '2015-12-31'),
('72', '2015-12-30', '2015-12-31'),
('73', '2015-12-30', '2015-12-31'),
('74', '2015-12-30', '2015-12-31'),
('75', '2015-12-30', '2015-12-31'),
('76', '2015-12-30', '2015-12-31'),
('77', '2015-12-30', '2015-12-31'),
('78', '2015-12-30', '2015-12-31'),
('79', '2015-12-30', '2015-12-31'),
('80', '2015-12-30', '2015-12-31'),
('81', '2015-12-30', '2015-12-31'),
('82', '2015-12-30', '2015-12-31'),
('83', '2015-12-30', '2015-12-31'),
('84', '2015-12-30', '2015-12-31'),
('85', '2015-12-30', '2015-12-31'),
('86', '2015-12-30', '2015-12-31'),
('87', '2015-12-30', '2015-12-31'),
('88', '2015-12-30', '2015-12-31'),
('89', '2015-12-30', '2015-12-31'),
('90', '2015-12-30', '2015-12-31'),
('91', '2015-12-30', '2015-12-31'),
('92', '2015-12-30', '2015-12-31'),
('93', '2015-12-30', '2015-12-31'),
('94', '2015-12-30', '2015-12-31'),
('95', '2015-12-30', '2015-12-31'),
('96', '2015-12-30', '2015-12-31'),
('97', '2015-12-30', '2015-12-31'),
('98', '2015-12-30', '2015-12-31'),
('99', '2015-12-30', '2015-12-31'),
('100', '2015-12-30', '2015-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `SONG`
--

CREATE TABLE `SONG` (
  `songID` char(9) NOT NULL,
  `albumNo` char(9) NOT NULL,
  `songName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SONG`
--

INSERT INTO `SONG` (`songID`, `albumNo`, `songName`) VALUES
('1', '1', 'Goosebumps'),
('10', '17', 'It Dont Hurt Like It Used To'),
('100', '9', 'Rae Sremmurd'),
('11', '54', '80s Mercedes'),
('12', '34', 'How I Always Be'),
('13', '61', 'Selfish'),
('14', '21', 'Setting Fires'),
('15', '31', 'Litty'),
('16', '14', 'Vice'),
('17', '13', 'What They Want'),
('18', '28', 'Star Of The Show'),
('19', '74', 'Key To The Streets'),
('2', '11', 'Call On Me'),
('20', '24', 'Capsize'),
('21', '62', 'Aint My Fault'),
('22', '37', 'HandClap'),
('23', '37', 'We The People'),
('24', '16', 'Bad And Boujee'),
('25', '65', 'My Way'),
('26', '8', 'Let Go'),
('27', '14', 'Move'),
('28', '71', 'Look Alive'),
('29', '57', 'Dirty Laundry'),
('3', '12', 'Wishing'),
('30', '23', 'Better Man'),
('31', '23', 'Me And Your Mama'),
('32', '36', 'All We Know'),
('33', '45', 'Fresh Eyes'),
('34', '34', 'Fade'),
('35', '32', 'No Heart'),
('36', '76', 'Wanna Be That Song'),
('37', '84', 'Too Much Sauce'),
('38', '13', 'Song For Another Time'),
('39', '89', 'This Town'),
('4', '1', 'A Guy With A Girl'),
('40', '78', 'Bounce Back'),
('41', '31', 'Hallelujah'),
('42', '13', 'Setting The World On Fire'),
('43', '17', 'You Was Right'),
('44', '34', 'Hallelujah'),
('45', '13', 'Come And See Me'),
('46', '14', 'A Little More Summertime'),
('47', '13', '1 Night'),
('48', '19', 'Middle Of A Memory'),
('49', '11', 'Sleep Without You'),
('5', '21', 'Greenlight'),
('50', '15', 'Love On The Brain'),
('51', '14', 'Talk Anymore'),
('52', '68', 'Too Good'),
('53', '75', 'Mercy'),
('54', '71', 'Bad Things'),
('55', '91', 'Pick Up The Phone'),
('56', '19', 'Sneakin'),
('57', '44', 'No Problem'),
('58', '51', 'Panda'),
('59', '67', 'Love Me Now'),
('6', '24', 'Shout Out To My Ex'),
('60', '68', 'Luv'),
('61', '69', 'Send My Love'),
('62', '59', 'Tiimmy Turner'),
('63', '53', 'Sucker For Pain'),
('64', '26', 'X'),
('65', '12', 'All Time Low'),
('66', '23', 'Do You Mind'),
('67', '38', 'One Dance'),
('68', '6', 'Needed Me'),
('69', '1', 'Used To This'),
('7', '15', 'Water Under The Bridge'),
('70', '13', 'May We All'),
('71', '13', 'Chill Bill'),
('72', '17', 'Ride'),
('73', '19', 'Gold'),
('74', '16', 'In The Name Of Love'),
('75', '13', 'This Is What You Came For'),
('76', '13', 'Your Color'),
('77', '96', 'Let Me Down'),
('78', '27', 'OOOUUU'),
('79', '31', 'Unsteady'),
('8', '71', 'PPAP'),
('80', '11', 'The Greatest'),
('81', '22', 'Cheap Thrills'),
('82', '23', 'The Feeling'),
('83', '63', 'Scars To Your Beautiful'),
('84', '33', 'Treat You Better'),
('85', '37', 'Starving'),
('86', '98', 'Fake Love'),
('87', '65', 'Cold Water'),
('88', '34', 'Caroline'),
('89', '43', 'I Hate U I Love U'),
('9', '21', 'Sex With Me'),
('90', '34', 'Dont Wanna Know'),
('91', '16', 'Broccoli'),
('92', '75', 'Juju On That Beat'),
('93', '34', 'Let Me Love You'),
('94', '7', '24K Magic'),
('95', '81', 'Heathens'),
('96', '2', 'Side To Side'),
('97', '9', 'Starboy'),
('98', '10', 'Closer'),
('99', '13', 'Black Beatles');

-- --------------------------------------------------------

--
-- Table structure for table `TOUR`
--

CREATE TABLE `TOUR` (
  `tourID` char(9) NOT NULL,
  `supportingAlbumNo` char(9) NOT NULL,
  `noOfShows` int(11) NOT NULL,
  `tourName` varchar(50) NOT NULL,
  `gross` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TOUR`
--

INSERT INTO `TOUR` (`tourID`, `supportingAlbumNo`, `noOfShows`, `tourName`, `gross`) VALUES
('1', '1', 50, 'Open Mic', '8623.16'),
('10', '10', 50, 'Brothers Osborne', '236589.34'),
('100', '100', 50, 'Taste of Chaos 2016', '1236.62'),
('11', '11', 50, 'Pat Burtscher', '864.78'),
('12', '12', 50, 'A John Waters Christmas', '158984.78'),
('13', '13', 50, 'Kamasi Washington', '15234.78'),
('14', '14', 50, 'The Pretty Reckless', '9864.03'),
('15', '15', 50, 'Bret Michaels', '98364.15'),
('16', '16', 50, 'Zepparella', '21653.75'),
('17', '17', 50, 'Kidz Bop Kids', '556353.75'),
('18', '18', 50, 'Rebel Heart Tour ', '12333.75'),
('19', '19', 50, 'The MDNA Tour', '288413.05'),
('2', '2', 50, 'Under the Puddle', '47185.03'),
('20', '20', 50, 'Sticky & Sweet Tour ', '3215655.32'),
('21', '21', 50, 'Confessions Tour', '136655.32'),
('22', '22', 50, 'Re-Invention World Tour', '13623.33'),
('23', '23', 50, 'Drowned World Tour', '137895.94'),
('24', '24', 50, 'The Girlie Show World Tour', '452784.36'),
('25', '25', 50, 'Whos That Girl World Tour', '121145.37'),
('26', '26', 50, 'Blond Ambition World Tour', '23145.37'),
('27', '27', 50, 'The Virgin Tour', '32651.52'),
('28', '28', 50, 'The Truth About Love Tour', '84213.11'),
('29', '29', 50, 'Funhouse Tour', '1452365.33'),
('3', '3', 50, 'The Sacred Sounds of Christmas', '23785.62'),
('30', '30', 50, 'Not Dead Tour', '21365.33'),
('31', '31', 50, 'Try This Tour', '3455.33'),
('32', '32', 50, 'Party Tour', '3214855.33'),
('33', '33', 50, 'Bon Jovi Live', '32155.34'),
('34', '34', 50, 'Because We Can', '434538.22'),
('35', '35', 50, 'The Circle Tour', '12338.25'),
('36', '36', 50, 'Lost Highway Tour', '326114.36'),
('37', '37', 50, 'Have a Nice Day Tour', '784436.65'),
('38', '38', 50, 'Bounce Tour', '321566.13'),
('39', '39', 50, 'One Wild Night Tour', '3261.32'),
('4', '4', 50, 'Call Backs', '998185.62'),
('40', '40', 50, 'These Days Tour', '888123.36'),
('41', '41', 50, 'Crossroad Promo Tour', '321611.23'),
('42', '42', 50, 'Keep the Faith Tour', '559471.32'),
('43', '43', 50, 'New Jersey Syndicate Tour', '12322.11'),
('44', '44', 50, '7800 Fahrenheit Tour', '8541136.12'),
('45', '45', 50, 'The Moonshine Jungle Tour', '32155.23'),
('46', '46', 50, 'The Doo-Wops & Hooligans Tour', '144112.32'),
('47', '47', 50, 'Dear Girl Tour', '996523.36'),
('48', '48', 50, 'The Artpop Ball', '365124.86'),
('49', '49', 50, 'Cheek to Cheek Tour', '758774.69'),
('5', '5', 50, 'Kyle Craft Evening Bell', '215648.32'),
('50', '50', 50, 'Born This Way Ball', '36425.16'),
('51', '51', 50, 'The Monster Ball Tour', '362144.85'),
('52', '52', 50, 'Up in Smoke Tour', '1211365.26'),
('53', '53', 50, 'Anger Management Tour ', '326112.41'),
('54', '54', 50, 'The Home & Home Tour', '12114.11'),
('55', '55', 50, 'The Recovery Tour', '2222.36'),
('56', '56', 50, 'The Rapture Tour', '4544211.36'),
('57', '57', 50, 'The Monster Tour', '365221.94'),
('58', '58', 50, 'Chasing Yesterday Tour', '3266.63'),
('59', '59', 50, 'Soy Tour', '32154.66'),
('6', '6', 50, 'Polariser', '8745625.62'),
('60', '60', 50, 'Shinee World 2016', '74866.56'),
('61', '61', 50, 'Slayana World Tour', '2111362.33'),
('62', '62', 50, 'Adele Live 2016', '2154623.66'),
('63', '63', 50, 'The River Tour 2016', '2156.32'),
('64', '64', 50, 'Snakes on the Radio', '12356.23'),
('65', '65', 50, 'Telluric Tour', '26856.69'),
('66', '66', 50, 'Purpose World Tour', '7495633.98'),
('67', '67', 50, 'Wonderful Crazy Night Tour', '123521.23'),
('68', '68', 50, 'Začarani krug tour', '23653.95'),
('69', '69', 50, 'Gypsy Caravan Tour', '142574.69'),
('7', '7', 50, 'Anderson, Rabin, and Wakeman', '23203418.33'),
('70', '70', 50, 'Wings of the Wild Tour', '321552.63'),
('71', '71', 50, 'White Light Tour', '845774.95'),
('72', '72', 50, 'The Who Hits 50', '32653.62'),
('73', '73', 50, 'Ultimate Collection Tour', '84523.61'),
('74', '74', 50, 'Freedom to Rock Tour', '12352.36'),
('75', '75', 50, 'Future Now Tour', '122113.33'),
('76', '76', 50, 'Our Lady Peace Tour', '636.63'),
('77', '77', 50, 'Nostalgic for the Present Tour', '23156.33'),
('78', '78', 50, 'Neon Nature Tour', '17849.69'),
('79', '79', 50, 'EVOLution Tour', '12362.36'),
('8', '8', 50, 'The California Honeydrops', '21553.33'),
('80', '80', 50, 'Hey You Guys Tour', '56584.63'),
('81', '81', 50, 'Rattle That Lock Tour', '213.23'),
('82', '82', 50, 'Monday Night Square Dance', '21653.33'),
('83', '83', 50, 'Revolution Radio Tour', '215432.69'),
('84', '84', 50, 'Ripcord World Tour', '859963.48'),
('85', '85', 50, 'Rise Up Tour', '8525336.65'),
('86', '86', 50, 'In the Name of Love Tour', '869932.14'),
('87', '87', 50, 'Blue Neighbourhood Tour', '61411.84'),
('88', '88', 50, 'The Buffet Tour', '613.64'),
('89', '89', 50, 'Sex and Love Tour', '9843.51'),
('9', '9', 50, 'Crocodile Presents: the Japanese House', '121457.78'),
('90', '90', 50, 'Latina Love Tour', '326.46'),
('91', '91', 50, 'Love Train Tour', '326941.53'),
('92', '92', 50, 'Dig Your Roots Tour', '16352.63'),
('93', '93', 50, 'The End Tour', '485661.79'),
('94', '94', 50, 'An Evening of Yes Music and More', '326748.56'),
('95', '95', 50, 'Fantastic Babys', '648712.52'),
('96', '96', 50, 'One on One Tour', '96866.25'),
('97', '97', 50, 'Wintour is Coming', '77912.12'),
('98', '98', 50, 'Sirope Tour', '36889.56'),
('99', '99', 50, 'We Are Pirates Tour', '32475.95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ALBUM`
--
ALTER TABLE `ALBUM`
  ADD PRIMARY KEY (`albumNo`),
  ADD KEY `artistNo` (`artistNo`);

--
-- Indexes for table `ARTIST`
--
ALTER TABLE `ARTIST`
  ADD PRIMARY KEY (`artistNo`),
  ADD KEY `labelID` (`labelID`);

--
-- Indexes for table `LABEL`
--
ALTER TABLE `LABEL`
  ADD PRIMARY KEY (`labelID`);

--
-- Indexes for table `MUSIC_VIDEO`
--
ALTER TABLE `MUSIC_VIDEO`
  ADD KEY `songID` (`songID`);

--
-- Indexes for table `SONG`
--
ALTER TABLE `SONG`
  ADD PRIMARY KEY (`songID`),
  ADD KEY `albumNo` (`albumNo`);

--
-- Indexes for table `TOUR`
--
ALTER TABLE `TOUR`
  ADD PRIMARY KEY (`tourID`),
  ADD KEY `supportingAlbumNo` (`supportingAlbumNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ALBUM`
--
ALTER TABLE `ALBUM`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artistNo`) REFERENCES `ARTIST` (`artistNo`);

--
-- Constraints for table `ARTIST`
--
ALTER TABLE `ARTIST`
  ADD CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`labelID`) REFERENCES `LABEL` (`labelID`);

--
-- Constraints for table `MUSIC_VIDEO`
--
ALTER TABLE `MUSIC_VIDEO`
  ADD CONSTRAINT `music_video_ibfk_1` FOREIGN KEY (`songID`) REFERENCES `SONG` (`songID`);

--
-- Constraints for table `SONG`
--
ALTER TABLE `SONG`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`albumNo`) REFERENCES `ALBUM` (`albumNo`);

--
-- Constraints for table `TOUR`
--
ALTER TABLE `TOUR`
  ADD CONSTRAINT `tour_ibfk_1` FOREIGN KEY (`supportingAlbumNo`) REFERENCES `ALBUM` (`albumNo`);
