-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 02:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesrhot_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_height` int(11) NOT NULL,
  `img_width` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `url_link` varchar(255) NOT NULL,
  `notification` int(11) NOT NULL,
  `notif_status` tinyint(1) NOT NULL DEFAULT 0,
  `mail_to` mediumtext NOT NULL,
  `content` text NOT NULL,
  `remarks` text NOT NULL,
  `mail_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` mediumtext NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(15, 'about', 'About ', 'The SR Hotel', '<p style=\"text-align: justify;\">\r\n	Welcome to SR Hotel, your perfect destination for a luxurious and comfortable stay. We are a top-rated hotel that caters to the needs of discerning travelers, offering exceptional services and amenities that guarantee an unforgettable experience. At SR Hotel, we understand the importance of hospitality, and we strive to make every guest feel at home. Our hotel features well-appointed guest rooms and suites that are tastefully designed to provide the ultimate comfort and convenience.&nbsp;</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<h3>\r\n	Welcome to The SR Hotel</h3>\r\n<p style=\"text-align: justify;\">\r\n	Welcome to SR Hotel, your perfect destination for a luxurious and comfortable stay. We are a top-rated hotel that caters to the needs of discerning travelers, offering exceptional services and amenities that guarantee an unforgettable experience.</p>\r\n<p style=\"text-align: justify;\">\r\n	At SR Hotel, we understand the importance of hospitality, and we strive to make every guest feel at home. Our hotel features well-appointed guest rooms and suites that are tastefully designed to provide the ultimate comfort and convenience. Whether you are traveling for business or leisure, our hotel is the perfect place to unwind and relax.</p>\r\n<p style=\"text-align: justify;\">\r\n	Our experienced and friendly staff is dedicated to making your stay with us a memorable one. From personalized check-in to round-the-clock room service, we are committed to ensuring that you have everything you need for a comfortable stay.&nbsp;</p>\r\n', 0, '', 1, 'The SR Hotel | Luxury meets Comfort', 'Luxury, sr hotel, butwal', 'Welcome to SR Hotel, your perfect destination for a luxurious and comfortable stay. We are a top-rated hotel that caters to the needs of discerning travelers, offering exceptional services and amenities that guarantee an unforgettable experience.\r\n\r\n', 0, '2018-04-04 11:52:01', 3, 0, 0x613a343a7b693a303b733a31343a2249546472542d726f6f6d2e6a7067223b693a313b733a31333a22676b5643742d7265732e6a7067223b693a323b733a31373a223030454f722d6a616d616963612e6a7067223b693a333b733a31383a226f316268432d6275696c64696e672e6a7067223b7d, '', ''),
(16, 'events', 'Events', 'Holi 2019', '<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">CATCH, DJ MARZAVA PERFORM LIVE AT GODAVARI VILLAGE RESORT THIS HOLI!</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">GRAB YOUR PRESALES NOW!</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">Presales: 2000/- Includes 2 can of Tuborg Beer.</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">Date: 20th March, Wednesday</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">Time: 9 AM onwards till late</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">We present to you DJ MARZAVA at Summer Nation Holi Jatra2019</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">Come celebrate Holi with us at Godavari Village Resort, Perfect Retreat for you and your family. We have an amazing line of artists to make your Holi celebrations a perfect one.</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">#GodavariVillageResort #GVR #HoliJatra2019 #MARZAVA #SummerNation #TuborgHoli</span><br style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\" />\r\n<span style=\"color: rgb(38, 50, 56); font-family: Roboto, sans-serif; font-size: 13px;\">CONTACT US ON&nbsp; 9841464876 / 01-5560062 for BOOKINGS AND TICKET RESERVATIONS!</span>', 0, 'page/events', 1, '', '', '', 0, '2019-03-12 17:49:27', 2, 1, 0x613a313a7b693a303b733a32393a2279437944772d323432313133383739383635343632303831302e6a7067223b7d, '', ''),
(17, 'holistic-health-tourism', 'Holistic Health Tourism', 'Holistic Health', '<div class=\"row\">\r\n	<div class=\"col-md-3\">\r\n		<p>\r\n			<img alt=\"\" src=\"/assets/userfiles/images/doc.jpg\" /></p>\r\n	</div>\r\n	<div class=\"col-md-9\">\r\n		<p>\r\n			<strong>Dr. Nav Raj Bhatta, BNYS, MD(Acu)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>\r\n		<p>\r\n			<strong>Naturopathy-Yoga &amp; Acupuncture Physician&nbsp;</strong></p>\r\n		<p style=\"text-align: justify;\">\r\n			Dr. Nav Raj is a Medical Graduate in Yoga &amp; Naturopathy from Rajiv Gandhi University of Health Sciences, Bangalore, Masters in Acupuncture from Medicina Alternativa International University, Colombo. Profoundly talented and resourceful Healthcare Professional, Over 10 years of experience within Yoga, &amp; Naturopathic Sciences. He has been travelling across the world &amp; transforming people over 45 nationalities towards health and wellness with renowned Wellness Company &quot;Steiner Leisure Ltd,&quot; Florida, USA. He has a wide experience of Working with RCCL cruise line (Oasis of the seas), NCL cruise Line (Breakaway/ Bliss), Cunard cruise line (Queen Elizabeth) and P&amp;O Cruise line(Ventura).</p>\r\n		<p style=\"text-align: justify;\">\r\n			Dr Bhatta has a strong foundation of spirituality. He was in Gurukula System of education for 4 years in his early age at Himalayan Kingdom Nepal where he learned Vedanta, Yoga, Reiki &amp; Meditation practices.</p>\r\n		<p style=\"text-align: justify;\">\r\n			Being expert in both Medical and Yogic sciences he treats many physical &amp; psychosomatic ailments with great results by Integrating Yoga and Natural therapies like Acupuncture, Reiki, Exercise therapy, Dietetics- Nutritional Therapy and Hydrotherapy. In recognition of his skills and expertise now he will be available in USA shortly.</p>\r\n		<p style=\"text-align: justify;\">\r\n			Guest from Different Nationality all over the world travel to meet Dr. Bhatta to get his magical healing touch. Dr Nav Raj Bhatta is committed to provide his best use of quality services and give a best of possible health care results. His vision is to provide safe, effective and holistic healthcare, Dr. Bhatta equally focuses on the diseases as well as enhancing quality of life.</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	<strong>Seats are limited. Please call now and reserve your space to enroll with Dr. Bhatta&rsquo;s Wellness Seminar.</strong></p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-3\">\r\n		<p>\r\n			<img alt=\"Yoga\" src=\"/assets/userfiles/images/Yoga.jpg\" /></p>\r\n	</div>\r\n	<div class=\"col-md-9\">\r\n		<p>\r\n			<span style=\"color:#008000;\"><span style=\"font-size:14px;\"><strong><u>Yoga &amp; regular Exercises:</u></strong></span></span></p>\r\n		<p>\r\n			Yoga is a perfect tool to keep our body, mind and spirit in a Perfect harmony. We strongly recommend to perform yoga postures, Breathing Exercises and Meditation in order to achieve the highest goal. Simple exercises and effective way of doing yoga practice will be demonstrated and guided to you as a part of your wellness program</p>\r\n	</div>\r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-3\">\r\n		<p>\r\n			<img alt=\"Acupuncture\" src=\"/assets/userfiles/images/acupuncture.jpg\" /></p>\r\n	</div>\r\n	<div class=\"col-md-9\">\r\n		<p>\r\n			<span style=\"color:#008000;\"><span style=\"font-size:14px;\"><strong><u>Acupuncture:&nbsp;&nbsp;</u></strong></span></span></p>\r\n		<p>\r\n			Being one of the oldest medicine in the world, It has improved millions of lives. Acu needles are painless &amp; very fine to stimulate defence mechanism. It enhances natural immunity and heal many conditions. Acupuncture is one of the safe &amp; most effective therapy for Pain, Stress, Digestive, Weight and Skin problem conditions.</p>\r\n		<p>\r\n			Dr. Nav Raj Bhatta carries a highest qualification (Master Degree specialization) in Acupuncture and many years of experience and reputations with our clients. It is one of the signature treatment in your wellness package.</p>\r\n	</div>\r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-3\">\r\n		<p>\r\n			<img alt=\"Naturopathy\" src=\"/assets/userfiles/images/naturopathy.jpg\" /></p>\r\n	</div>\r\n	<div class=\"col-md-9\">\r\n		<p>\r\n			<span style=\"color:#008000;\"><span style=\"font-size:14px;\"><strong><u>Ayurveda &amp; Naturopathy:</u></strong></span></span></p>\r\n		<p>\r\n			India is a land of medicinal herbs, Same as Acupuncture, Ayurveda is also one the ancient traditional medicine of world. Ancient time People used to achieve health simply by following Ayurveda herbs and using Natural therapies like water, mud, air, sun and fasting. When Morden medicine evolved we have found quick relief from symptom but not the cure. After a long Now we have realized that the only possibility of cure is by Returning to Nature. We promote and integrate Ayurveda and Naturopathic Medicine together to enhance your wellbeing.</p>\r\n		<p>\r\n			Proper Ayurveda &amp; Naturopathy consultation and Pulse Diagnosis will be done Prior to the treatment in order to maximize the result of the treatment. With your Body demands effective herbs will be recommended for your follow up home care by Dr. Bhatta.</p>\r\n	</div>\r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-3\">\r\n		<p>\r\n			<img alt=\"\" src=\"/assets/userfiles/images/Reiki.jpg\" /></p>\r\n	</div>\r\n	<div class=\"col-md-9\">\r\n		<p>\r\n			<span style=\"color:#008000;\"><span style=\"font-size:14px;\"><strong><u>Reiki &amp; Pranic healing:&nbsp;</u></strong></span></span></p>\r\n		<p>\r\n			It is a process of transferring universal healing energy through the palms of healer, Connecting the inner consciousness with universal life force helps to come out of physical as well as mental agitations. Being a Grand reiki healer, Dr. Bhatta uses this technique to have a unique experience for his guest in his wellness Program.&nbsp;</p>\r\n	</div>\r\n</div>\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp; Tired of aches &amp; Pain...?&nbsp; Do You suffer from: </strong></p>\r\n<p style=\"text-align: center;\">\r\n	<strong>Stress - Anxiety, High B.P., Diabetes, Joint pain, Headache - Migraine, Insomnia, Digestive, Cholesterol, Weight &amp; Skin related problem ?</strong></p>\r\n<p style=\"text-align: center;\">\r\n	<strong>Do not wait any longer for your healing results, Call now and reserve your spot for your therapeutic wellness program appointments.</strong></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<strong>We wish you to have an amazing experience with our exclusive personalized wellness program. Please feel free to give your feedback and comments on our services.</strong></p>\r\n<p style=\"text-align: center;\">\r\n	<strong>We congratulate for making commitment on your wellbeing.</strong></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<strong>Thank You</strong></p>\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp; - Spring into healthy living...!</strong></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;</p>\r\n<p style=\"text-align: center;\">\r\n	<strong>&nbsp; &nbsp; &nbsp; &nbsp; &ldquo;We care for you, we care for your health&rdquo;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n<p style=\"text-align: center;\">\r\n	<strong>&ldquo;Wellness is joy in medical term&rdquo; &ndash; Dr. Bhatta</strong></p>\r\n<p style=\"text-align: center;\">\r\n	<span style=\"color:#0000ff;\"><a href=\"http://www.godavarivillageresort.com/page/holistic-health-tourism\" target=\"_self\"><img alt=\"VisitingCard\" src=\"/assets/userfiles/images/navrajvcfront(2).jpg\" style=\"width: 400px; height: 240px;\" /></a></span></p>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 0, '', '', '', 0, '2019-04-30 17:01:12', 1, 1, 0x613a303a7b7d, '', ''),
(18, 'about-us', 'About Us', 'About Us', '<style type=\"text/css\">\r\np.ex1 { margin: 40px 15px 30px;}</style>\r\n<p class=\"ex1\">\r\n	&nbsp;</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-10\">\r\n		<div class=\"col-sm-offset-4\">\r\n			<h4 style=\"text-align: center;\">\r\n				A heaven of peace and tranquility, Godavari Village Resort is perfect retreat for you and your family.</h4>\r\n			<p style=\"text-align: center;\">\r\n				The packages we offer are carefully tailored to your needs. Since we are far from hustle &amp; bustle of the city, transportation facilities include a special services every 1 hour(7:00 am - 7:00pm) everyday. We&rsquo;re sure you&rsquo;ll enjoy your stay with us as you experience all of the things Patan (Lalitpur) has to offer.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<style type=\"text/css\">\r\np.ex1 { margin: 40px 15px 30px;}</style>\r\n<p class=\"ex1\">\r\n	&nbsp;</p>\r\n<style type=\"text/css\">\r\n* {\r\n  box-sizing: border-box;\r\n}\r\n.column {\r\n  float: left;\r\n  width: 33.33%;\r\n  padding: 5px;\r\n}\r\n.row::after {\r\n  content: \"\";\r\n  clear: both;\r\n  display: table;\r\n}</style>\r\n<div class=\"row\">\r\n	<div class=\"column\">\r\n		<img alt=\"Pool\" src=\"/assets/userfiles/images/A.jpg\" style=\"width:100%\" /></div>\r\n	<div class=\"column\">\r\n		<img alt=\"Interior\" src=\"/assets/userfiles/images/B.jpg\" style=\"width:100%\" /></div>\r\n	<div class=\"column\">\r\n		<img alt=\"Dining\" src=\"/assets/userfiles/images/C.jpg\" style=\"width:100%\" /></div>\r\n</div>\r\n<style type=\"text/css\">\r\np.ex1 { margin: 40px 15px 30px;}</style>\r\n<p class=\"ex1\">\r\n	&nbsp;</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-10\">\r\n		<div class=\"col-sm-offset-4\">\r\n			<p style=\"text-align: center;\">\r\n				Providing an ideal mix of value, comfort and convenience, we offer a romantic setting with an array of room with amenities including air conditioning, a minibar, and a desk, and getting online is possible, as free wifi is available. We also offer room service, a concierge, shops, free parking and pool with a poolside bar.</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<style type=\"text/css\">\r\np.ex1 { margin: 40px 15px 30px;}</style>\r\n<p class=\"ex1\">\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2022-05-31 16:11:50', 4, 0, 0x613a313a7b693a303b733a33383a226d425331352d73637265656e73686f742d323032332d30392d30372d3136353433362e706e67223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogcomment`
--

CREATE TABLE `tbl_blogcomment` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookinginfo`
--

CREATE TABLE `tbl_bookinginfo` (
  `id` int(11) NOT NULL,
  `accesskey` varchar(20) NOT NULL,
  `person_checkin` varchar(50) NOT NULL,
  `person_first` varchar(200) NOT NULL,
  `person_last` varchar(200) NOT NULL,
  `person_email` tinytext NOT NULL,
  `person_country` varchar(100) NOT NULL,
  `person_country_code` varchar(100) NOT NULL,
  `person_city` varchar(200) NOT NULL,
  `person_address` tinytext NOT NULL,
  `person_zipcode` varchar(30) NOT NULL,
  `person_contact` varchar(100) NOT NULL,
  `person_message` mediumtext NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `transaction_code` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(20) NOT NULL,
  `confirm_ip` varchar(20) NOT NULL,
  `confirm_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bookinginfo`
--

INSERT INTO `tbl_bookinginfo` (`id`, `accesskey`, `person_checkin`, `person_first`, `person_last`, `person_email`, `person_country`, `person_country_code`, `person_city`, `person_address`, `person_zipcode`, `person_contact`, `person_message`, `ip_address`, `pay_type`, `transaction_code`, `status`, `sortorder`, `added_date`, `confirm_ip`, `confirm_date`) VALUES
(1, '1ArPiiKQGa', '2017-03-31', 'amit', 'prajapati', 'amit@longtail.info', 'Nepal', 'NP', 'bhaktapur', 'bhaktapur', '', '9841884840', 'testing', '110.44.121.133', 'Strip', 'ch_1A32YzAkjWYJctHKUxvtkmzt', 1, 1, '2017-03-30 18:22:42', '110.44.121.133', '2017-03-30 18:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_pkg`
--

CREATE TABLE `tbl_booking_pkg` (
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `start_price` int(11) NOT NULL DEFAULT 0,
  `tot_adult` int(11) NOT NULL,
  `total_amt` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_booking_pkg`
--

INSERT INTO `tbl_booking_pkg` (`booking_id`, `package_id`, `start_price`, `tot_adult`, `total_amt`) VALUES
(1, 1, 200, 1, 200),
(1, 2, 50, 2, 100),
(1, 4, 100, 3, 300),
(1, 5, 250, 2, 500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `city_office_address` varchar(255) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `default_banner_upload` varchar(255) CHARACTER SET utf16 NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `fax` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `google_anlytics` text NOT NULL,
  `schema_code` text NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `whatsapp_a` varchar(255) NOT NULL,
  `logo_upload_2` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `city_office_address`, `icon_upload`, `logo_upload`, `default_banner_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `fax`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `google_anlytics`, `schema_code`, `book_type`, `hotel_page`, `hotel_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `whatsapp_a`, `logo_upload_2`) VALUES
(1, 'The SR Hotel where Luxury Meets Comfort', '', 'R7CVO-newlogo.png', 'NBi9P-newlogo.png', 'xzvX3-newlogo.png', 'The SR Hotel', 1, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14137.399143394372!2d83.4694564!3d27.6446477!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399685f909a43237%3A0x3f200c03eaa27513!2sThe%20Sr%20Hotel!5e0!3m2!1sen!2snp!4v1694422592751!5m2!1sen!2snp', '', 'Shankar Tower, Drivertole, Rupandehi, Nepal', 'info@thesrhotel.com', '+977 9864442530 / 71-590502/03', '', 'info@thesrhotel.com', 'Welcome to The SR Hotel, where luxury meets comfort.<br />\r\n<br />\r\n<a href=\"&lt;jcms:site:baseurl/&gt;page/about\">Read More <i class=\"fa fa-angle-double-right\"></i></a>', 'Copyright ©  {year} The SR Hotel All Rights Reserved.', 'The SR Hotel | Luxury meets Comfort', 'SR Hotel, Butwal, Luxury, Hotel, 3 star hotel, Events, Comfort, Stay, Service, Star Hotel', 'Welcome to SR Hotel, where luxury meets comfort. We are delighted to have you with us and hope you have a pleasant stay. Our team of experienced professionals is committed to providing you with exceptional service and ensuring that your every need is met.', '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-ZV0KPE8JHS\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-ZV0KPE8JHS\');\r\n</script>', '<script type=\"application/ld+json\">\r\n{\r\n\"@context\": \"http://schema.org\",\r\n  \"@type\": \"Resort\",\r\n  \"name\": \"Godavari Village Resort\",\r\n  \"image\": \"https://www.godavarivillageresort.com/images/subpackage/image/WyN3i-resort-view.jpg\",\r\n  \"@id\": \"https://www.godavarivillageresort.com/images/subpackage/image/WyN3i-resort-view.jpg\",\r\n  \"url\": \"https://www.godavarivillageresort.com\",\r\n  \"telephone\": \"+977-1-5560675,  5560777,  5560062 \",\r\n  \"priceRange\": \"-\",\r\n  \"address\": {\r\n    \"@type\": \"PostalAddress\",\r\n    \"streetAddress\": \"Godavari\",\r\n    \"addressLocality\": \"Amarabati,Taukhel, \",\r\n    \"postalCode\": \"44709\",\r\n    \"addressCountry\": \"NP\"\r\n  },\r\n  \"geo\": {\r\n    \"@type\": \"GeoCoordinates\",\r\n    \"latitude\": 17.016370,\r\n    \"longitude\": 81.770430\r\n  },\r\n  \"openingHoursSpecification\": {\r\n    \"@type\": \"OpeningHoursSpecification\",\r\n    \"dayOfWeek\": [\r\n      \"Monday\",\r\n      \"Tuesday\",\r\n      \"Wednesday\",\r\n      \"Thursday\",\r\n      \"Friday\",\r\n      \"Saturday\",\r\n      \"Sunday\"\r\n    ],\r\n    \"opens\": \"00:00\",\r\n    \"closes\": \"24:00\"\r\n  },\r\n  \"sameAs\": [\r\n    \"https://www.facebook.com/GodavariVillageResortOfficial\", \r\n\"https://www.youtube.com/watch?v=TF85p9IJ0Pk\"\r\n  ]\r\n\r\n}\r\n</script>', 2, 'result.php', 'ht23WM', 'cms', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, '9857043020', '6WsIU-scroll-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`, `status`) VALUES
(1, 'AF', 'Afghanistan', 1),
(2, 'AL', 'Albania', 1),
(3, 'DZ', 'Algeria', 1),
(4, 'DS', 'American Samoa', 1),
(5, 'AD', 'Andorra', 1),
(6, 'AO', 'Angola', 1),
(7, 'AI', 'Anguilla', 1),
(8, 'AQ', 'Antarctica', 1),
(9, 'AG', 'Antigua and Barbuda', 1),
(10, 'AR', 'Argentina', 1),
(11, 'AM', 'Armenia', 1),
(12, 'AW', 'Aruba', 1),
(13, 'AU', 'Australia', 1),
(14, 'AT', 'Austria', 1),
(15, 'AZ', 'Azerbaijan', 1),
(16, 'BS', 'Bahamas', 1),
(17, 'BH', 'Bahrain', 1),
(18, 'BD', 'Bangladesh', 1),
(19, 'BB', 'Barbados', 1),
(20, 'BY', 'Belarus', 1),
(21, 'BE', 'Belgium', 1),
(22, 'BZ', 'Belize', 1),
(23, 'BJ', 'Benin', 1),
(24, 'BM', 'Bermuda', 1),
(25, 'BT', 'Bhutan', 1),
(26, 'BO', 'Bolivia', 1),
(27, 'BA', 'Bosnia and Herzegovina', 1),
(28, 'BW', 'Botswana', 1),
(29, 'BV', 'Bouvet Island', 1),
(30, 'BR', 'Brazil', 1),
(31, 'IO', 'British Indian Ocean Territory', 1),
(32, 'BN', 'Brunei Darussalam', 1),
(33, 'BG', 'Bulgaria', 1),
(34, 'BF', 'Burkina Faso', 1),
(35, 'BI', 'Burundi', 1),
(36, 'KH', 'Cambodia', 1),
(37, 'CM', 'Cameroon', 1),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 1),
(40, 'KY', 'Cayman Islands', 1),
(41, 'CF', 'Central African Republic', 1),
(42, 'TD', 'Chad', 1),
(43, 'CL', 'Chile', 1),
(44, 'CN', 'China', 1),
(45, 'CX', 'Christmas Island', 1),
(46, 'CC', 'Cocos (Keeling) Islands', 1),
(47, 'CO', 'Colombia', 1),
(48, 'KM', 'Comoros', 1),
(49, 'CG', 'Congo', 1),
(50, 'CK', 'Cook Islands', 1),
(51, 'CR', 'Costa Rica', 1),
(52, 'HR', 'Croatia (Hrvatska)', 1),
(53, 'CU', 'Cuba', 1),
(54, 'CY', 'Cyprus', 1),
(55, 'CZ', 'Czech Republic', 1),
(56, 'DK', 'Denmark', 1),
(57, 'DJ', 'Djibouti', 1),
(58, 'DM', 'Dominica', 1),
(59, 'DO', 'Dominican Republic', 1),
(60, 'TP', 'East Timor', 1),
(61, 'EC', 'Ecuador', 1),
(62, 'EG', 'Egypt', 1),
(63, 'SV', 'El Salvador', 1),
(64, 'GQ', 'Equatorial Guinea', 1),
(65, 'ER', 'Eritrea', 1),
(66, 'EE', 'Estonia', 1),
(67, 'ET', 'Ethiopia', 1),
(68, 'FK', 'Falkland Islands (Malvinas)', 1),
(69, 'FO', 'Faroe Islands', 1),
(70, 'FJ', 'Fiji', 1),
(71, 'FI', 'Finland', 1),
(72, 'FR', 'France', 1),
(73, 'FX', 'France, Metropolitan', 1),
(74, 'GF', 'French Guiana', 1),
(75, 'PF', 'French Polynesia', 1),
(76, 'TF', 'French Southern Territories', 1),
(77, 'GA', 'Gabon', 1),
(78, 'GM', 'Gambia', 1),
(79, 'GE', 'Georgia', 1),
(80, 'DE', 'Germany', 1),
(81, 'GH', 'Ghana', 1),
(82, 'GI', 'Gibraltar', 1),
(83, 'GK', 'Guernsey', 1),
(84, 'GR', 'Greece', 1),
(85, 'GL', 'Greenland', 1),
(86, 'GD', 'Grenada', 1),
(87, 'GP', 'Guadeloupe', 1),
(88, 'GU', 'Guam', 1),
(89, 'GT', 'Guatemala', 1),
(90, 'GN', 'Guinea', 1),
(91, 'GW', 'Guinea-Bissau', 1),
(92, 'GY', 'Guyana', 1),
(93, 'HT', 'Haiti', 1),
(94, 'HM', 'Heard and Mc Donald Islands', 1),
(95, 'HN', 'Honduras', 1),
(96, 'HK', 'Hong Kong', 1),
(97, 'HU', 'Hungary', 1),
(98, 'IS', 'Iceland', 1),
(99, 'IN', 'India', 1),
(100, 'IM', 'Isle of Man', 1),
(101, 'ID', 'Indonesia', 1),
(102, 'IR', 'Iran (Islamic Republic of)', 1),
(103, 'IQ', 'Iraq', 1),
(104, 'IE', 'Ireland', 1),
(105, 'IL', 'Israel', 1),
(106, 'IT', 'Italy', 1),
(107, 'CI', 'Ivory Coast', 1),
(108, 'JE', 'Jersey', 1),
(109, 'JM', 'Jamaica', 1),
(110, 'JP', 'Japan', 1),
(111, 'JO', 'Jordan', 1),
(112, 'KZ', 'Kazakhstan', 1),
(113, 'KE', 'Kenya', 1),
(114, 'KI', 'Kiribati', 1),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 1),
(116, 'KR', 'Korea, Republic of', 1),
(117, 'XK', 'Kosovo', 1),
(118, 'KW', 'Kuwait', 1),
(119, 'KG', 'Kyrgyzstan', 1),
(120, 'LA', 'Lao People\'s Democratic Republic', 1),
(121, 'LV', 'Latvia', 1),
(122, 'LB', 'Lebanon', 1),
(123, 'LS', 'Lesotho', 1),
(124, 'LR', 'Liberia', 1),
(125, 'LY', 'Libyan Arab Jamahiriya', 1),
(126, 'LI', 'Liechtenstein', 1),
(127, 'LT', 'Lithuania', 1),
(128, 'LU', 'Luxembourg', 1),
(129, 'MO', 'Macau', 1),
(130, 'MK', 'Macedonia', 1),
(131, 'MG', 'Madagascar', 1),
(132, 'MW', 'Malawi', 1),
(133, 'MY', 'Malaysia', 1),
(134, 'MV', 'Maldives', 1),
(135, 'ML', 'Mali', 1),
(136, 'MT', 'Malta', 1),
(137, 'MH', 'Marshall Islands', 1),
(138, 'MQ', 'Martinique', 1),
(139, 'MR', 'Mauritania', 1),
(140, 'MU', 'Mauritius', 1),
(141, 'TY', 'Mayotte', 1),
(142, 'MX', 'Mexico', 1),
(143, 'FM', 'Micronesia, Federated States of', 1),
(144, 'MD', 'Moldova, Republic of', 1),
(145, 'MC', 'Monaco', 1),
(146, 'MN', 'Mongolia', 1),
(147, 'ME', 'Montenegro', 1),
(148, 'MS', 'Montserrat', 1),
(149, 'MA', 'Morocco', 1),
(150, 'MZ', 'Mozambique', 1),
(151, 'MM', 'Myanmar', 1),
(152, 'NA', 'Namibia', 1),
(153, 'NR', 'Nauru', 1),
(154, 'NP', 'Nepal', 1),
(155, 'NL', 'Netherlands', 1),
(156, 'AN', 'Netherlands Antilles', 1),
(157, 'NC', 'New Caledonia', 1),
(158, 'NZ', 'New Zealand', 1),
(159, 'NI', 'Nicaragua', 1),
(160, 'NE', 'Niger', 1),
(161, 'NG', 'Nigeria', 1),
(162, 'NU', 'Niue', 1),
(163, 'NF', 'Norfolk Island', 1),
(164, 'MP', 'Northern Mariana Islands', 1),
(165, 'NO', 'Norway', 1),
(166, 'OM', 'Oman', 1),
(167, 'PK', 'Pakistan', 1),
(168, 'PW', 'Palau', 1),
(169, 'PS', 'Palestine', 1),
(170, 'PA', 'Panama', 1),
(171, 'PG', 'Papua New Guinea', 1),
(172, 'PY', 'Paraguay', 1),
(173, 'PE', 'Peru', 1),
(174, 'PH', 'Philippines', 1),
(175, 'PN', 'Pitcairn', 1),
(176, 'PL', 'Poland', 1),
(177, 'PT', 'Portugal', 1),
(178, 'PR', 'Puerto Rico', 1),
(179, 'QA', 'Qatar', 1),
(180, 'RE', 'Reunion', 1),
(181, 'RO', 'Romania', 1),
(182, 'RU', 'Russian Federation', 1),
(183, 'RW', 'Rwanda', 1),
(184, 'KN', 'Saint Kitts and Nevis', 1),
(185, 'LC', 'Saint Lucia', 1),
(186, 'VC', 'Saint Vincent and the Grenadines', 1),
(187, 'WS', 'Samoa', 1),
(188, 'SM', 'San Marino', 1),
(189, 'ST', 'Sao Tome and Principe', 1),
(190, 'SA', 'Saudi Arabia', 1),
(191, 'SN', 'Senegal', 1),
(192, 'RS', 'Serbia', 1),
(193, 'SC', 'Seychelles', 1),
(194, 'SL', 'Sierra Leone', 1),
(195, 'SG', 'Singapore', 1),
(196, 'SK', 'Slovakia', 1),
(197, 'SI', 'Slovenia', 1),
(198, 'SB', 'Solomon Islands', 1),
(199, 'SO', 'Somalia', 1),
(200, 'ZA', 'South Africa', 1),
(201, 'GS', 'South Georgia South Sandwich Islands', 1),
(202, 'ES', 'Spain', 1),
(203, 'LK', 'Sri Lanka', 1),
(204, 'SH', 'St. Helena', 1),
(205, 'PM', 'St. Pierre and Miquelon', 1),
(206, 'SD', 'Sudan', 1),
(207, 'SR', 'Suriname', 1),
(208, 'SJ', 'Svalbard and Jan Mayen Islands', 1),
(209, 'SZ', 'Swaziland', 1),
(210, 'SE', 'Sweden', 1),
(211, 'CH', 'Switzerland', 1),
(212, 'SY', 'Syrian Arab Republic', 1),
(213, 'TW', 'Taiwan', 1),
(214, 'TJ', 'Tajikistan', 1),
(215, 'TZ', 'Tanzania, United Republic of', 1),
(216, 'TH', 'Thailand', 1),
(217, 'TG', 'Togo', 1),
(218, 'TK', 'Tokelau', 1),
(219, 'TO', 'Tonga', 1),
(220, 'TT', 'Trinidad and Tobago', 1),
(221, 'TN', 'Tunisia', 1),
(222, 'TR', 'Turkey', 1),
(223, 'TM', 'Turkmenistan', 1),
(224, 'TC', 'Turks and Caicos Islands', 1),
(225, 'TV', 'Tuvalu', 1),
(226, 'UG', 'Uganda', 1),
(227, 'UA', 'Ukraine', 1),
(228, 'AE', 'United Arab Emirates', 1),
(229, 'GB', 'United Kingdom', 1),
(230, 'US', 'United States', 1),
(231, 'UM', 'United States minor outlying islands', 1),
(232, 'UY', 'Uruguay', 1),
(233, 'UZ', 'Uzbekistan', 1),
(234, 'VU', 'Vanuatu', 1),
(235, 'VA', 'Vatican City State', 1),
(236, 'VE', 'Venezuela', 1),
(237, 'VN', 'Vietnam', 1),
(238, 'VG', 'Virgin Islands (British)', 1),
(239, 'VI', 'Virgin Islands (U.S.)', 1),
(240, 'WF', 'Wallis and Futuna Islands', 1),
(241, 'EH', 'Western Sahara', 1),
(242, 'YE', 'Yemen', 1),
(243, 'ZR', 'Zaire', 1),
(244, 'ZM', 'Zambia', 1),
(245, 'ZW', 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(1) NOT NULL DEFAULT 0,
  `fa_icon` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `brief` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `fa_icon`, `image`, `brief`, `status`, `sortorder`, `added_date`) VALUES
(1, 'Room Facilities', 0, '', '', '', 1, 1, '2017-03-24 11:24:54'),
(3, 'Garden View', 1, '', 'U6hZy-126581-16.png', 'garden view', 1, 24, '2017-03-24 11:27:18'),
(4, 'Tea / Coffee', 1, '', 'YZVRp-coffee.png', 'tea', 1, 22, '2017-03-24 11:27:34'),
(5, 'LED TV', 1, '', 'geulz-110994-16.png', 'TV', 1, 7, '2017-03-24 11:27:52'),
(6, 'Jungle View', 1, '', 'moDu4-171420-16.png', 'jungle', 1, 12, '2017-03-24 11:28:13'),
(13, 'Ironing Facilities', 1, '', 'Hf4hT-753123-16.png', 'iron', 1, 10, '2017-03-24 17:35:09'),
(8, 'Shower', 1, '', 'Ma6b7-shower.png', 'shower', 1, 19, '2017-03-24 11:28:52'),
(9, 'Breakfast', 1, '', 'WKJDt-breakfast.png', 'breakfast', 1, 15, '2017-03-24 13:02:05'),
(11, 'Desk', 1, '', '3QTWT-desk.png', 'desk', 1, 17, '2017-03-24 17:29:41'),
(12, 'Toiletries', 1, '', '9zXTd-toilet.png', 'toiletries', 1, 28, '2017-03-24 17:30:25'),
(14, 'Daily Housekeeping', 1, '', 'JBrTM-vacuum-cleaner.png', 'housekeeping', 1, 4, '2017-03-24 17:37:02'),
(15, 'Welcome Drink', 1, '', 'iOR5v-1845729-16.png', 'drink', 1, 31, '2017-03-24 17:38:34'),
(16, 'Complementary Water Bottle', 1, '', 'RjVcW-bottel.png', 'water bottle', 1, 20, '2017-03-24 17:43:04'),
(17, 'Airport pickup', 1, '', 'PiqE1-103281-16.png', 'air', 1, 5, '2017-03-24 17:48:13'),
(18, 'AC', 1, '', '9ZcD4-976615-16.png', 'ac', 1, 13, '2017-09-15 15:55:26'),
(23, 'WIFI', 1, '', 'mT6QF-wifi.png', 'WIFI', 1, 2, '2017-09-15 16:09:39'),
(24, 'Hotel Facilities', 0, '', '3wad0-location.jpg', 'Hotel facilities', 1, 8, '2018-04-04 12:25:25'),
(26, 'Wifi', 24, 'fa fa-wifi', 'z5PpL-wifi.png', 'High-speed wifi service is available within the resort premises.', 0, 23, '2018-04-04 12:47:46'),
(27, 'Parking', 24, 'fa fa-car', '', 'Indoor & outdoor parking is available.', 1, 21, '2018-04-04 12:48:51'),
(29, 'TV Cable', 24, 'fa fa-television', '', 'Enjoy TV with multi channels', 0, 18, '2018-04-04 12:50:56'),
(30, 'Convenient Location', 24, 'fa fa-street-view', '', 'The best located hotel', 1, 16, '2018-04-13 16:44:19'),
(31, 'Locker', 24, 'fa fa-suitcase', '', 'We facilitate you by keeping your valuable goods safe and guarded.', 1, 14, '2018-04-13 16:50:40'),
(32, 'Foreign Currency Exchange', 24, 'fa fa-money', '', 'We exchange any currency into Nepalese currency', 0, 11, '2018-05-29 15:52:58'),
(33, 'Doctor on Call', 24, 'fa fa-user-md', '', '24 hour-a-day on call doctor\'s service, which are easily accessible through only a phone call.', 1, 9, '2018-05-30 16:16:09'),
(35, 'Accommodation', 24, 'fa fa-bed', '', 'We Have 55 Well Furnished Spacious Comfortable Rooms\r\n\r\n', 1, 3, '2022-06-07 17:16:00'),
(36, 'Laundry', 24, 'fa fa-bolt', '', 'More taken care, fast service', 1, 6, '2022-06-07 17:23:03'),
(37, 'Kitchen', 24, 'fa fa-cutlery', '', 'Delicious world class cuisine', 1, 25, '2022-06-07 17:24:25'),
(38, 'Dining Hall', 24, 'fa fa-cutlery', '', 'Range of packages for the best price', 1, 27, '2022-06-07 17:25:20'),
(39, 'Restaurant & Bar', 24, 'fa fa-glass', '', 'Special beverages just for you', 1, 29, '2022-06-07 17:26:30'),
(40, 'Conference Hall', 24, 'fa fa-users', '', 'Capable of conducting the huge meetings', 1, 30, '2022-06-07 17:27:34'),
(41, 'Garden', 24, 'fa fa-leaf', '', 'Enjoy the precious nature', 1, 32, '2022-06-07 17:28:27'),
(42, 'Swimming Pool', 24, 'fa fa-tint', '', 'Refresh yourself ', 0, 33, '2022-06-07 17:29:32'),
(43, 'Wi-Fi', 24, 'fa fa-wifi', '', 'High-speed wifi service is available within the hotel premises.', 1, 34, '2022-06-07 17:30:34'),
(44, 'Laundry', 1, '', 'Wd0CU-laundry-machine.png', 'Laundry', 1, 26, '2022-06-08 12:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(8, 'rooms', 'Rooms', 'RSlsm-r4.jpg', '', 1, 1, '2023-09-12 08:05:28', 1),
(9, 'dine-wine', 'Dine & Wine', '70oK8-d2.jpg', '', 1, 2, '2023-09-12 08:09:24', 1),
(10, 'halls-banquets', 'Halls & Banquets', 'E6OL7-e1.jpg', '', 1, 3, '2023-09-12 08:17:15', 1),
(11, 'interior-exterior', 'Interior & Exterior', '6Lso5-i7.jpg', '', 1, 4, '2023-09-12 08:19:02', 1),
(12, 'test', 'test', 'aGiKc-luggage.png', '', 1, 5, '2023-09-15 15:02:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(154, 8, 'Deluxe Room', 'IE8RG-r2.jpg', 1, '', 10, '2023-09-12 08:06:41'),
(153, 8, 'Bathroom', 'ehSvN-r3.jpg', 1, '', 9, '2023-09-12 08:06:41'),
(160, 9, 'Jambalaya Restaurant', 'Yewsc-d2.jpg', 1, '', 5, '2023-09-12 08:10:01'),
(152, 8, 'Presidential Suite', 'dQZ90-r5.jpg', 1, '', 8, '2023-09-12 08:06:41'),
(151, 8, 'Presidential Suite', '9b5SQ-r4.jpg', 1, '', 7, '2023-09-12 08:06:41'),
(150, 8, 'Bathroom', '53dx7-r7.jpg', 1, '', 6, '2023-09-12 08:06:41'),
(149, 8, 'Bathroom', 'PRpjs-r9.jpg', 1, '', 5, '2023-09-12 08:06:41'),
(148, 8, 'Standard Twin Room', 'bJZuD-r6.jpg', 1, '', 4, '2023-09-12 08:06:41'),
(147, 8, 'Standard Double Room', 'NNDIZ-r8.jpg', 1, '', 3, '2023-09-12 08:06:41'),
(159, 9, 'Jambalaya Restaurant', 'oWx7Y-d1.jpg', 1, '', 4, '2023-09-12 08:10:01'),
(168, 11, 'Aerial View', 'YsWbu-i9.jpg', 1, '', 1, '2023-09-12 08:20:08'),
(167, 10, 'way to jamaica from jalsa', '6yB9w-e4.jpg', 1, '', 7, '2023-09-12 08:18:40'),
(166, 10, 'Jamaica Hall', '3Qf4V-e3.jpg', 1, '', 6, '2023-09-12 08:18:40'),
(165, 10, 'Jamaica Hall', 'uWV2z-e2.jpg', 1, '', 5, '2023-09-12 08:18:40'),
(161, 10, 'rooftop hall', 'zNh1D-e7.jpg', 1, '', 1, '2023-09-12 08:18:40'),
(162, 10, 'rooftop hall', 'WymhI-e6.jpg', 1, '', 2, '2023-09-12 08:18:40'),
(163, 10, 'Jalsa Hall', '5yB1h-e1.jpg', 1, '', 3, '2023-09-12 08:18:40'),
(164, 10, 'Jalsa Hall', 'YeYh5-e5.jpg', 1, '', 4, '2023-09-12 08:18:40'),
(177, 10, 'Rooftop banquet', 'Y0rCC-e10.jpg', 1, '', 8, '2023-09-12 08:21:49'),
(176, 11, 'just by the highway', 'BnQeF-i3.jpg', 1, '', 9, '2023-09-12 08:20:08'),
(175, 11, 'Lobby', 'uwziE-i1.jpg', 1, '', 8, '2023-09-12 08:20:08'),
(146, 8, 'Suite', 'fYrKg-r10.jpg', 1, '', 2, '2023-09-12 08:06:41'),
(145, 8, 'Suite', 'czJkd-r11.jpg', 1, '', 1, '2023-09-12 08:06:41'),
(158, 9, 'Bar and Coffee', 'igVNY-d3.jpg', 1, '', 3, '2023-09-12 08:10:01'),
(157, 9, 'Bar', 'MPfnu-d4.jpg', 1, '', 2, '2023-09-12 08:10:01'),
(156, 9, 'Bar', '1IqsF-d5.jpg', 1, '', 1, '2023-09-12 08:10:01'),
(169, 11, 'Aerial View', '1Nv2y-i8.jpg', 1, '', 2, '2023-09-12 08:20:08'),
(170, 11, 'Aerial View', 'E51Ga-i7.jpg', 1, '', 3, '2023-09-12 08:20:08'),
(171, 11, 'Aerial View', 'lm5YM-i6.jpg', 1, '', 4, '2023-09-12 08:20:08'),
(172, 11, 'Exterior', 'gxejz-i5.jpg', 1, '', 5, '2023-09-12 08:20:08'),
(173, 11, 'Entrance', 'ND302-i4.jpg', 1, '', 6, '2023-09-12 08:20:08'),
(174, 11, 'Lobby', 'WjbEy-i2.jpg', 1, '', 7, '2023-09-12 08:20:08'),
(155, 8, 'Bathroom', 'WdmKl-r1.jpg', 1, '', 11, '2023-09-12 08:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`) VALUES
(1, 'Administrator', '1', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Menu [Home] CreatedData has added successfully.', '2016-12-08 11:12:09', 1, 3, '::1'),
(2, 'Menu [About] CreatedData has added successfully.', '2016-12-08 11:12:26', 1, 3, '::1'),
(3, 'Menu [Apartments] CreatedData has added successful', '2016-12-08 11:12:39', 1, 3, '::1'),
(4, 'Menu [Gallery] CreatedData has added successfully.', '2016-12-08 11:12:54', 1, 3, '::1'),
(5, 'Menu [Experiences] CreatedData has added successfu', '2016-12-08 11:13:15', 1, 3, '::1'),
(6, 'Menu [Contact] CreatedData has added successfully.', '2016-12-08 11:13:47', 1, 3, '::1'),
(7, 'Menu [Everest Suite] CreatedData has added success', '2016-12-08 11:14:08', 1, 3, '::1'),
(8, 'Menu [Makalu Suite] CreatedData has added successf', '2016-12-08 11:14:30', 1, 3, '::1'),
(9, 'Menu [Kanchanjunga Suite] CreatedData has added su', '2016-12-08 11:14:49', 1, 3, '::1'),
(10, 'Slideshow [Welcome To Karma Tara Residency]Data ha', '2016-12-08 11:18:12', 1, 3, '::1'),
(11, 'Slideshow [Welcome To Karma Tara Residency]Data ha', '2016-12-08 11:19:31', 1, 3, '::1'),
(12, 'SocialNetworking [Facebook]Data has added successf', '2016-12-08 11:51:00', 1, 3, '::1'),
(13, 'SocialNetworking [Twitter]Data has added successfu', '2016-12-08 11:51:18', 1, 3, '::1'),
(14, 'SocialNetworking [Youtube]Data has added successfu', '2016-12-08 11:51:37', 1, 3, '::1'),
(15, 'SocialNetworking [Pintrest]Data has added successf', '2016-12-08 11:51:49', 1, 3, '::1'),
(16, 'SocialNetworking [Google Plus]Data has added succe', '2016-12-08 11:52:08', 1, 3, '::1'),
(17, 'SocialNetworking [Instagram]Data has added success', '2016-12-08 11:52:26', 1, 3, '::1'),
(18, 'SocialNetworking [Linkdin]Data has added successfu', '2016-12-08 11:53:07', 1, 3, '::1'),
(19, 'Changes on Config \'Karma Tara\' has been saved succ', '2016-12-08 12:04:49', 1, 4, '::1'),
(20, 'Changes on Config \'Karma Tara\' has been saved succ', '2016-12-08 12:44:16', 1, 4, '::1'),
(21, 'Changes on Config \'Karma Tara\' has been saved succ', '2016-12-08 12:50:57', 1, 4, '::1'),
(22, 'Changes on Config \'Karma Tara\' has been saved succ', '2016-12-08 12:51:10', 1, 4, '::1'),
(23, 'Changes on Config \'Karma Tara\' has been saved succ', '2016-12-08 12:51:18', 1, 4, '::1'),
(24, 'Changes on Config \'Karma Tara Residency\' has been ', '2016-12-08 12:55:59', 1, 4, '::1'),
(25, 'Package [Apartment]Data has added successfully.', '2016-12-08 14:40:37', 1, 3, '::1'),
(26, 'Package [Experiences]Data has added successfully.', '2016-12-08 14:42:11', 1, 3, '::1'),
(27, 'Sub Package \'Everest Suite\' has added successfully', '2016-12-08 14:44:45', 1, 3, '::1'),
(28, 'Features [Facilities]Data has added successfully.', '2016-12-08 14:45:54', 1, 3, '::1'),
(29, 'Features [Dinner]Data has added successfully.', '2016-12-08 14:47:09', 1, 3, '::1'),
(30, 'Changes on Sub Package \'Everest Suite\' has been sa', '2016-12-08 14:48:39', 1, 4, '::1'),
(31, 'Article \'About Us\' has added successfully.', '2016-12-08 15:09:35', 1, 3, '::1'),
(32, 'Menu [About] Edit Successfully', '2016-12-08 15:10:22', 1, 4, '::1'),
(33, 'Menu [Apartments] Edit Successfully', '2016-12-08 15:10:33', 1, 4, '::1'),
(34, 'Menu [Gallery] Edit Successfully', '2016-12-08 15:22:59', 1, 4, '::1'),
(35, 'Menu [Experiences] Edit Successfully', '2016-12-08 15:23:12', 1, 4, '::1'),
(36, 'Menu [Gallery] Edit Successfully', '2016-12-08 15:23:33', 1, 4, '::1'),
(37, 'Gallery [Inner Gallery]Data has added successfully', '2016-12-08 15:26:11', 1, 3, '::1'),
(38, 'Sub Gallery Image [Room]Data has added successfull', '2016-12-08 15:28:06', 1, 3, '::1'),
(39, 'Sub Gallery Image [Room]Data has added successfull', '2016-12-08 15:28:06', 1, 3, '::1'),
(40, 'Sub Gallery Image [gallery]Data has added successf', '2016-12-08 15:28:06', 1, 3, '::1'),
(41, 'Sub Gallery Image [Bathroom]Data has added success', '2016-12-08 15:28:06', 1, 3, '::1'),
(42, 'Sub Gallery Image [gallery]Data has added successf', '2016-12-08 15:28:07', 1, 3, '::1'),
(43, 'Sub Gallery Image [gallery]Data has added successf', '2016-12-08 15:28:07', 1, 3, '::1'),
(44, 'Sub Gallery Image [gallery]Data has added successf', '2016-12-08 15:28:07', 1, 3, '::1'),
(45, 'Sub Package \'Thamel\' has added successfully.', '2016-12-08 16:43:01', 1, 3, '::1'),
(46, 'Sub Package \'Swayambhunath (Monkey Temple)\' has ad', '2016-12-08 16:49:35', 1, 3, '::1'),
(47, 'Sub Package \'Kanchenjunga Suite\' has added success', '2016-12-08 16:54:10', 1, 3, '::1'),
(48, 'Changes on Sub Package \'Kanchenjunga Suite\' has be', '2016-12-08 17:20:09', 1, 4, '::1'),
(49, 'Menu [Everest Suite] Edit Successfully', '2016-12-08 17:32:38', 1, 4, '::1'),
(50, 'Menu [Kanchanjunga Suite] Edit Successfully', '2016-12-08 17:32:53', 1, 4, '::1'),
(51, 'Login: Karma Tara Residency   logged in.', '2016-12-09 11:03:07', 1, 1, '::1'),
(52, 'Changes on Config \'Karma Tara Residency\' has been ', '2016-12-09 11:04:14', 1, 4, '::1'),
(53, 'Changes on Config \'Karma Tara Residency\' has been ', '2016-12-09 11:05:52', 1, 4, '::1'),
(54, 'Changes on Config \'Karma Tara Residency\' has been ', '2016-12-09 11:48:01', 1, 4, '::1'),
(55, 'Changes on Config \'Karma Tara Residency\' has been ', '2016-12-09 11:48:37', 1, 4, '::1'),
(56, 'Login: Karma Tara Residency   logged in.', '2016-12-12 12:01:49', 1, 1, '::1'),
(57, 'Changes on Sub Package \'Kanchenjunga Suite\' has be', '2016-12-12 12:09:55', 1, 4, '::1'),
(58, 'Changes on Sub Package \'Everest Suite\' has been sa', '2016-12-12 12:36:18', 1, 4, '::1'),
(59, 'Login: Karma Tara Residency   logged in.', '2016-12-12 14:10:27', 1, 1, '::1'),
(60, 'Features [Dinner] Edit Successfully', '2016-12-12 14:18:35', 1, 4, '::1'),
(61, 'Login: Karma Tara Residency   logged in.', '2016-12-13 08:17:58', 1, 1, '::1'),
(62, 'Changes on Config \'Karma Tara Residency\' has been ', '2016-12-13 08:18:12', 1, 4, '::1'),
(63, 'Login: Karma Tara Residency   logged in.', '2017-01-18 10:53:13', 1, 1, '::1'),
(64, 'Login: Karma Tara Residency   logged in.', '2017-01-19 11:34:12', 1, 1, '::1'),
(65, 'Changes on Config \'Karma Tara Residency\' has been ', '2017-01-19 11:44:07', 1, 4, '::1'),
(66, 'Changes on Config \'Karma Tara Residency\' has been ', '2017-01-19 11:44:19', 1, 4, '::1'),
(67, 'Login: Karma Tara Residency   logged in.', '2017-03-15 14:20:17', 1, 1, '::1'),
(68, 'Changes on Article \'About Us\' has been saved succe', '2017-03-15 14:26:02', 1, 4, '::1'),
(69, 'Article \'help\' has added successfully.', '2017-03-15 14:28:39', 1, 3, '::1'),
(70, 'Menu [qwerty] CreatedData has added successfully.', '2017-03-15 14:29:56', 1, 3, '::1'),
(71, 'Menu  [qwerty]Data has deleted successfully.', '2017-03-15 14:41:36', 1, 6, '::1'),
(72, 'Articles  [help]Data has deleted successfully.', '2017-03-15 14:41:55', 1, 6, '::1'),
(73, 'Changes on Article \'About Us\' has been saved succe', '2017-03-15 14:44:48', 1, 4, '::1'),
(74, 'Changes on Article \'About Us\' has been saved succe', '2017-03-15 14:45:18', 1, 4, '::1'),
(75, 'Article \'sample\' has added successfully.', '2017-03-15 14:48:02', 1, 3, '::1'),
(76, 'Menu [sample] CreatedData has added successfully.', '2017-03-15 14:49:21', 1, 3, '::1'),
(77, 'Articles  [sample]Data has deleted successfully.', '2017-03-15 14:50:23', 1, 6, '::1'),
(78, 'Menu  [sample]Data has deleted successfully.', '2017-03-15 14:51:07', 1, 6, '::1'),
(79, 'Article \'makalu suite\' has added successfully.', '2017-03-15 14:58:25', 1, 3, '::1'),
(80, 'Menu [Makalu Suite] Edit Successfully', '2017-03-15 14:58:56', 1, 4, '::1'),
(81, 'Menu [Makalu Suite] Edit Successfully', '2017-03-15 14:59:26', 1, 4, '::1'),
(82, 'Menu [Makalu Suite] Edit Successfully', '2017-03-15 15:00:17', 1, 4, '::1'),
(83, 'Articles  [makalu suite]Data has deleted successfu', '2017-03-15 15:01:01', 1, 6, '::1'),
(84, 'Menu [Link] CreatedData has added successfully.', '2017-03-15 15:02:16', 1, 3, '::1'),
(85, 'Article \'makalu\' has added successfully.', '2017-03-15 15:02:43', 1, 3, '::1'),
(86, 'Login: Karma Tara Residency   logged in.', '2017-03-15 15:06:22', 1, 1, '::1'),
(87, 'Menu [Link] Edit Successfully', '2017-03-15 15:06:55', 1, 4, '::1'),
(88, 'Changes on Article \'makalu\' has been saved success', '2017-03-15 15:09:02', 1, 4, '::1'),
(89, 'Changes on Article \'makalu\' has been saved success', '2017-03-15 15:09:16', 1, 4, '::1'),
(90, 'Menu [Makalu Suite] Edit Successfully', '2017-03-15 15:10:11', 1, 4, '::1'),
(91, 'Menu  [Link]Data has deleted successfully.', '2017-03-15 15:10:59', 1, 6, '::1'),
(92, 'Gallery Image [outer Gallery] Edit Successfully', '2017-03-15 15:27:00', 1, 4, '::1'),
(93, 'Slideshow [welcome to karma tara residency ]Data h', '2017-03-15 15:29:36', 1, 3, '::1'),
(94, 'Slideshow [welcome to karma tara residency ] Edit ', '2017-03-15 15:31:04', 1, 4, '::1'),
(95, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:31:51', 1, 4, '::1'),
(96, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:33:05', 1, 4, '::1'),
(97, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:34:12', 1, 4, '::1'),
(98, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:36:53', 1, 4, '::1'),
(99, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:37:16', 1, 4, '::1'),
(100, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:42:04', 1, 4, '::1'),
(101, 'Article \'picture\' has added successfully.', '2017-03-15 15:44:59', 1, 3, '::1'),
(102, 'Slideshow [welcome to karma tara residency  test] ', '2017-03-15 15:45:22', 1, 4, '::1'),
(103, 'Features [Dinner] Edit Successfully', '2017-03-15 15:52:14', 1, 4, '::1'),
(104, 'Features [bed] Edit Successfully', '2017-03-15 15:52:45', 1, 4, '::1'),
(105, 'Features [dinner] Edit Successfully', '2017-03-15 15:52:59', 1, 4, '::1'),
(106, 'Changes on Sub Package \'Kanchenjunga Suite\' has be', '2017-03-15 15:58:24', 1, 4, '::1'),
(107, 'Changes on Sub Package \'Kanchenjunga Suite\' has be', '2017-03-15 16:00:36', 1, 4, '::1'),
(108, 'Sub Package \'basantapur\' has added successfully.', '2017-03-15 16:19:06', 1, 3, '::1'),
(109, 'Changes on Sub Package \'basantapur\' has been saved', '2017-03-15 16:22:40', 1, 4, '::1'),
(110, 'Menu [Contact] Edit Successfully', '2017-03-15 16:42:42', 1, 4, '::1'),
(111, 'Menu [Contact] Edit Successfully', '2017-03-15 16:43:18', 1, 4, '::1'),
(112, 'Changes on Sub Package \'Kanchenjunga Suite\' has be', '2017-03-15 17:04:23', 1, 4, '::1'),
(113, 'Changes on Sub Package \'Kanchenjunga Suite\' has be', '2017-03-15 17:04:47', 1, 4, '::1'),
(114, 'Features [breakfast]Data has added successfully.', '2017-03-15 17:07:21', 1, 3, '::1'),
(115, 'Features  [breakfast]Data has deleted successfully', '2017-03-15 17:07:43', 1, 6, '::1'),
(116, 'Features [breakfast]Data has added successfully.', '2017-03-15 17:08:11', 1, 3, '::1'),
(117, 'Changes on Sub Package \'Everest Suite\' has been sa', '2017-03-15 17:08:41', 1, 4, '::1'),
(118, 'Changes on Sub Package \'Everest Suite\' has been sa', '2017-03-15 17:09:42', 1, 4, '::1'),
(119, 'Features [breakfast] Edit Successfully', '2017-03-15 17:11:00', 1, 4, '::1'),
(120, 'Changes on Sub Package \'Everest Suite\' has been sa', '2017-03-15 17:11:33', 1, 4, '::1'),
(121, 'Features [bonus]Data has added successfully.', '2017-03-15 17:19:41', 1, 3, '::1'),
(122, 'Changes on Sub Package \'Everest Suite\' has been sa', '2017-03-15 17:20:27', 1, 4, '::1'),
(123, 'Features [bonus] Edit Successfully', '2017-03-15 17:21:43', 1, 4, '::1'),
(124, 'Features [yes]Data has added successfully.', '2017-03-15 17:22:57', 1, 3, '::1'),
(125, 'Changes on Sub Package \'Everest Suite\' has been sa', '2017-03-15 17:23:41', 1, 4, '::1'),
(126, 'Features [yes] Edit Successfully', '2017-03-15 17:24:14', 1, 4, '::1'),
(127, 'Features [bicycle] Edit Successfully', '2017-03-15 17:24:36', 1, 4, '::1'),
(128, 'Changes on Sub Package \'Everest Suite\' has been sa', '2017-03-15 17:25:55', 1, 4, '::1'),
(129, 'Sub Package \'makalu suite\' has added successfully.', '2017-03-15 17:31:40', 1, 3, '::1'),
(130, 'Menu [Makalu Suite] Edit Successfully', '2017-03-15 17:32:26', 1, 4, '::1'),
(131, 'Articles  [makalu]Data has deleted successfully.', '2017-03-15 17:32:33', 1, 6, '::1'),
(132, 'Changes on Sub Package \'makalu suite\' has been sav', '2017-03-15 17:35:23', 1, 4, '::1'),
(133, 'Changes on Sub Package \'makalu suite\' has been sav', '2017-03-15 17:40:07', 1, 4, '::1'),
(134, 'Changes on Sub Package \'makalu suite\' has been sav', '2017-03-15 17:40:30', 1, 4, '::1'),
(135, 'Package Experiences Edit Successfully', '2017-03-15 17:54:20', 1, 4, '::1'),
(136, 'Package Experiences Edit Successfully', '2017-03-15 17:54:57', 1, 4, '::1'),
(137, 'Package Experiences Edit Successfully', '2017-03-15 17:57:16', 1, 4, '::1'),
(138, 'Package Experiences Edit Successfully', '2017-03-15 17:59:19', 1, 4, '::1'),
(139, 'Package Experiences Edit Successfully', '2017-03-15 17:59:55', 1, 4, '::1'),
(140, 'Changes on Sub Package \'basantapur\' has been saved', '2017-03-15 18:05:48', 1, 4, '::1'),
(141, 'Slideshow [welcome to karma tara residency  test2]', '2017-03-15 18:09:12', 1, 3, '::1'),
(142, 'Slideshow [test 3]Data has added successfully.', '2017-03-15 18:09:49', 1, 3, '::1'),
(143, 'Slideshow [test 3] Edit Successfully', '2017-03-15 18:10:50', 1, 4, '::1'),
(144, 'Slideshow [test 33]Data has added successfully.', '2017-03-15 18:11:32', 1, 3, '::1'),
(145, 'Slideshows  [test 33]Data has deleted successfully', '2017-03-15 18:11:51', 1, 6, '::1'),
(146, 'Slideshow  [test 33]Data has deleted successfully.', '2017-03-15 18:11:51', 1, 6, '::1'),
(147, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 10:13:53', 1, 4, '::1'),
(148, 'Slideshows  [welcome to karma tara residency  test', '2017-03-16 10:14:29', 1, 6, '::1'),
(149, 'Slideshow  [welcome to karma tara residency  test2', '2017-03-16 10:14:29', 1, 6, '::1'),
(150, 'Slideshows  [welcome to karma tara residency  test', '2017-03-16 10:14:32', 1, 6, '::1'),
(151, 'Slideshow  [welcome to karma tara residency  test]', '2017-03-16 10:14:32', 1, 6, '::1'),
(152, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 10:15:39', 1, 3, '::1'),
(153, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 10:17:01', 1, 3, '::1'),
(154, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 10:17:16', 1, 3, '::1'),
(155, 'Menu [The Lodge] Edit Successfully', '2017-03-16 10:18:35', 1, 4, '::1'),
(156, 'Menu [Stay] Edit Successfully', '2017-03-16 10:20:35', 1, 4, '::1'),
(157, 'Changes on Config \'Karma Tara Residency\' has been ', '2017-03-16 10:21:51', 1, 4, '::1'),
(158, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 10:23:01', 1, 4, '::1'),
(159, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 10:24:33', 1, 4, '::1'),
(160, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 10:25:36', 1, 4, '::1'),
(161, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 10:28:27', 1, 4, '::1'),
(162, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 10:29:58', 1, 4, '::1'),
(163, 'Login: Karma Tara Residency   logged in.', '2017-03-16 10:31:02', 1, 1, '::1'),
(164, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 11:20:37', 1, 4, '::1'),
(165, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 11:22:38', 1, 4, '::1'),
(166, 'Article \'11\' has added successfully.', '2017-03-16 11:49:39', 1, 3, '::1'),
(167, 'Article \'111\' has added successfully.', '2017-03-16 11:50:59', 1, 3, '::1'),
(168, 'Article \'112\' has added successfully.', '2017-03-16 11:53:04', 1, 3, '::1'),
(169, 'Article \'q\' has added successfully.', '2017-03-16 11:55:46', 1, 3, '::1'),
(170, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 13:01:03', 1, 4, '::1'),
(171, 'Menu [The Lodge] Edit Successfully', '2017-03-16 14:47:02', 1, 4, '::1'),
(172, 'Menu [Jagatpur Experiences] Edit Successfully', '2017-03-16 14:47:28', 1, 4, '::1'),
(173, 'Menu [Jagatpur Experience] Edit Successfully', '2017-03-16 14:47:56', 1, 4, '::1'),
(174, 'Menu [Contact us] Edit Successfully', '2017-03-16 14:48:10', 1, 4, '::1'),
(175, 'Slideshows  [Welcome To Karma Tara Residency]Data ', '2017-03-16 14:51:53', 1, 6, '::1'),
(176, 'Slideshow  [Welcome To Karma Tara Residency]Data h', '2017-03-16 14:51:53', 1, 6, '::1'),
(177, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-16 14:56:05', 1, 4, '::1'),
(178, 'Changes on Sub Package \'deluxe room\' has been save', '2017-03-16 14:56:36', 1, 4, '::1'),
(179, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 15:55:47', 1, 4, '::1'),
(180, 'Slideshow [experience the jungle in tented luxury]', '2017-03-16 16:04:02', 1, 4, '::1'),
(181, 'Slideshow [experience the wilderness first hand] E', '2017-03-16 16:04:46', 1, 4, '::1'),
(182, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 16:08:39', 1, 4, '::1'),
(183, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 16:09:07', 1, 4, '::1'),
(184, 'Sub Package [Everest Suite]Data has deleted succes', '2017-03-16 16:24:53', 1, 6, '::1'),
(185, 'Sub Package []Data has deleted successfully.', '2017-03-16 16:25:02', 1, 6, '::1'),
(186, 'Sub Package []Data has deleted successfully.', '2017-03-16 16:25:02', 1, 6, '::1'),
(187, 'Menu [Luxirious tents] Edit Successfully', '2017-03-16 16:26:18', 1, 4, '::1'),
(188, 'Menu  [Kanchanjunga Suite]Data has deleted success', '2017-03-16 16:27:04', 1, 6, '::1'),
(189, 'Menu [deluxe room] Edit Successfully', '2017-03-16 16:27:50', 1, 4, '::1'),
(190, 'Menu [photo gallery] CreatedData has added success', '2017-03-16 16:28:45', 1, 3, '::1'),
(191, 'Gallery Image [Gallery] Edit Successfully', '2017-03-16 16:31:05', 1, 4, '::1'),
(192, 'Sub Gallery Image  [gallery]Data has deleted succe', '2017-03-16 16:31:39', 1, 6, '::1'),
(193, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:42', 1, 6, '::1'),
(194, 'Sub Gallery Image  [gallery]Data has deleted succe', '2017-03-16 16:31:42', 1, 6, '::1'),
(195, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:45', 1, 6, '::1'),
(196, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:45', 1, 6, '::1'),
(197, 'Sub Gallery Image  [gallery]Data has deleted succe', '2017-03-16 16:31:45', 1, 6, '::1'),
(198, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:49', 1, 6, '::1'),
(199, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:49', 1, 6, '::1'),
(200, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:49', 1, 6, '::1'),
(201, 'Sub Gallery Image  [Room]Data has deleted successf', '2017-03-16 16:31:49', 1, 6, '::1'),
(202, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:53', 1, 6, '::1'),
(203, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:53', 1, 6, '::1'),
(204, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:53', 1, 6, '::1'),
(205, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:53', 1, 6, '::1'),
(206, 'Sub Gallery Image  [gallery]Data has deleted succe', '2017-03-16 16:31:53', 1, 6, '::1'),
(207, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:56', 1, 6, '::1'),
(208, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:56', 1, 6, '::1'),
(209, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:56', 1, 6, '::1'),
(210, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:56', 1, 6, '::1'),
(211, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:31:56', 1, 6, '::1'),
(212, 'Sub Gallery Image  [Bathroom]Data has deleted succ', '2017-03-16 16:31:56', 1, 6, '::1'),
(213, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:32:00', 1, 6, '::1'),
(214, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:32:00', 1, 6, '::1'),
(215, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:32:00', 1, 6, '::1'),
(216, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:32:00', 1, 6, '::1'),
(217, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:32:00', 1, 6, '::1'),
(218, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-16 16:32:00', 1, 6, '::1'),
(219, 'Sub Gallery Image  [Room]Data has deleted successf', '2017-03-16 16:32:01', 1, 6, '::1'),
(220, 'Sub Gallery Image [breakfast]Data has added succes', '2017-03-16 16:32:51', 1, 3, '::1'),
(221, 'Sub Gallery Image [sight ]Data has added successfu', '2017-03-16 16:32:51', 1, 3, '::1'),
(222, 'Sub Gallery Image [room]Data has added successfull', '2017-03-16 16:32:51', 1, 3, '::1'),
(223, 'Sub Gallery Image [garden]Data has added successfu', '2017-03-16 16:32:51', 1, 3, '::1'),
(224, 'Sub Gallery Image [bar]Data has added successfully', '2017-03-16 16:32:51', 1, 3, '::1'),
(225, 'Sub Gallery Image [dinner]Data has added successfu', '2017-03-16 16:32:51', 1, 3, '::1'),
(226, 'Sub Gallery Image [cottage]Data has added successf', '2017-03-16 16:32:51', 1, 3, '::1'),
(227, 'Menu [Gallery] Edit Successfully', '2017-03-16 16:33:51', 1, 4, '::1'),
(228, 'Menu [Gallery] Edit Successfully', '2017-03-16 16:34:13', 1, 4, '::1'),
(229, 'Gallery Image [photo Gallery] Edit Successfully', '2017-03-16 16:34:57', 1, 4, '::1'),
(230, 'Package Stay Edit Successfully', '2017-03-16 16:35:48', 1, 4, '::1'),
(231, 'Package Jagatpur Experiences Edit Successfully', '2017-03-16 16:37:09', 1, 4, '::1'),
(232, 'Changes on Sub Package \'row row row your boat\' has', '2017-03-16 16:38:58', 1, 4, '::1'),
(233, 'Menu [Stay] Edit Successfully', '2017-03-16 16:41:32', 1, 4, '::1'),
(234, 'Changes on Sub Package \'sun downer\' has been saved', '2017-03-16 16:43:11', 1, 4, '::1'),
(235, 'Changes on Sub Package \'jeep safari\' has been save', '2017-03-16 16:44:00', 1, 4, '::1'),
(236, 'Sub Package \'jungle picnic\' has added successfully', '2017-03-16 16:44:30', 1, 3, '::1'),
(237, 'Sub Package \'walk into the wild\' has added success', '2017-03-16 16:45:10', 1, 3, '::1'),
(238, 'Sub Package \'wild conference and meeting\' has adde', '2017-03-16 16:45:49', 1, 3, '::1'),
(239, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-16 16:47:40', 1, 4, '::1'),
(240, 'Menu [photo gallery] Edit Successfully', '2017-03-16 16:50:35', 1, 4, '::1'),
(241, 'Menu [photo gallery] Edit Successfully', '2017-03-16 16:58:50', 1, 4, '::1'),
(242, 'Menu [photo gallery] Edit Successfully', '2017-03-16 16:59:09', 1, 4, '::1'),
(243, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 18:03:31', 1, 4, '::1'),
(244, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-16 18:04:03', 1, 4, '::1'),
(245, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 10:11:24', 1, 4, '::1'),
(246, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 10:12:03', 1, 4, '::1'),
(247, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 10:29:46', 1, 4, '::1'),
(248, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 10:35:17', 1, 4, '::1'),
(249, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 10:35:41', 1, 4, '::1'),
(250, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 12:49:55', 1, 4, '::1'),
(251, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 12:50:27', 1, 4, '::1'),
(252, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 12:55:40', 1, 4, '::1'),
(253, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 13:00:35', 1, 4, '::1'),
(254, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 13:00:55', 1, 4, '::1'),
(255, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-17 15:31:29', 1, 4, '::1'),
(256, 'Articles  [About Us]Data has deleted successfully.', '2017-03-17 15:41:00', 1, 6, '::1'),
(257, 'Menu [The Lodge] Edit Successfully', '2017-03-17 15:43:25', 1, 4, '::1'),
(258, 'Changes on Article \'contact us\' has been saved suc', '2017-03-17 16:12:11', 1, 4, '::1'),
(259, 'Menu [Contact us] Edit Successfully', '2017-03-17 16:12:35', 1, 4, '::1'),
(260, 'Articles  [112]Data has deleted successfully.', '2017-03-17 16:22:15', 1, 6, '::1'),
(261, 'Articles  []Data has deleted successfully.', '2017-03-17 16:22:18', 1, 6, '::1'),
(262, 'Articles  [111]Data has deleted successfully.', '2017-03-17 16:22:18', 1, 6, '::1'),
(263, 'Articles  []Data has deleted successfully.', '2017-03-17 16:22:20', 1, 6, '::1'),
(264, 'Articles  []Data has deleted successfully.', '2017-03-17 16:22:20', 1, 6, '::1'),
(265, 'Articles  [11]Data has deleted successfully.', '2017-03-17 16:22:21', 1, 6, '::1'),
(266, 'Article \'the lodge\' has added successfully.', '2017-03-17 16:25:35', 1, 3, '::1'),
(267, 'Menu [The Lodge] Edit Successfully', '2017-03-17 16:25:51', 1, 4, '::1'),
(268, 'Changes on Article \'lodge\' has been saved successf', '2017-03-17 16:48:02', 1, 4, '::1'),
(269, 'Menu [The Lodge] Edit Successfully', '2017-03-17 16:53:11', 1, 4, '::1'),
(270, 'Menu [Contact us] Edit Successfully', '2017-03-17 17:00:59', 1, 4, '::1'),
(271, 'Changes on Article \'lodge\' has been saved successf', '2017-03-17 17:08:12', 1, 4, '::1'),
(272, 'Changes on Article \'lodge\' has been saved successf', '2017-03-17 17:16:10', 1, 4, '::1'),
(273, 'Changes on Article \'lodge\' has been saved successf', '2017-03-17 17:36:21', 1, 4, '::1'),
(274, 'Changes on Article \'lodge\' has been saved successf', '2017-03-17 17:36:32', 1, 4, '::1'),
(275, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-17 17:46:07', 1, 4, '::1'),
(276, 'Menu [The Lodge] Edit Successfully', '2017-03-17 17:46:37', 1, 4, '::1'),
(277, 'Articles  [contact us]Data has deleted successfull', '2017-03-17 17:58:13', 1, 6, '::1'),
(278, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-19 00:38:02', 1, 4, '::1'),
(279, 'Menu [Home] Edit Successfully', '2017-03-19 00:39:33', 1, 4, '::1'),
(280, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-19 00:43:51', 1, 4, '::1'),
(281, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-19 08:25:30', 1, 4, '::1'),
(282, 'Menu [Gallery] Edit Successfully', '2017-03-19 10:28:44', 1, 4, '::1'),
(283, 'Sub Gallery Image [room]Data has added successfull', '2017-03-19 10:58:00', 1, 3, '::1'),
(284, 'Sub Gallery Image  [room]Data has deleted successf', '2017-03-19 10:58:21', 1, 6, '::1'),
(285, 'Sub Gallery Image [room]Data has added successfull', '2017-03-19 10:58:36', 1, 3, '::1'),
(286, 'Menu [photo gallery] Edit Successfully', '2017-03-19 11:10:50', 1, 4, '::1'),
(287, 'Gallery Image [Gallery] Edit Successfully', '2017-03-19 11:57:21', 1, 4, '::1'),
(288, 'Gallery Image [photo Gallery] Edit Successfully', '2017-03-19 11:57:36', 1, 4, '::1'),
(289, 'Sub Gallery Image  [room]Data has deleted successf', '2017-03-19 12:52:13', 1, 6, '::1'),
(290, 'Sub Gallery Image  [cottage]Data has deleted succe', '2017-03-19 14:55:53', 1, 6, '::1'),
(291, 'Menu [photo gallery] Edit Successfully', '2017-03-19 15:19:44', 1, 4, '::1'),
(292, 'Sub Gallery Image [fdsfdsaf]Data has added success', '2017-03-19 15:38:27', 1, 3, '::1'),
(293, 'Sub Gallery Image [bf]Data has added successfully.', '2017-03-19 15:38:44', 1, 3, '::1'),
(294, 'Sub Gallery Image [s]Data has added successfully.', '2017-03-19 15:55:03', 1, 3, '::1'),
(295, 'Sub Gallery Image  [breakfast]Data has deleted suc', '2017-03-19 15:55:12', 1, 6, '::1'),
(296, 'Sub Gallery Image  []Data has deleted successfully', '2017-03-19 15:55:12', 1, 6, '::1'),
(297, 'Sub Gallery Image [51351]Data has added successful', '2017-03-19 16:47:10', 1, 3, '::1'),
(298, 'Sub Gallery Image [5555]Data has added successfull', '2017-03-19 16:49:54', 1, 3, '::1'),
(299, 'Sub Gallery Image  [51351]Data has deleted success', '2017-03-19 16:53:08', 1, 6, '::1'),
(300, 'Sub Gallery Image [l]Data has added successfully.', '2017-03-19 16:53:30', 1, 3, '::1'),
(301, 'Sub Gallery Image [ff]Data has added successfully.', '2017-03-19 17:54:34', 1, 3, '::1'),
(302, 'Sub Gallery Image [pool]Data has added successfull', '2017-03-19 17:54:56', 1, 3, '::1'),
(303, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-19 18:00:47', 1, 4, '::1'),
(304, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-19 18:01:26', 1, 4, '::1'),
(305, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-19 18:01:59', 1, 4, '::1'),
(306, 'Menu [Home] Edit Successfully', '2017-03-19 18:02:46', 1, 4, '::1'),
(307, 'Menu [deluxe room] Edit Successfully', '2017-03-20 10:27:42', 1, 4, '::1'),
(308, 'Menu [Luxirious tents] Edit Successfully', '2017-03-20 10:28:27', 1, 4, '::1'),
(309, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 10:48:35', 1, 4, '::1'),
(310, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 10:50:23', 1, 4, '::1'),
(311, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 13:09:49', 1, 4, '::1'),
(312, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 14:33:45', 1, 4, '::1'),
(313, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 14:44:51', 1, 4, '::1'),
(314, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 14:45:34', 1, 4, '::1'),
(315, 'Features  [bonus]Data has deleted successfully.', '2017-03-20 14:45:54', 1, 6, '::1'),
(316, 'Features [desk]Data has added successfully.', '2017-03-20 14:46:46', 1, 3, '::1'),
(317, 'Features [wifi ] Edit Successfully', '2017-03-20 16:35:28', 1, 4, '::1'),
(318, 'Features [wifi ] Edit Successfully', '2017-03-20 16:36:34', 1, 4, '::1'),
(319, 'Features [high speed wifi ] Edit Successfully', '2017-03-20 16:36:52', 1, 4, '::1'),
(320, 'Features [air conditioner]Data has added successfu', '2017-03-20 16:39:03', 1, 3, '::1'),
(321, 'Features [toileteries]Data has added successfully.', '2017-03-20 16:39:38', 1, 3, '::1'),
(322, 'Features [desk]Data has added successfully.', '2017-03-20 16:40:02', 1, 3, '::1'),
(323, 'Features [shower]Data has added successfully.', '2017-03-20 16:40:26', 1, 3, '::1'),
(324, 'Features [complimentary bottled water]Data has add', '2017-03-20 16:41:08', 1, 3, '::1'),
(325, 'Features [breakfast]Data has added successfully.', '2017-03-20 16:41:34', 1, 3, '::1'),
(326, 'Features  [dinner]Data has deleted successfully.', '2017-03-20 16:41:55', 1, 6, '::1'),
(327, 'Features [ironing facility]Data has added successf', '2017-03-20 16:42:28', 1, 3, '::1'),
(328, 'Features [daily house keeping]Data has added succe', '2017-03-20 16:42:53', 1, 3, '::1'),
(329, 'Features [welcome drink]Data has added successfull', '2017-03-20 16:43:34', 1, 3, '::1'),
(330, 'Features [telephone]Data has added successfully.', '2017-03-20 16:44:14', 1, 3, '::1'),
(331, 'Features [television]Data has added successfully.', '2017-03-20 16:44:33', 1, 3, '::1'),
(332, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 16:45:19', 1, 4, '::1'),
(333, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 17:08:58', 1, 4, '::1'),
(334, 'Features  [desk]Data has deleted successfully.', '2017-03-20 17:09:16', 1, 6, '::1'),
(335, 'Package Stay Edit Successfully', '2017-03-20 17:14:21', 1, 4, '::1'),
(336, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-20 17:17:40', 1, 4, '::1'),
(337, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-20 17:18:09', 1, 4, '::1'),
(338, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 17:21:16', 1, 4, '::1'),
(339, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 17:21:43', 1, 4, '::1'),
(340, 'Package Stay Edit Successfully', '2017-03-20 17:27:14', 1, 4, '::1'),
(341, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 17:28:08', 1, 4, '::1'),
(342, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 17:29:28', 1, 4, '::1'),
(343, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 17:31:07', 1, 4, '::1'),
(344, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 17:32:37', 1, 4, '::1'),
(345, 'Changes on Sub Package \'luxirious tent\' has been s', '2017-03-20 17:33:11', 1, 4, '::1'),
(346, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 17:35:19', 1, 4, '::1'),
(347, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-20 17:35:47', 1, 4, '::1'),
(348, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-20 17:39:30', 1, 4, '::1'),
(349, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-20 17:40:06', 1, 4, '::1'),
(350, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 17:52:53', 1, 4, '::1'),
(351, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 17:53:55', 1, 4, '::1'),
(352, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-20 18:03:32', 1, 4, '::1'),
(353, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-20 18:08:12', 1, 4, '::1'),
(354, 'Menu [row row row your boat] CreatedData has added', '2017-03-20 18:19:54', 1, 3, '::1'),
(355, 'Menu [sun downer] CreatedData has added successful', '2017-03-20 18:20:28', 1, 3, '::1'),
(356, 'Menu [jeep safari] CreatedData has added successfu', '2017-03-20 18:20:51', 1, 3, '::1'),
(357, 'Menu [jungle picnic] CreatedData has added success', '2017-03-20 18:21:08', 1, 3, '::1'),
(358, 'Menu [walk into the wild] CreatedData has added su', '2017-03-20 18:21:26', 1, 3, '::1'),
(359, 'Menu [wild conference and meetings] CreatedData ha', '2017-03-20 18:21:50', 1, 3, '::1'),
(360, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-21 11:07:23', 1, 4, '::1'),
(361, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 11:46:13', 1, 4, '::1'),
(362, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 11:51:09', 1, 4, '::1'),
(363, 'Login: Karma Tara Residency   logged in.', '2017-03-21 11:52:57', 1, 1, '::1'),
(364, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 11:53:17', 1, 4, '::1'),
(365, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 11:54:13', 1, 4, '::1'),
(366, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 12:07:01', 1, 4, '::1'),
(367, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 12:09:26', 1, 4, '::1'),
(368, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 12:13:38', 1, 4, '::1'),
(369, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 12:15:32', 1, 4, '::1'),
(370, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 12:15:59', 1, 4, '::1'),
(371, 'User [admin  ] Edit Successfully', '2017-03-21 12:43:20', 1, 4, '::1'),
(372, 'Login: admin   logged in.', '2017-03-21 12:43:36', 1, 1, '::1'),
(373, 'Login: admin   logged in.', '2017-03-21 14:42:38', 1, 1, '::1'),
(374, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-21 14:43:06', 1, 4, '::1'),
(375, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-21 14:44:25', 1, 4, '::1'),
(376, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 14:47:58', 1, 4, '::1'),
(377, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-21 14:49:23', 1, 4, '::1'),
(378, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 15:02:59', 1, 4, '::1'),
(379, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 15:03:20', 1, 4, '::1'),
(380, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 15:03:39', 1, 4, '::1'),
(381, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 15:06:01', 1, 4, '::1'),
(382, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 16:11:08', 1, 4, '::1'),
(383, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-21 16:17:36', 1, 4, '::1'),
(384, 'Changes on Sub Package \'jeep tata\' has been saved ', '2017-03-21 17:29:43', 1, 4, '::1'),
(385, 'Changes on Sub Package \'jeep safari\' has been save', '2017-03-21 17:30:02', 1, 4, '::1'),
(386, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-22 10:13:30', 1, 4, '::1'),
(387, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-22 10:28:36', 1, 4, '::1'),
(388, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-22 10:29:17', 1, 4, '::1'),
(389, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-22 10:31:24', 1, 4, '::1'),
(390, 'Article \'Our activities\' has added successfully.', '2017-03-22 11:36:38', 1, 3, '::1'),
(391, 'Changes on Article \'Our activities\' has been saved', '2017-03-22 11:37:18', 1, 4, '::1'),
(392, 'Package [activity]Data has added successfully.', '2017-03-22 11:50:19', 1, 3, '::1'),
(393, 'Changes on Article \'Our activities\' has been saved', '2017-03-22 11:51:28', 1, 4, '::1'),
(394, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-22 12:06:41', 1, 4, '::1'),
(395, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-22 12:07:19', 1, 4, '::1'),
(396, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-22 12:58:37', 1, 4, '::1'),
(397, 'Login: admin   logged in.', '2017-03-22 13:10:23', 1, 1, '::1'),
(398, 'User [site admin  ] Edit Successfully', '2017-03-22 14:48:54', 1, 4, '::1'),
(399, 'Login: site admin   logged in.', '2017-03-22 14:49:06', 1, 1, '::1'),
(400, 'Login: site admin   logged in.', '2017-03-22 15:21:01', 1, 1, '::1'),
(401, 'Changes on Sub Package \'row row row your boat\' has', '2017-03-22 15:24:14', 1, 4, '::1'),
(402, 'Changes on Sub Package \'row row row your boat\' has', '2017-03-22 15:45:21', 1, 4, '::1'),
(403, 'Changes on Sub Package \'row row row your boat\' has', '2017-03-22 16:27:46', 1, 4, '::1'),
(404, 'Changes on Sub Package \'row row row your boat\' has', '2017-03-22 16:29:17', 1, 4, '::1'),
(405, 'Changes on Sub Package \'sun downer\' has been saved', '2017-03-22 16:31:03', 1, 4, '::1'),
(406, 'Changes on Sub Package \'sun downer\' has been saved', '2017-03-22 16:32:54', 1, 4, '::1'),
(407, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-22 17:01:59', 1, 4, '::1'),
(408, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-22 17:02:51', 1, 4, '::1'),
(409, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-22 17:03:30', 1, 4, '::1'),
(410, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-22 17:03:43', 1, 4, '::1'),
(411, 'Changes on Sub Package \'row row row your boat\' has', '2017-03-23 10:04:34', 1, 4, '::1'),
(412, 'Features [Room overview]Data has added successfull', '2017-03-23 10:18:22', 1, 3, '::1'),
(413, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:19:20', 1, 4, '::1'),
(414, 'Changes on Sub Package \'Deluxe room\' has been save', '2017-03-23 10:19:52', 1, 4, '::1'),
(415, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:26:22', 1, 4, '::1'),
(416, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:31:35', 1, 4, '::1'),
(417, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:32:54', 1, 4, '::1'),
(418, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:34:19', 1, 4, '::1'),
(419, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:37:16', 1, 4, '::1'),
(420, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:38:21', 1, 4, '::1'),
(421, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 10:54:22', 1, 4, '::1'),
(422, 'Changes on Sub Package \'Luxirious tent\' has been s', '2017-03-23 11:04:10', 1, 4, '::1'),
(423, 'Login: site admin   logged in.', '2017-03-23 12:14:51', 1, 1, '::1'),
(424, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-23 12:15:32', 1, 4, '::1'),
(425, 'SocialNetworking [Facebook]Data has added successf', '2017-03-23 12:36:01', 1, 3, '::1'),
(426, 'SocialNetworking [Youtube]Data has added successfu', '2017-03-23 12:36:24', 1, 3, '::1'),
(427, 'SocialNetworking [Google plus]Data has added succe', '2017-03-23 12:36:48', 1, 3, '::1'),
(428, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-23 12:48:15', 1, 4, '::1'),
(429, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-23 12:49:26', 1, 4, '::1'),
(430, 'Gallery Image [photo Gallery] Edit Successfully', '2017-03-23 13:14:04', 1, 4, '::1'),
(431, 'Sub Gallery Image [Elephant]Data has added success', '2017-03-23 14:14:35', 1, 3, '::1'),
(432, 'Successfully Gallery Properties Settings', '2017-03-23 14:31:10', 1, 4, '::1'),
(433, 'Package [Stay]Data has added successfully.', '2017-03-23 14:38:43', 1, 3, '::1'),
(434, 'Package [Our Activities]Data has added successfull', '2017-03-23 14:47:47', 1, 3, '::1'),
(435, 'Package Stay Edit Successfully', '2017-03-23 14:48:22', 1, 4, '::1'),
(436, 'Package Our Activities Edit Successfully', '2017-03-23 14:49:02', 1, 4, '::1'),
(437, 'Sub Package \'Row Row Row your Boat\' has added succ', '2017-03-23 14:56:51', 1, 3, '::1'),
(438, 'Sub Package \'Sun Downer\' has added successfully.', '2017-03-23 14:58:06', 1, 3, '::1'),
(439, 'Sub Package \'Village Walk\' has added successfully.', '2017-03-23 14:58:40', 1, 3, '::1'),
(440, 'Sub Package \'Jungle Picnic\' has added successfully', '2017-03-23 14:59:11', 1, 3, '::1'),
(441, 'Sub Package \'Jeep Safari\' has added successfully.', '2017-03-23 14:59:51', 1, 3, '::1'),
(442, 'Sub Package \'Luxurious Tents\' has added successful', '2017-03-23 15:15:49', 1, 3, '::1'),
(443, 'Sub Package \'Deluxe Rooms\' has added successfully.', '2017-03-23 15:17:57', 1, 3, '::1'),
(444, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-23 15:59:05', 1, 4, '::1'),
(445, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-23 16:00:08', 1, 4, '::1'),
(446, 'Menu [Luxirious tents] Edit Successfully', '2017-03-23 16:01:05', 1, 4, '::1'),
(447, 'Menu [deluxe room] Edit Successfully', '2017-03-23 16:01:21', 1, 4, '::1'),
(448, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-23 16:59:47', 1, 4, '::1'),
(449, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-23 17:02:36', 1, 4, '::1'),
(450, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-23 17:08:10', 1, 4, '::1'),
(451, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-23 17:18:29', 1, 4, '::1'),
(452, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-23 17:19:30', 1, 4, '::1'),
(453, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-23 17:26:20', 1, 4, '::1'),
(454, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-23 17:27:12', 1, 4, '::1'),
(455, 'Menu [photo gallery] Edit Successfully', '2017-03-23 17:45:34', 1, 4, '::1'),
(456, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-23 17:56:44', 1, 4, '::1'),
(457, 'Menu [Jagatpur Experience] Edit Successfully', '2017-03-23 17:59:06', 1, 4, '::1'),
(458, 'Menu [Gallery] Edit Successfully', '2017-03-23 17:59:16', 1, 4, '::1'),
(459, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-23 18:08:42', 1, 4, '::1'),
(460, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-23 18:09:59', 1, 4, '::1'),
(461, 'Login: site admin   logged in.', '2017-03-24 11:11:40', 1, 1, '::1'),
(462, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-24 11:13:03', 1, 4, '::1'),
(463, 'Features [Room Facilities]Data has added successfu', '2017-03-24 11:24:54', 1, 3, '::1'),
(464, 'Features [Air Conditioner]Data has added successfu', '2017-03-24 11:25:43', 1, 3, '::1'),
(465, 'Features [Garden View]Data has added successfully.', '2017-03-24 11:27:18', 1, 3, '::1'),
(466, 'Features [Tea / Coffee]Data has added successfully', '2017-03-24 11:27:34', 1, 3, '::1'),
(467, 'Features [LED TV]Data has added successfully.', '2017-03-24 11:27:52', 1, 3, '::1'),
(468, 'Features [Jungle View]Data has added successfully.', '2017-03-24 11:28:13', 1, 3, '::1'),
(469, 'Features [Walk in Shower]Data has added successful', '2017-03-24 11:28:32', 1, 3, '::1'),
(470, 'Features [Bath Tub]Data has added successfully.', '2017-03-24 11:28:52', 1, 3, '::1'),
(471, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-24 11:29:41', 1, 4, '::1'),
(472, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 11:30:23', 1, 4, '::1'),
(473, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-24 11:30:34', 1, 4, '::1'),
(474, 'Login: site admin   logged in.', '2017-03-24 12:00:27', 1, 1, '110.44.121.133'),
(475, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-24 12:01:43', 1, 4, '110.44.121.133'),
(476, 'Articles  [Our activities]Data has deleted success', '2017-03-24 12:01:52', 1, 6, '110.44.121.133'),
(477, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-24 12:02:42', 1, 4, '110.44.121.133'),
(478, 'Login: site admin   logged in.', '2017-03-24 12:06:34', 1, 1, '110.44.121.133'),
(479, 'Menu [Luxurious tents] Edit Successfully', '2017-03-24 12:07:52', 1, 4, '110.44.121.133'),
(480, 'Slideshows  [Welcome To Karma Tara Residency]Data ', '2017-03-24 12:08:45', 1, 6, '110.44.121.133'),
(481, 'Slideshow  [Welcome To Karma Tara Residency]Data h', '2017-03-24 12:08:45', 1, 6, '110.44.121.133'),
(482, 'Slideshows  [experience the jungle in tented luxur', '2017-03-24 12:13:13', 1, 6, '110.44.121.133'),
(483, 'Slideshow  [experience the jungle in tented luxury', '2017-03-24 12:13:13', 1, 6, '110.44.121.133'),
(484, 'Slideshows  [experience the jungle in tented luxur', '2017-03-24 12:13:16', 1, 6, '110.44.121.133'),
(485, 'Slideshow  [experience the jungle in tented luxury', '2017-03-24 12:13:16', 1, 6, '110.44.121.133'),
(486, 'Slideshow [Welcome to an unmatched jungle experien', '2017-03-24 12:14:37', 1, 4, '110.44.121.133'),
(487, 'Slideshow [Experience the jungle in tented luxury]', '2017-03-24 12:16:46', 1, 3, '110.44.121.133'),
(488, 'Slideshow [Experience the jungle in tented luxury]', '2017-03-24 12:17:22', 1, 3, '110.44.121.133'),
(489, 'Slideshow [Experience the jungle in deluxe comfort', '2017-03-24 12:18:19', 1, 3, '110.44.121.133'),
(490, 'Slideshow [Share the experience with friends, old ', '2017-03-24 12:20:04', 1, 3, '110.44.121.133'),
(491, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-03-24 12:25:52', 1, 4, '110.44.121.133'),
(492, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-24 12:27:22', 1, 4, '110.44.121.133'),
(493, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-24 12:33:40', 1, 4, '110.44.121.133'),
(494, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-03-24 12:38:46', 1, 4, '110.44.121.133'),
(495, 'Changes on Article \'the lodge\' has been saved succ', '2017-03-24 12:40:48', 1, 4, '110.44.121.133'),
(496, 'Package Stay Edit Successfully', '2017-03-24 12:48:17', 1, 4, '110.44.121.133'),
(497, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 12:53:42', 1, 4, '110.44.121.133'),
(498, 'Features [Shower] Edit Successfully', '2017-03-24 13:01:31', 1, 4, '110.44.121.133'),
(499, 'Features [Breakfast]Data has added successfully.', '2017-03-24 13:02:05', 1, 3, '110.44.121.133'),
(500, 'Features [Shower] Edit Successfully', '2017-03-24 15:04:29', 1, 4, '110.44.121.133'),
(501, 'Features [Shower] Edit Successfully', '2017-03-24 15:05:32', 1, 4, '110.44.121.133'),
(502, 'Features [Breakfast] Edit Successfully', '2017-03-24 16:06:46', 1, 4, '110.44.121.133'),
(503, 'Features [High speed WIFI]Data has added successfu', '2017-03-24 16:07:41', 1, 3, '110.44.121.133'),
(504, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 16:08:39', 1, 4, '110.44.121.133'),
(505, 'Features [High speed WIFI] Edit Successfully', '2017-03-24 17:28:28', 1, 4, '110.44.121.133'),
(506, 'Features [Breakfast] Edit Successfully', '2017-03-24 17:29:04', 1, 4, '110.44.121.133'),
(507, 'Features [Desk]Data has added successfully.', '2017-03-24 17:29:41', 1, 3, '110.44.121.133'),
(508, 'Features [Toiletries]Data has added successfully.', '2017-03-24 17:30:25', 1, 3, '110.44.121.133'),
(509, 'Features [Shower] Edit Successfully', '2017-03-24 17:32:07', 1, 4, '110.44.121.133'),
(510, 'Features  [Walk in Shower]Data has deleted success', '2017-03-24 17:33:17', 1, 6, '110.44.121.133'),
(511, 'Features [Ironing Facilities]Data has added succes', '2017-03-24 17:35:09', 1, 3, '110.44.121.133'),
(512, 'Features [Daily Housekeeping]Data has added succes', '2017-03-24 17:37:02', 1, 3, '110.44.121.133'),
(513, 'Features [Welcome Drink]Data has added successfull', '2017-03-24 17:38:34', 1, 3, '110.44.121.133'),
(514, 'Features [Complementary Water Bottle]Data has adde', '2017-03-24 17:43:04', 1, 3, '110.44.121.133'),
(515, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 17:43:42', 1, 4, '110.44.121.133'),
(516, 'Features [Airport pickup]Data has added successful', '2017-03-24 17:48:13', 1, 3, '110.44.121.133'),
(517, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 17:48:38', 1, 4, '110.44.121.133'),
(518, 'Features [Airport pickup] Edit Successfully', '2017-03-24 17:53:37', 1, 4, '110.44.121.133'),
(519, 'Features [Airport pickup] Edit Successfully', '2017-03-24 17:58:31', 1, 4, '110.44.121.133'),
(520, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-24 18:07:47', 1, 4, '110.44.121.133'),
(521, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 18:08:31', 1, 4, '110.44.121.133'),
(522, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-03-24 18:10:44', 1, 4, '110.44.121.133'),
(523, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-03-24 18:11:00', 1, 4, '110.44.121.133'),
(524, 'Gallery Image [photo Gallery] Edit Successfully', '2017-03-24 18:13:08', 1, 4, '110.44.121.133'),
(525, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(526, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(527, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(528, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(529, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(530, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(531, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(532, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(533, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(534, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(535, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(536, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(537, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(538, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(539, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(540, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(541, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(542, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(543, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(544, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(545, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(546, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(547, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(548, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(549, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(550, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(551, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(552, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(553, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-03-24 18:17:23', 1, 3, '110.44.121.133'),
(554, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-24 18:20:45', 1, 4, '110.44.121.133'),
(555, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-03-24 18:23:41', 1, 4, '110.44.121.133'),
(556, 'Package Our Activities Edit Successfully', '2017-03-24 18:24:40', 1, 4, '110.44.121.133'),
(557, 'Changes on Sub Package \'Village Walk\' has been sav', '2017-03-24 18:26:54', 1, 4, '110.44.121.133'),
(558, 'Changes on Sub Package \'Jungle Picnic\' has been sa', '2017-03-24 18:27:24', 1, 4, '110.44.121.133'),
(559, 'Changes on Sub Package \'Jeep Safari\' has been save', '2017-03-24 18:27:48', 1, 4, '110.44.121.133'),
(560, 'Features [Breakfast] Edit Successfully', '2017-03-26 16:36:02', 1, 4, '110.44.121.133'),
(561, 'Features [Breakfast] Edit Successfully', '2017-03-26 16:47:30', 1, 4, '110.44.121.133'),
(562, 'Features [Breakfast] Edit Successfully', '2017-03-26 16:55:13', 1, 4, '110.44.121.133'),
(563, 'Features [High speed WIFI] Edit Successfully', '2017-03-26 16:56:47', 1, 4, '110.44.121.133'),
(564, 'Login: site admin   logged in.', '2017-03-30 18:09:31', 1, 1, '110.44.121.133'),
(565, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-30 18:10:15', 1, 4, '110.44.121.133'),
(566, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-03-30 18:12:24', 1, 4, '110.44.121.133'),
(567, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-03-30 18:20:00', 1, 4, '110.44.121.133'),
(568, 'Changes on Sub Package \'Village Walk\' has been sav', '2017-03-30 18:20:19', 1, 4, '110.44.121.133'),
(569, 'Changes on Sub Package \'Jungle Picnic\' has been sa', '2017-03-30 18:20:38', 1, 4, '110.44.121.133'),
(570, 'Changes on Sub Package \'Jeep Safari\' has been save', '2017-03-30 18:20:57', 1, 4, '110.44.121.133'),
(571, 'Login: site admin   logged in.', '2017-03-30 18:30:37', 1, 1, '110.44.121.133'),
(572, 'Booking Request []Data has deleted successfully.', '2017-03-30 18:31:06', 1, 6, '110.44.121.133'),
(573, 'Login: site admin   logged in.', '2017-04-03 14:49:56', 1, 1, '110.44.121.133'),
(574, 'Changes on Article \'the lodge\' has been saved succ', '2017-04-03 14:50:59', 1, 4, '110.44.121.133'),
(575, 'Features [Desk] Edit Successfully', '2017-04-03 14:57:58', 1, 4, '110.44.121.133'),
(576, 'Features [Desk] Edit Successfully', '2017-04-03 15:13:07', 1, 4, '110.44.121.133'),
(577, 'Features [Desk] Edit Successfully', '2017-04-03 15:14:54', 1, 4, '110.44.121.133'),
(578, 'Features [Desk] Edit Successfully', '2017-04-03 15:16:01', 1, 4, '110.44.121.133'),
(579, 'Features [Desk] Edit Successfully', '2017-04-03 15:16:46', 1, 4, '110.44.121.133'),
(580, 'Features [Desk] Edit Successfully', '2017-04-03 15:19:27', 1, 4, '110.44.121.133'),
(581, 'Features [Toiletries] Edit Successfully', '2017-04-03 15:25:02', 1, 4, '110.44.121.133'),
(582, 'Features [Ironing Facilities] Edit Successfully', '2017-04-03 15:26:24', 1, 4, '110.44.121.133'),
(583, 'Features [Daily Housekeeping] Edit Successfully', '2017-04-03 15:28:20', 1, 4, '110.44.121.133'),
(584, 'Features [Welcome Drink] Edit Successfully', '2017-04-03 15:31:17', 1, 4, '110.44.121.133'),
(585, 'Features [Air Conditioner] Edit Successfully', '2017-04-03 15:33:47', 1, 4, '110.44.121.133'),
(586, 'Features [Complementary Water Bottle] Edit Success', '2017-04-03 15:35:18', 1, 4, '110.44.121.133'),
(587, 'Features [Airport pickup] Edit Successfully', '2017-04-03 15:43:07', 1, 4, '110.44.121.133'),
(588, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-04-03 15:44:06', 1, 4, '110.44.121.133'),
(589, 'Login: site admin   logged in.', '2017-04-06 11:07:51', 1, 1, '110.44.121.133'),
(590, 'User [site admin  ] Edit Successfully', '2017-04-06 11:29:07', 1, 4, '110.44.121.133'),
(591, 'Login: site admin   logged in.', '2017-04-06 11:29:18', 1, 1, '110.44.121.133'),
(592, 'Login: site admin   logged in.', '2017-04-20 16:40:40', 1, 1, '110.44.121.133'),
(593, 'Changes on Sub Package \'Row Row Row your Boats\' ha', '2017-04-20 16:42:38', 1, 4, '110.44.121.133'),
(594, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-04-20 16:43:02', 1, 4, '110.44.121.133'),
(595, 'Sub Package \'Backup\' has added successfully.', '2017-04-20 16:44:01', 1, 3, '110.44.121.133'),
(596, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-04-20 16:45:16', 1, 4, '110.44.121.133'),
(597, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-04-20 16:45:49', 1, 4, '110.44.121.133'),
(598, 'Changes on Sub Package \'Village Walk\' has been sav', '2017-04-20 16:46:15', 1, 4, '110.44.121.133'),
(599, 'Changes on Sub Package \'Jungle Picnic\' has been sa', '2017-04-20 16:46:40', 1, 4, '110.44.121.133'),
(600, 'Changes on Sub Package \'Jeep Safari\' has been save', '2017-04-20 16:47:04', 1, 4, '110.44.121.133'),
(601, 'Login: site admin   logged in.', '2017-05-04 15:00:28', 1, 1, '110.44.121.133'),
(602, 'Login: site admin   logged in.', '2017-05-16 14:12:58', 1, 1, '110.44.121.133'),
(603, 'Login: site admin   logged in.', '2017-05-17 17:05:27', 1, 1, '110.44.121.133'),
(604, 'Login: site admin   logged in.', '2017-05-18 18:07:58', 1, 1, '110.44.121.133'),
(605, 'Login: site admin   logged in.', '2017-05-19 10:51:40', 1, 1, '110.44.121.133'),
(606, 'Login: site admin   logged in.', '2017-05-22 11:16:26', 1, 1, '110.44.121.133'),
(607, 'Login: site admin   logged in.', '2017-05-22 15:15:38', 1, 1, '110.44.121.133'),
(608, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-05-22 15:16:13', 1, 4, '110.44.121.133'),
(609, 'Login: site admin   logged in.', '2017-06-15 10:42:56', 1, 1, '110.44.121.133'),
(610, 'Login: site admin   logged in.', '2017-06-15 18:39:06', 1, 1, '110.44.121.133'),
(611, 'Login: site admin   logged in.', '2017-06-15 18:40:38', 1, 1, '110.44.121.133'),
(612, 'Login: site admin   logged in.', '2017-06-15 18:41:57', 1, 1, '110.44.121.133'),
(613, 'Login: site admin   logged in.', '2017-06-15 18:43:17', 1, 1, '110.44.121.133'),
(614, 'Login: site admin   logged in.', '2017-06-15 18:46:20', 1, 1, '110.44.121.133'),
(615, 'Login: site admin   logged in.', '2017-06-15 18:55:16', 1, 1, '110.44.121.133'),
(616, 'Login: site admin   logged in.', '2017-06-15 20:37:19', 1, 1, '27.34.16.63'),
(617, 'Login: site admin   logged in.', '2017-06-15 20:59:25', 1, 1, '27.34.16.63'),
(618, 'Login: site admin   logged in.', '2017-06-15 21:46:22', 1, 1, '27.34.16.63'),
(619, 'Login: site admin   logged in.', '2017-06-19 10:33:55', 1, 1, '110.44.121.133'),
(620, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-06-19 10:36:44', 1, 4, '110.44.121.133'),
(621, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-06-19 10:37:32', 1, 4, '110.44.121.133'),
(622, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 10:38:28', 1, 4, '110.44.121.133'),
(623, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 10:38:52', 1, 4, '110.44.121.133'),
(624, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-06-19 10:39:14', 1, 4, '110.44.121.133'),
(625, 'Login: site admin   logged in.', '2017-06-19 12:24:45', 1, 1, '110.44.121.133'),
(626, 'Menu [row row row your boat] Edit Successfully', '2017-06-19 12:25:33', 1, 4, '110.44.121.133'),
(627, 'Menu [sun downer] Edit Successfully', '2017-06-19 12:25:50', 1, 4, '110.44.121.133'),
(628, 'Menu [jeep safari] Edit Successfully', '2017-06-19 12:26:19', 1, 4, '110.44.121.133'),
(629, 'Menu [jungle picnic] Edit Successfully', '2017-06-19 12:26:32', 1, 4, '110.44.121.133'),
(630, 'Menu [walk into the wild] Edit Successfully', '2017-06-19 12:26:44', 1, 4, '110.44.121.133'),
(631, 'Menu [wild conference and meetings] Edit Successfu', '2017-06-19 12:27:07', 1, 4, '110.44.121.133'),
(632, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 12:56:25', 1, 4, '110.44.121.133'),
(633, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 12:56:46', 1, 4, '110.44.121.133'),
(634, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 12:57:26', 1, 4, '110.44.121.133'),
(635, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 12:58:14', 1, 4, '110.44.121.133'),
(636, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-06-19 13:05:11', 1, 4, '110.44.121.133'),
(637, 'Login: site admin   logged in.', '2017-06-19 14:42:30', 1, 1, '110.44.121.133'),
(638, 'SocialNetworking [Facebook] Edit Successfully', '2017-06-19 14:57:57', 1, 4, '110.44.121.133'),
(639, 'SocialNetworking [Youtube] Edit Successfully', '2017-06-19 14:58:27', 1, 4, '110.44.121.133'),
(640, 'Login: site admin   logged in.', '2017-06-19 16:06:08', 1, 1, '110.44.121.133'),
(641, 'Gallery Image [photo Gallery] Edit Successfully', '2017-06-19 16:06:20', 1, 4, '110.44.121.133'),
(642, 'Gallery [Video Gallery]Data has added successfully', '2017-06-19 16:07:37', 1, 3, '110.44.121.133'),
(643, 'Menu [Video Gallery] CreatedData has added success', '2017-06-19 16:07:56', 1, 3, '110.44.121.133'),
(644, 'Sub Gallery Video [Jagatpur Lodge by Annapurna]Dat', '2017-06-19 16:11:22', 1, 3, '110.44.121.133'),
(645, 'Sub Gallery Video [Tharu Lunch at Jagatpur Lodge]D', '2017-06-19 16:12:24', 1, 3, '110.44.121.133'),
(646, 'Login: site admin   logged in.', '2017-06-29 17:27:23', 1, 1, '110.44.121.133'),
(647, 'Login: site admin   logged in.', '2017-06-30 11:39:38', 1, 1, '183.67.56.3'),
(648, 'Login: site admin   logged in.', '2017-07-11 14:36:08', 1, 1, '110.44.121.133'),
(649, 'Login: site admin   logged in.', '2017-07-11 14:56:40', 1, 1, '110.44.121.133'),
(650, 'Changes on Article \'the lodge\' has been saved succ', '2017-07-11 15:02:20', 1, 4, '110.44.121.133'),
(651, 'Changes on Article \'the lodge\' has been saved succ', '2017-07-11 15:02:38', 1, 4, '110.44.121.133'),
(652, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2017-07-11 15:03:42', 1, 4, '110.44.121.133'),
(653, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-07-11 15:04:19', 1, 4, '110.44.121.133'),
(654, 'Package Our Activities Edit Successfully', '2017-07-11 15:07:33', 1, 4, '110.44.121.133'),
(655, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-07-11 15:09:55', 1, 4, '110.44.121.133'),
(656, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-07-11 15:10:44', 1, 4, '110.44.121.133'),
(657, 'Changes on Article \'Welcome to Jagatpur Lodge\' has', '2017-07-11 15:11:00', 1, 4, '110.44.121.133'),
(658, 'Login: site admin   logged in.', '2017-07-11 16:22:11', 1, 1, '110.44.121.133'),
(659, 'Sub Gallery Video [Tharu Lunch at Jagatpur Lodge]D', '2017-07-11 16:25:56', 1, 3, '110.44.121.133'),
(660, 'Login: site admin   logged in.', '2017-07-11 17:17:57', 1, 1, '110.44.121.133'),
(661, 'Sub Gallery Video [Jungle walk - Jagatpur Lodge Ex', '2017-07-11 17:18:31', 1, 3, '110.44.121.133'),
(662, 'Login: site admin   logged in.', '2017-07-23 15:17:03', 1, 1, '110.44.121.133'),
(663, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-07-23 15:18:15', 1, 4, '110.44.121.133'),
(664, 'Menu [row row row your boat] Edit Successfully', '2017-07-23 15:18:37', 1, 4, '110.44.121.133'),
(665, 'Menu [row row row your boat] Edit Successfully', '2017-07-23 15:20:38', 1, 4, '110.44.121.133'),
(666, 'Login: site admin   logged in.', '2017-07-23 15:24:10', 1, 1, '110.44.121.133'),
(667, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-07-23 15:32:55', 1, 4, '110.44.121.133'),
(668, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-07-23 15:38:38', 1, 4, '110.44.121.133'),
(669, 'Menu [row row row your boat] Edit Successfully', '2017-07-23 15:38:59', 1, 4, '110.44.121.133'),
(670, 'Menu [sun downer] Edit Successfully', '2017-07-23 15:39:21', 1, 4, '110.44.121.133'),
(671, 'Menu [row row row your boat] Edit Successfully', '2017-07-23 15:40:13', 1, 4, '110.44.121.133'),
(672, 'Menu [sun downer] Edit Successfully', '2017-07-23 15:40:27', 1, 4, '110.44.121.133'),
(673, 'Changes on Sub Package \'Jeep Safari\' has been save', '2017-07-23 15:45:57', 1, 4, '110.44.121.133'),
(674, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-07-23 15:47:57', 1, 4, '110.44.121.133'),
(675, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-07-23 15:48:36', 1, 4, '110.44.121.133'),
(676, 'Login: site admin   logged in.', '2017-07-23 16:21:19', 1, 1, '110.44.121.133'),
(677, 'Menu [row row row your boat] Edit Successfully', '2017-07-23 16:21:46', 1, 4, '110.44.121.133'),
(678, 'Menu [sun downer] Edit Successfully', '2017-07-23 16:22:30', 1, 4, '110.44.121.133'),
(679, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-07-23 16:24:19', 1, 4, '110.44.121.133'),
(680, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-07-23 16:25:50', 1, 4, '110.44.121.133'),
(681, 'Menu [sun downer] Edit Successfully', '2017-07-23 16:26:28', 1, 4, '110.44.121.133'),
(682, 'Menu [row row row your boat] Edit Successfully', '2017-07-23 16:26:46', 1, 4, '110.44.121.133'),
(683, 'Login: site admin   logged in.', '2017-08-02 13:42:05', 1, 1, '110.44.116.77'),
(684, 'Login: site admin   logged in.', '2017-08-03 17:47:42', 1, 1, '110.44.121.133'),
(685, 'User [site admin  ] Edit Successfully', '2017-08-03 17:49:34', 1, 4, '110.44.121.133'),
(686, 'Login: site admin   logged in.', '2017-08-03 17:51:24', 1, 1, '110.44.121.133'),
(687, 'Login: site admin   logged in.', '2017-08-04 10:54:40', 1, 1, '110.44.121.133'),
(688, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-08-04 10:55:47', 1, 4, '110.44.121.133'),
(689, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-08-04 10:56:33', 1, 4, '110.44.121.133'),
(690, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-08-04 10:57:18', 1, 4, '110.44.121.133'),
(691, 'Login: site admin   logged in.', '2017-08-09 14:27:48', 1, 1, '110.44.121.133'),
(692, 'Menu [row row row your boat] Edit Successfully', '2017-08-09 14:29:01', 1, 4, '110.44.121.133'),
(693, 'Login: site admin   logged in.', '2017-08-09 14:34:40', 1, 1, '110.44.116.77'),
(694, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:39:15', 1, 4, '110.44.116.77'),
(695, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:39:59', 1, 4, '110.44.116.77'),
(696, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:41:20', 1, 4, '110.44.116.77'),
(697, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:43:06', 1, 4, '110.44.116.77'),
(698, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:44:12', 1, 4, '110.44.116.77'),
(699, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:47:03', 1, 4, '110.44.116.77'),
(700, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-08-09 14:47:53', 1, 4, '110.44.116.77'),
(701, 'Sub Package \'Walk In The Wild\' has added successfu', '2017-08-09 15:03:03', 1, 3, '110.44.121.133'),
(702, 'Menu [walk into the wild] Edit Successfully', '2017-08-09 15:03:25', 1, 4, '110.44.121.133'),
(703, 'Sub Package \'Birding\' has added successfully.', '2017-08-09 15:11:29', 1, 3, '110.44.121.133'),
(704, 'Menu [Birding] CreatedData has added successfully.', '2017-08-09 15:11:51', 1, 3, '110.44.121.133'),
(705, 'Menu [sun downer] Edit Successfully', '2017-08-09 15:12:22', 1, 4, '110.44.121.133'),
(706, 'Menu [Jeep Safari] Edit Successfully', '2017-08-09 15:13:02', 1, 4, '110.44.121.133'),
(707, 'Menu [Jungle Picnic] Edit Successfully', '2017-08-09 15:13:28', 1, 4, '110.44.121.133'),
(708, 'Changes on Sub Package \'Sun Downer\' has been saved', '2017-08-09 15:15:01', 1, 4, '110.44.121.133'),
(709, 'Changes on Sub Package \'Village Walk\' has been sav', '2017-08-09 15:15:22', 1, 4, '110.44.121.133'),
(710, 'Changes on Sub Package \'Jungle Picnic\' has been sa', '2017-08-09 15:15:41', 1, 4, '110.44.121.133'),
(711, 'Changes on Sub Package \'Jeep Safari\' has been save', '2017-08-09 15:16:07', 1, 4, '110.44.121.133'),
(712, 'Login: site admin   logged in.', '2017-08-11 15:12:45', 1, 1, '110.44.121.133'),
(713, 'Login: site admin   logged in.', '2017-08-11 15:25:25', 1, 1, '110.44.121.133'),
(714, 'Login: site admin   logged in.', '2017-08-11 15:58:51', 1, 1, '110.44.121.133'),
(715, 'Login: site admin   logged in.', '2017-08-11 18:55:31', 1, 1, '110.44.121.133'),
(716, 'Login: site admin   logged in.', '2017-08-15 14:44:15', 1, 1, '110.44.121.133'),
(717, 'Login: site admin   logged in.', '2017-09-06 14:02:37', 1, 1, '110.44.121.133'),
(718, 'Login: site admin   logged in.', '2017-09-07 18:06:58', 1, 1, '110.44.121.133'),
(719, 'Login: site admin   logged in.', '2017-09-07 22:45:08', 1, 1, '27.34.20.151'),
(720, 'Login: site admin   logged in.', '2017-09-08 11:02:45', 1, 1, '110.44.121.133'),
(721, 'Login: site admin   logged in.', '2017-09-08 13:04:38', 1, 1, '110.44.121.133'),
(722, 'Login: site admin   logged in.', '2017-09-08 14:12:40', 1, 1, '110.44.121.133'),
(723, 'Login: site admin   logged in.', '2017-09-08 14:13:55', 1, 1, '110.44.121.133'),
(724, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 14:44:42', 1, 3, '110.44.121.133'),
(725, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:12:04', 1, 6, '110.44.121.133'),
(726, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:12:33', 1, 3, '110.44.121.133'),
(727, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:18:08', 1, 6, '110.44.121.133'),
(728, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:18:34', 1, 3, '110.44.121.133'),
(729, 'Package Stay Edit Successfully', '2017-09-08 15:27:54', 1, 4, '110.44.121.133'),
(730, 'Sub Gallery Image  [Elephant]Data has deleted succ', '2017-09-08 15:44:57', 1, 6, '110.44.121.133'),
(731, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:00', 1, 6, '110.44.121.133'),
(732, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:00', 1, 6, '110.44.121.133'),
(733, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:02', 1, 6, '110.44.121.133'),
(734, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:02', 1, 6, '110.44.121.133'),
(735, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:02', 1, 6, '110.44.121.133'),
(736, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:05', 1, 6, '110.44.121.133'),
(737, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:05', 1, 6, '110.44.121.133'),
(738, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:05', 1, 6, '110.44.121.133'),
(739, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:05', 1, 6, '110.44.121.133'),
(740, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:08', 1, 6, '110.44.121.133'),
(741, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:08', 1, 6, '110.44.121.133'),
(742, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:08', 1, 6, '110.44.121.133'),
(743, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:08', 1, 6, '110.44.121.133'),
(744, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:08', 1, 6, '110.44.121.133'),
(745, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:12', 1, 6, '110.44.121.133'),
(746, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:12', 1, 6, '110.44.121.133'),
(747, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:12', 1, 6, '110.44.121.133'),
(748, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:12', 1, 6, '110.44.121.133'),
(749, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:12', 1, 6, '110.44.121.133'),
(750, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:12', 1, 6, '110.44.121.133'),
(751, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(752, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(753, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(754, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(755, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(756, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(757, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:14', 1, 6, '110.44.121.133'),
(758, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(759, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(760, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(761, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(762, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(763, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(764, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(765, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:20', 1, 6, '110.44.121.133'),
(766, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(767, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(768, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(769, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(770, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(771, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(772, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(773, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(774, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:22', 1, 6, '110.44.121.133'),
(775, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(776, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(777, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(778, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(779, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(780, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(781, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(782, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(783, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(784, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:24', 1, 6, '110.44.121.133'),
(785, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(786, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(787, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(788, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(789, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(790, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(791, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(792, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(793, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(794, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(795, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:28', 1, 6, '110.44.121.133'),
(796, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(797, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(798, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(799, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(800, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(801, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(802, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(803, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(804, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(805, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(806, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(807, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:31', 1, 6, '110.44.121.133'),
(808, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:32', 1, 6, '110.44.121.133'),
(809, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:32', 1, 6, '110.44.121.133'),
(810, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:32', 1, 6, '110.44.121.133'),
(811, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(812, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(813, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(814, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(815, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(816, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(817, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(818, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(819, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(820, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:33', 1, 6, '110.44.121.133'),
(821, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:35', 1, 6, '110.44.121.133'),
(822, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:35', 1, 6, '110.44.121.133'),
(823, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:35', 1, 6, '110.44.121.133'),
(824, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:35', 1, 6, '110.44.121.133'),
(825, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:35', 1, 6, '110.44.121.133'),
(826, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:35', 1, 6, '110.44.121.133'),
(827, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(828, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(829, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(830, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(831, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(832, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(833, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(834, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:36', 1, 6, '110.44.121.133'),
(835, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(836, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(837, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(838, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(839, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(840, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(841, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(842, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:37', 1, 6, '110.44.121.133'),
(843, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(844, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(845, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(846, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(847, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(848, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(849, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:38', 1, 6, '110.44.121.133'),
(850, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:39', 1, 6, '110.44.121.133'),
(851, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:39', 1, 6, '110.44.121.133'),
(852, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:39', 1, 6, '110.44.121.133'),
(853, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:39', 1, 6, '110.44.121.133'),
(854, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:39', 1, 6, '110.44.121.133'),
(855, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:39', 1, 6, '110.44.121.133'),
(856, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(857, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(858, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(859, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(860, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(861, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(862, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(863, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(864, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(865, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:40', 1, 6, '110.44.121.133'),
(866, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(867, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(868, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(869, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(870, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(871, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(872, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(873, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(874, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(875, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(876, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(877, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:42', 1, 6, '110.44.121.133'),
(878, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:43', 1, 6, '110.44.121.133'),
(879, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:43', 1, 6, '110.44.121.133'),
(880, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:43', 1, 6, '110.44.121.133'),
(881, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:43', 1, 6, '110.44.121.133'),
(882, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:43', 1, 6, '110.44.121.133'),
(883, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(884, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(885, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(886, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(887, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(888, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(889, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(890, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(891, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(892, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(893, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(894, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(895, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(896, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(897, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(898, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(899, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(900, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:45', 1, 6, '110.44.121.133'),
(901, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(902, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(903, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(904, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(905, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(906, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(907, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(908, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(909, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:47', 1, 6, '110.44.121.133'),
(910, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(911, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(912, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(913, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(914, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(915, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(916, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(917, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(918, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(919, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:48', 1, 6, '110.44.121.133'),
(920, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:49', 1, 6, '110.44.121.133'),
(921, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:49', 1, 6, '110.44.121.133'),
(922, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:49', 1, 6, '110.44.121.133'),
(923, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:49', 1, 6, '110.44.121.133'),
(924, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:49', 1, 6, '110.44.121.133'),
(925, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:49', 1, 6, '110.44.121.133'),
(926, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(927, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(928, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(929, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(930, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(931, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(932, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(933, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(934, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(935, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(936, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(937, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(938, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(939, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:50', 1, 6, '110.44.121.133'),
(940, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:55', 1, 6, '110.44.121.133'),
(941, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:55', 1, 6, '110.44.121.133'),
(942, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:55', 1, 6, '110.44.121.133'),
(943, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:55', 1, 6, '110.44.121.133'),
(944, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:55', 1, 6, '110.44.121.133'),
(945, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:55', 1, 6, '110.44.121.133'),
(946, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(947, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(948, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(949, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(950, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(951, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(952, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(953, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(954, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(955, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(956, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(957, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(958, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(959, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(960, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:56', 1, 6, '110.44.121.133'),
(961, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(962, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(963, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(964, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(965, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(966, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(967, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(968, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(969, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(970, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(971, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(972, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:57', 1, 6, '110.44.121.133'),
(973, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(974, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(975, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(976, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(977, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(978, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(979, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(980, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(981, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(982, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:45:58', 1, 6, '110.44.121.133'),
(983, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:00', 1, 6, '110.44.121.133'),
(984, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:00', 1, 6, '110.44.121.133'),
(985, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:00', 1, 6, '110.44.121.133'),
(986, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:00', 1, 6, '110.44.121.133'),
(987, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:00', 1, 6, '110.44.121.133'),
(988, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:00', 1, 6, '110.44.121.133'),
(989, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(990, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(991, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(992, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(993, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(994, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(995, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(996, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(997, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(998, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(999, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1000, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1001, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1002, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1003, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1004, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1005, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:01', 1, 6, '110.44.121.133'),
(1006, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:02', 1, 6, '110.44.121.133'),
(1007, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:02', 1, 6, '110.44.121.133'),
(1008, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:02', 1, 6, '110.44.121.133'),
(1009, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:02', 1, 6, '110.44.121.133'),
(1010, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:02', 1, 6, '110.44.121.133'),
(1011, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:02', 1, 6, '110.44.121.133'),
(1012, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1013, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1014, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1015, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1016, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1017, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1018, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1019, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1020, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1021, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1022, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1023, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1024, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1025, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1026, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1027, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1028, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1029, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:03', 1, 6, '110.44.121.133'),
(1030, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1031, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1032, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1033, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1034, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1035, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1036, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1037, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1038, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1039, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1040, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1041, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1042, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1043, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1044, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1045, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1046, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:05', 1, 6, '110.44.121.133'),
(1047, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1048, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1049, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1050, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1051, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1052, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1053, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1054, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:06', 1, 6, '110.44.121.133'),
(1055, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1056, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1057, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1058, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1059, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1060, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1061, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1062, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1063, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1064, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1065, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1066, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1067, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1068, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1069, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1070, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1071, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:07', 1, 6, '110.44.121.133'),
(1072, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1073, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1074, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1075, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1076, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1077, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1078, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1079, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1080, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:08', 1, 6, '110.44.121.133'),
(1081, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:10', 1, 6, '110.44.121.133'),
(1082, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:10', 1, 6, '110.44.121.133'),
(1083, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:10', 1, 6, '110.44.121.133'),
(1084, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:10', 1, 6, '110.44.121.133'),
(1085, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:10', 1, 6, '110.44.121.133'),
(1086, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:10', 1, 6, '110.44.121.133'),
(1087, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1088, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1089, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1090, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1091, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1092, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1093, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1094, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1095, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1096, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1097, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1098, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1099, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1100, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1101, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1102, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1103, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1104, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:11', 1, 6, '110.44.121.133'),
(1105, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:12', 1, 6, '110.44.121.133'),
(1106, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:12', 1, 6, '110.44.121.133'),
(1107, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:12', 1, 6, '110.44.121.133'),
(1108, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1109, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1110, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1111, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1112, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1113, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1114, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1115, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1116, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1117, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1118, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1119, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1120, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1121, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1122, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1123, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1124, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1125, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:13', 1, 6, '110.44.121.133'),
(1126, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1127, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1128, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1129, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1130, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1131, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1132, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1133, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1134, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1135, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:14', 1, 6, '110.44.121.133'),
(1136, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:15', 1, 6, '110.44.121.133'),
(1137, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:15', 1, 6, '110.44.121.133'),
(1138, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:15', 1, 6, '110.44.121.133'),
(1139, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:15', 1, 6, '110.44.121.133'),
(1140, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:15', 1, 6, '110.44.121.133'),
(1141, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:15', 1, 6, '110.44.121.133'),
(1142, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1143, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1144, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1145, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1146, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1147, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1148, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1149, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1150, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1151, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1152, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1153, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1154, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1155, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1156, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:16', 1, 6, '110.44.121.133'),
(1157, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1158, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1159, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1160, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1161, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1162, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1163, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1164, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:17', 1, 6, '110.44.121.133'),
(1165, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1166, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1167, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1168, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1169, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1170, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1171, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1172, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1173, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1174, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1175, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1176, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1177, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1178, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1179, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1180, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1181, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1182, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:18', 1, 6, '110.44.121.133'),
(1183, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1184, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1185, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1186, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1187, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1188, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1189, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1190, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1191, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1192, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1193, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1194, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:46:19', 1, 6, '110.44.121.133'),
(1195, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1196, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1197, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1198, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1199, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1200, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1201, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1202, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1203, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1204, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1205, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1206, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:20', 1, 6, '110.44.121.133'),
(1207, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1208, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1209, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1210, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1211, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1212, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1213, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1214, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1215, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1216, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1217, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1218, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1219, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1220, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1221, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1222, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1223, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1224, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:21', 1, 6, '110.44.121.133'),
(1225, 'Sub Gallery Image  []Data has deleted successfully', '2017-09-08 15:46:22', 1, 6, '110.44.121.133'),
(1226, 'Sub Gallery Image [Reception]Data has added succes', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1227, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1228, 'Sub Gallery Image [Tent ]Data has added successful', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1229, 'Sub Gallery Image [Bathroom]Data has added success', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1230, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1231, 'Sub Gallery Image [Luxurious Tent]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1232, 'Sub Gallery Image [Luxurious Tent]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1233, 'Sub Gallery Image [Bar]Data has added successfully', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1234, 'Sub Gallery Image [Luxurious Tent]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1235, 'Sub Gallery Image [Luxurious Tent]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1236, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1237, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1238, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1239, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1240, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1241, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1242, 'Sub Gallery Image [Luxurious Tent]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1243, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1244, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1245, 'Sub Gallery Image [Tharu Hut]Data has added succes', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1246, 'Sub Gallery Image [Tharu Hut]Data has added succes', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1247, 'Sub Gallery Image [Luxurious Tent]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1248, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1249, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1250, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1251, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1252, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1253, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1254, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1255, 'Sub Gallery Image [Jagatpur Lodge]Data has added s', '2017-09-08 15:49:58', 1, 3, '110.44.121.133'),
(1256, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-08 15:54:17', 1, 6, '110.44.121.133'),
(1257, 'Login: site admin   logged in.', '2017-09-08 16:08:43', 1, 1, '110.44.121.133'),
(1258, 'Changes on Sub Package \'Village Walk\' has been sav', '2017-09-08 16:19:02', 1, 4, '110.44.121.133'),
(1259, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-09-08 16:34:58', 1, 4, '110.44.121.133'),
(1260, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-09-08 16:36:48', 1, 4, '110.44.121.133'),
(1261, 'Changes on Sub Package \'Walk In The Wild\' has been', '2017-09-08 16:38:56', 1, 4, '110.44.121.133'),
(1262, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-09-08 16:39:25', 1, 4, '110.44.121.133'),
(1263, 'Changes on Sub Package \'Birding\' has been saved su', '2017-09-08 16:40:19', 1, 4, '110.44.121.133'),
(1264, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-09-08 16:41:33', 1, 4, '110.44.121.133'),
(1265, 'Changes on Sub Package \'Row Row Row your Boat\' has', '2017-09-08 16:41:54', 1, 4, '110.44.121.133'),
(1266, 'Changes on Sub Package \'Walk In The Wild\' has been', '2017-09-08 16:42:28', 1, 4, '110.44.121.133'),
(1267, 'Changes on Sub Package \'Birding\' has been saved su', '2017-09-08 16:42:58', 1, 4, '110.44.121.133'),
(1268, 'Changes on Sub Package \'Birding\' has been saved su', '2017-09-08 16:43:27', 1, 4, '110.44.121.133'),
(1269, 'Changes on Sub Package \'Walk In The Wild\' has been', '2017-09-08 16:51:35', 1, 4, '110.44.121.133'),
(1270, 'Changes on Sub Package \'Birding\' has been saved su', '2017-09-08 17:12:01', 1, 4, '110.44.121.133'),
(1271, 'Login: site admin   logged in.', '2017-09-15 13:58:59', 1, 1, '110.44.121.133'),
(1272, 'Login: site admin   logged in.', '2017-09-15 15:03:40', 1, 1, '110.44.121.133'),
(1273, 'Login: site admin   logged in.', '2017-09-15 15:03:55', 1, 1, '110.44.121.133'),
(1274, 'Login: site admin   logged in.', '2017-09-15 15:03:57', 1, 1, '110.44.121.133'),
(1275, 'User [Bibek  Shrestha] login Created Data has adde', '2017-09-15 15:06:57', 1, 3, '110.44.121.133'),
(1276, 'Sub Gallery Image  [Luxurious Tent]Data has delete', '2017-09-15 15:08:35', 1, 6, '110.44.121.133'),
(1277, 'Login: site admin   logged in.', '2017-09-15 15:10:36', 1, 1, '110.44.121.133'),
(1278, 'Login: site admin   logged in.', '2017-09-15 15:13:35', 1, 1, '110.44.121.133'),
(1279, 'Login: site admin   logged in.', '2017-09-15 15:17:27', 1, 1, '110.44.121.133'),
(1280, 'Menu [CSR] CreatedData has added successfully.', '2017-09-15 15:17:42', 1, 3, '110.44.121.133'),
(1281, 'Menu  [CSR]Data has deleted successfully.', '2017-09-15 15:18:49', 1, 6, '110.44.121.133'),
(1282, 'Menu [CSR] CreatedData has added successfully.', '2017-09-15 15:19:51', 1, 3, '110.44.121.133'),
(1283, 'Menu  [CSR]Data has deleted successfully.', '2017-09-15 15:20:24', 1, 6, '110.44.121.133'),
(1284, 'Menu [ABC] CreatedData has added successfully.', '2017-09-15 15:21:09', 1, 3, '110.44.121.133'),
(1285, 'Menu [ABC] Edit Successfully', '2017-09-15 15:22:32', 1, 4, '110.44.121.133'),
(1286, 'Menu  [ABC]Data has deleted successfully.', '2017-09-15 15:24:06', 1, 6, '110.44.121.133'),
(1287, 'Changes on Article \'the lodge\' has been saved succ', '2017-09-15 15:32:55', 1, 4, '110.44.121.133'),
(1288, 'Article \'The jungle\' has added successfully.', '2017-09-15 15:34:25', 1, 3, '110.44.121.133'),
(1289, 'Menu [The jungle] CreatedData has added successful', '2017-09-15 15:35:17', 1, 3, '110.44.121.133'),
(1290, 'Menu  [The jungle]Data has deleted successfully.', '2017-09-15 15:36:07', 1, 6, '110.44.121.133'),
(1291, 'Articles  [The jungle]Data has deleted successfull', '2017-09-15 15:38:57', 1, 6, '110.44.121.133'),
(1292, 'Article \'CSR\' has added successfully.', '2017-09-15 15:42:17', 1, 3, '110.44.121.133'),
(1293, 'Menu [CSR] CreatedData has added successfully.', '2017-09-15 15:43:48', 1, 3, '110.44.121.133'),
(1294, 'Menu  [CSR]Data has deleted successfully.', '2017-09-15 15:44:27', 1, 6, '110.44.121.133'),
(1295, 'Features [AC]Data has added successfully.', '2017-09-15 15:55:26', 1, 3, '110.44.121.133'),
(1296, 'Features [Wifi]Data has added successfully.', '2017-09-15 15:56:07', 1, 3, '110.44.121.133'),
(1297, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-09-15 15:56:41', 1, 4, '110.44.121.133'),
(1298, 'Features [Glass]Data has added successfully.', '2017-09-15 15:58:00', 1, 3, '110.44.121.133'),
(1299, 'Features  [Wifi]Data has deleted successfully.', '2017-09-15 15:58:08', 1, 6, '110.44.121.133'),
(1300, 'Features  [Glass]Data has deleted successfully.', '2017-09-15 15:58:25', 1, 6, '110.44.121.133'),
(1301, 'Features [Glass]Data has added successfully.', '2017-09-15 15:58:43', 1, 3, '110.44.121.133'),
(1302, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-09-15 15:59:22', 1, 4, '110.44.121.133'),
(1303, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-09-15 16:00:13', 1, 4, '110.44.121.133'),
(1304, 'Features  [Glass]Data has deleted successfully.', '2017-09-15 16:00:29', 1, 6, '110.44.121.133'),
(1305, 'Login: site admin   logged in.', '2017-09-15 16:03:26', 1, 1, '110.44.121.133'),
(1306, 'Features [Wifi]Data has added successfully.', '2017-09-15 16:08:45', 1, 3, '110.44.121.133'),
(1307, 'Features  [Wifi]Data has deleted successfully.', '2017-09-15 16:09:25', 1, 6, '110.44.121.133'),
(1308, 'Features [WIFI]Data has added successfully.', '2017-09-15 16:09:39', 1, 3, '110.44.121.133'),
(1309, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-09-15 16:09:59', 1, 4, '110.44.121.133'),
(1310, 'Package Stay Edit Successfully', '2017-09-15 16:14:24', 1, 4, '110.44.121.133'),
(1311, 'Package Our Activities Edit Successfully', '2017-09-15 16:48:33', 1, 4, '110.44.121.133'),
(1312, 'Changes on Sub Package \'Birding\' has been saved su', '2017-09-15 16:55:32', 1, 4, '110.44.121.133'),
(1313, 'Changes on Sub Package \'Birding\' has been saved su', '2017-09-15 16:56:34', 1, 4, '110.44.121.133'),
(1314, 'Package Jagatpur Experience  Edit Successfully', '2017-09-15 16:59:58', 1, 4, '110.44.121.133'),
(1315, 'Login: site admin   logged in.', '2017-09-17 10:44:12', 1, 1, '116.90.235.194'),
(1316, 'Login: site admin   logged in.', '2017-09-17 21:44:25', 1, 1, '27.34.20.4'),
(1317, 'User [Bibek  Shrestha] Edit Successfully', '2017-09-17 22:03:26', 1, 4, '27.34.20.4'),
(1318, 'Slideshow [Welcome to an unmatched jungle experien', '2017-09-17 23:14:23', 1, 4, '27.34.20.4'),
(1319, 'Slideshow [Welcome to an unmatched jungle experien', '2017-09-17 23:14:46', 1, 4, '27.34.20.4'),
(1320, 'Slideshow [Welcome to an unmatched jungle experien', '2017-09-17 23:14:58', 1, 4, '27.34.20.4'),
(1321, 'Package Stay Edit Successfully', '2017-09-18 00:13:13', 1, 4, '27.34.20.4'),
(1322, 'Login: site admin   logged in.', '2017-09-18 10:39:28', 1, 1, '116.90.235.194'),
(1323, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2017-09-18 10:46:27', 1, 6, '116.90.235.194'),
(1324, 'Login: site admin   logged in.', '2017-09-18 15:36:37', 1, 1, '116.90.235.194'),
(1325, 'Login: site admin   logged in.', '2017-09-18 17:07:32', 1, 1, '110.44.121.133'),
(1326, 'Login: site admin   logged in.', '2017-09-18 17:58:33', 1, 1, '::1'),
(1327, 'Login: site admin   logged in.', '2017-09-18 17:58:43', 1, 1, '::1'),
(1328, 'Login: site admin   logged in.', '2017-09-19 10:18:55', 1, 1, '::1'),
(1329, 'Package [Activities]Data has added successfully.', '2017-09-19 10:24:58', 1, 3, '::1'),
(1330, 'Package Activities Edit Successfully', '2017-09-19 10:44:55', 1, 4, '::1'),
(1331, 'Sub Package \'text\' has added successfully.', '2017-09-19 10:45:43', 1, 3, '::1'),
(1332, 'Sub Package \'asads\' has added successfully.', '2017-09-19 10:46:32', 1, 3, '::1'),
(1333, 'Changes on Sub Package \'text\' has been saved succe', '2017-09-19 11:16:34', 1, 4, '::1'),
(1334, 'Changes on Sub Package \'asads\' has been saved succ', '2017-09-19 11:17:29', 1, 4, '::1'),
(1335, 'Package Activities Edit Successfully', '2017-09-19 11:17:57', 1, 4, '::1'),
(1336, 'Changes on Sub Package \'asads\' has been saved succ', '2017-09-19 11:20:50', 1, 4, '::1'),
(1337, 'Changes on Sub Package \'asads\' has been saved succ', '2017-09-19 11:31:49', 1, 4, '::1'),
(1338, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2017-09-19 11:33:23', 1, 4, '::1'),
(1339, 'Login: site admin   logged in.', '2017-09-19 15:11:10', 1, 1, '::1'),
(1340, 'Login: site admin   logged in.', '2017-09-19 16:21:12', 1, 1, '::1'),
(1341, 'Testimonial [Dawa S.] Edit Successfully', '2017-09-19 16:23:08', 1, 4, '::1'),
(1342, 'Testimonial [Colleen] Edit Successfully', '2017-09-19 16:23:57', 1, 4, '::1'),
(1343, 'Sub Package \'new\' has added successfully.', '2017-09-19 17:53:48', 1, 3, '::1'),
(1344, 'Login: site admin   logged in.', '2017-12-04 10:54:06', 1, 1, '::1'),
(1345, 'Login: site admin   logged in.', '2017-12-04 11:01:59', 1, 1, '::1'),
(1346, 'Changes on Config \'Jagatpur Lodge\' has been saved ', '2017-12-04 11:10:57', 1, 4, '::1'),
(1347, 'Login: site admin   logged in.', '2018-01-08 17:01:09', 1, 1, '::1'),
(1348, 'Login: site admin   logged in.', '2018-04-04 11:39:05', 1, 1, '::1'),
(1349, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-04 11:42:51', 1, 4, '::1'),
(1350, 'Article \'About \' has added successfully.', '2018-04-04 11:52:01', 1, 3, '::1'),
(1351, 'Menu [About Us] CreatedData has added successfully', '2018-04-04 11:52:37', 1, 3, '::1'),
(1352, 'Menu [Home] Edit Successfully', '2018-04-04 12:04:23', 1, 4, '::1'),
(1353, 'Menu [Facilities] CreatedData has added successful', '2018-04-04 12:12:02', 1, 3, '::1'),
(1354, 'Menu [Banquet] CreatedData has added successfully.', '2018-04-04 12:12:40', 1, 3, '::1'),
(1355, 'Menu [Dining] CreatedData has added successfully.', '2018-04-04 12:13:11', 1, 3, '::1'),
(1356, 'Menu [Gallery] Edit Successfully', '2018-04-04 12:18:57', 1, 4, '::1'),
(1357, 'Features [Hotel Facilities]Data has added successf', '2018-04-04 12:25:25', 1, 3, '::1'),
(1358, 'Menu  [photo gallery]Data has deleted successfully', '2018-04-04 12:29:49', 1, 6, '::1'),
(1359, 'Menu  [Video Gallery]Data has deleted successfully', '2018-04-04 12:29:54', 1, 6, '::1'),
(1360, 'Features [Free wine]Data has added successfully.', '2018-04-04 12:45:11', 1, 3, '::1'),
(1361, 'Features [Wifi]Data has added successfully.', '2018-04-04 12:47:46', 1, 3, '::1'),
(1362, 'Features [Parking]Data has added successfully.', '2018-04-04 12:48:51', 1, 3, '::1'),
(1363, 'Features [TV Cable]Data has added successfully.', '2018-04-04 12:49:21', 1, 3, '::1'),
(1364, 'Features  [TV Cable]Data has deleted successfully.', '2018-04-04 12:49:57', 1, 6, '::1'),
(1365, 'Features [TV Cable] Edit Successfully', '2018-04-04 12:50:11', 1, 4, '::1'),
(1366, 'Features [Hotel Facilities] Edit Successfully', '2018-04-04 12:50:40', 1, 4, '::1'),
(1367, 'Features [TV Cable]Data has added successfully.', '2018-04-04 12:50:56', 1, 3, '::1'),
(1368, 'Login: site admin   logged in.', '2018-04-04 14:38:13', 1, 1, '::1'),
(1369, 'Features [Wifi] Edit Successfully', '2018-04-04 14:46:48', 1, 4, '::1'),
(1370, 'Login: site admin   logged in.', '2018-04-04 16:19:49', 1, 1, '::1'),
(1371, 'Gallery [Sight seeing]Data has added successfully.', '2018-04-04 17:10:01', 1, 3, '::1'),
(1372, 'Package [Banquet]Data has added successfully.', '2018-04-04 17:31:17', 1, 3, '::1'),
(1373, 'Login: site admin   logged in.', '2018-04-04 17:31:24', 1, 1, '::1'),
(1374, 'Package  [Activities]Data has deleted successfully', '2018-04-04 17:31:36', 1, 6, '::1'),
(1375, 'Package  []Data has deleted successfully.', '2018-04-04 17:31:40', 1, 6, '::1'),
(1376, 'Package  [Jagatpur Experience ]Data has deleted su', '2018-04-04 17:31:40', 1, 6, '::1'),
(1377, 'Package [Room]Data has added successfully.', '2018-04-04 17:32:15', 1, 3, '::1'),
(1378, 'Sub Package \'Vai Janta\' has added successfully.', '2018-04-04 17:35:45', 1, 3, '::1'),
(1379, 'Login: site admin   logged in.', '2018-04-04 17:36:42', 1, 1, '::1'),
(1380, 'Sub Package [Vai Janta]Data has deleted successful', '2018-04-04 17:37:12', 1, 6, '::1'),
(1381, 'Sub Package []Data has deleted successfully.', '2018-04-04 17:37:23', 1, 6, '::1'),
(1382, 'Sub Package []Data has deleted successfully.', '2018-04-04 17:37:23', 1, 6, '::1'),
(1383, 'Sub Package \'Vai Janta Hall\' has added successfull', '2018-04-04 17:38:04', 1, 3, '::1'),
(1384, 'Sub Package \'Meeting Hall\' has added successfully.', '2018-04-04 17:39:02', 1, 3, '::1'),
(1385, 'Sub Package \'Amarati Hall\' has added successfully.', '2018-04-04 17:39:39', 1, 3, '::1'),
(1386, 'Sub Package \'Deluxe Room\' has added successfully.', '2018-04-04 17:40:49', 1, 3, '::1'),
(1387, 'Sub Package \'Standard Room\' has added successfully', '2018-04-04 17:41:25', 1, 3, '::1'),
(1388, 'Sub Package \'Suite Room\' has added successfully.', '2018-04-04 17:41:57', 1, 3, '::1'),
(1389, 'Sub Package \'Presidential Room \' has added success', '2018-04-04 17:42:37', 1, 3, '::1'),
(1390, 'Menu [Vai Janta Hall] CreatedData has added succes', '2018-04-04 18:01:41', 1, 3, '::1'),
(1391, 'Menu [Meeting Hall] CreatedData has added successf', '2018-04-04 18:02:06', 1, 3, '::1'),
(1392, 'Menu [Amarati] CreatedData has added successfully.', '2018-04-04 18:02:46', 1, 3, '::1'),
(1393, 'Menu  [Stay]Data has deleted successfully.', '2018-04-04 18:03:25', 1, 6, '::1'),
(1394, 'Menu [Room] CreatedData has added successfully.', '2018-04-04 18:03:44', 1, 3, '::1'),
(1395, 'Menu [Deluxe Room] CreatedData has added successfu', '2018-04-04 18:04:35', 1, 3, '::1'),
(1396, 'Menu [Standard Room] CreatedData has added success', '2018-04-04 18:04:59', 1, 3, '::1'),
(1397, 'Menu [Suite Room] CreatedData has added successful', '2018-04-04 18:05:25', 1, 3, '::1'),
(1398, 'Menu [Presidential Room] CreatedData has added suc', '2018-04-04 18:05:48', 1, 3, '::1'),
(1399, 'Login: site admin   logged in.', '2018-04-05 10:13:53', 1, 1, '::1'),
(1400, 'Changes on Sub Package \'Presidential Room \' has be', '2018-04-05 11:29:15', 1, 4, '::1'),
(1401, 'Changes on Sub Package \'Standard Room\' has been sa', '2018-04-05 11:30:44', 1, 4, '::1'),
(1402, 'Changes on Sub Package \'Presidential Room \' has be', '2018-04-05 11:42:50', 1, 4, '::1'),
(1403, 'Changes on Sub Package \'Presidential Room \' has be', '2018-04-05 12:34:56', 1, 4, '::1'),
(1404, 'Changes on Sub Package \'Suite Room\' has been saved', '2018-04-05 14:15:29', 1, 4, '::1'),
(1405, 'Changes on Sub Package \'Standard Room\' has been sa', '2018-04-05 14:15:50', 1, 4, '::1'),
(1406, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-04-05 14:16:10', 1, 4, '::1'),
(1407, 'Changes on Sub Package \'Presidential Room \' has be', '2018-04-05 14:35:04', 1, 4, '::1'),
(1408, 'Changes on Sub Package \'Presidential Room \' has be', '2018-04-05 14:36:06', 1, 4, '::1'),
(1409, 'Sub Gallery Image [natural beauty]Data has added s', '2018-04-05 14:57:04', 1, 3, '::1'),
(1410, 'Sub Gallery Image [water slide]Data has added succ', '2018-04-05 14:57:44', 1, 3, '::1'),
(1411, 'Sub Gallery Image  [natural beauty]Data has delete', '2018-04-05 14:58:55', 1, 6, '::1'),
(1412, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-05 14:58:59', 1, 6, '::1'),
(1413, 'Sub Gallery Image  [water slide]Data has deleted s', '2018-04-05 14:58:59', 1, 6, '::1'),
(1414, 'Sub Gallery Image [Greenery]Data has added success', '2018-04-05 15:04:52', 1, 3, '::1'),
(1415, 'Sub Gallery Image [Boating]Data has added successf', '2018-04-05 15:04:52', 1, 3, '::1'),
(1416, 'Login: site admin   logged in.', '2018-04-06 12:47:55', 1, 1, '::1'),
(1417, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-06 15:14:12', 1, 4, '::1'),
(1418, 'Changes on Article \'About \' has been saved success', '2018-04-06 15:44:22', 1, 4, '::1'),
(1419, 'Login: site admin   logged in.', '2018-04-06 16:46:34', 1, 1, '::1'),
(1420, 'Login: site admin   logged in.', '2018-04-06 16:48:21', 1, 1, '::1'),
(1421, 'Package [Dining]Data has added successfully.', '2018-04-06 16:48:45', 1, 3, '::1'),
(1422, 'Package Room Edit Successfully', '2018-04-06 17:07:16', 1, 4, '::1'),
(1423, 'Login: site admin   logged in.', '2018-04-09 10:08:17', 1, 1, '::1'),
(1424, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-04-09 16:25:33', 1, 4, '::1'),
(1425, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-04-09 16:27:20', 1, 4, '::1'),
(1426, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-04-09 16:33:17', 1, 4, '::1'),
(1427, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-04-09 16:33:43', 1, 4, '::1'),
(1428, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-04-09 16:34:14', 1, 4, '::1'),
(1429, 'Menu [Dining] Edit Successfully', '2018-04-09 16:41:48', 1, 4, '::1'),
(1430, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-04-09 16:51:36', 1, 4, '::1'),
(1431, 'Package Dining Edit Successfully', '2018-04-09 18:22:30', 1, 4, '::1'),
(1432, 'Login: site admin   logged in.', '2018-04-10 10:09:54', 1, 1, '::1'),
(1433, 'Changes on Article \'About \' has been saved success', '2018-04-10 12:08:01', 1, 4, '::1'),
(1434, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-10 12:41:41', 1, 4, '::1'),
(1435, 'Changes on Article \'About \' has been saved success', '2018-04-10 12:58:25', 1, 4, '::1'),
(1436, 'Changes on Article \'About \' has been saved success', '2018-04-10 13:04:26', 1, 4, '::1'),
(1437, 'Articles  [Welcome to Jagatpur Lodge]Data has dele', '2018-04-10 14:15:05', 1, 6, '::1'),
(1438, 'Articles  []Data has deleted successfully.', '2018-04-10 14:15:11', 1, 6, '::1'),
(1439, 'Articles  [the lodge]Data has deleted successfully', '2018-04-10 14:15:11', 1, 6, '::1'),
(1440, 'Articles  []Data has deleted successfully.', '2018-04-10 14:15:14', 1, 6, '::1'),
(1441, 'Articles  []Data has deleted successfully.', '2018-04-10 14:15:14', 1, 6, '::1'),
(1442, 'Articles  [CSR]Data has deleted successfully.', '2018-04-10 14:15:14', 1, 6, '::1'),
(1443, 'Changes on Sub Package \'Suite Room\' has been saved', '2018-04-10 16:35:49', 1, 4, '::1'),
(1444, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-04-10 16:36:29', 1, 4, '::1'),
(1445, 'Login: site admin   logged in.', '2018-04-11 12:53:04', 1, 1, '::1'),
(1446, 'Package Room Edit Successfully', '2018-04-11 14:25:05', 1, 4, '::1'),
(1447, 'Login: site admin   logged in.', '2018-04-11 14:45:44', 1, 1, '::1'),
(1448, 'Changes on Sub Package \'Standard Room\' has been sa', '2018-04-11 15:06:18', 1, 4, '::1'),
(1449, 'Package [Tours and Attraction]Data has added succe', '2018-04-11 15:09:10', 1, 3, '::1'),
(1450, 'Sub Package \'Mountain View\' has added successfully', '2018-04-11 15:17:48', 1, 3, '::1'),
(1451, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-04-11 15:32:26', 1, 4, '::1'),
(1452, 'Sub Package \'Resort View\' has added successfully.', '2018-04-11 15:47:05', 1, 3, '::1'),
(1453, 'Changes on Sub Package \'Resort View\' has been save', '2018-04-11 15:49:38', 1, 4, '::1'),
(1454, 'Login: site admin   logged in.', '2018-04-13 11:20:44', 1, 1, '::1'),
(1455, 'Features [View]Data has added successfully.', '2018-04-13 16:44:19', 1, 3, '::1'),
(1456, 'Features [Locker]Data has added successfully.', '2018-04-13 16:50:40', 1, 3, '::1'),
(1457, 'Login: site admin   logged in.', '2018-04-15 10:26:23', 1, 1, '::1'),
(1458, 'Menu [Jagatpur Experience] Edit Successfully', '2018-04-15 10:26:52', 1, 4, '::1'),
(1459, 'Menu [The Lodge] Edit Successfully', '2018-04-15 10:27:02', 1, 4, '::1'),
(1460, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-15 15:17:25', 1, 4, '::1'),
(1461, 'Changes on Article \'About \' has been saved success', '2018-04-15 16:34:12', 1, 4, '::1'),
(1462, 'Login: site admin   logged in.', '2018-04-19 15:42:27', 1, 1, '192.168.2.125'),
(1463, 'Login: site admin   logged in.', '2018-04-23 14:44:25', 1, 1, '192.168.2.119'),
(1464, 'Slideshow [Hall]Data has added successfully.', '2018-04-23 15:08:51', 1, 3, '192.168.2.119'),
(1465, 'Sub Package \'Deluxe Single\' has added successfully', '2018-04-23 15:13:14', 1, 3, '192.168.2.119'),
(1466, 'Login: site admin   logged in.', '2018-04-23 15:20:47', 1, 1, '192.168.2.125'),
(1467, 'Slideshows  [Welcome to an unmatched jungle experi', '2018-04-23 15:21:40', 1, 6, '192.168.2.125'),
(1468, 'Slideshow  [Welcome to an unmatched jungle experie', '2018-04-23 15:21:40', 1, 6, '192.168.2.125'),
(1469, 'Slideshow  []Data has deleted successfully.', '2018-04-23 15:21:40', 1, 6, '192.168.2.125'),
(1470, 'Slideshow  [Experience the jungle in tented luxury', '2018-04-23 15:21:40', 1, 6, '192.168.2.125'),
(1471, 'Slideshow  [Experience the jungle in tented luxury', '2018-04-23 15:21:40', 1, 6, '192.168.2.125'),
(1472, 'Slideshow  [Experience the jungle in deluxe comfor', '2018-04-23 15:21:40', 1, 6, '192.168.2.125'),
(1473, 'Slideshow  [Share the experience with friends, old', '2018-04-23 15:21:41', 1, 6, '192.168.2.125'),
(1474, 'Slideshow  [experience the wilderness first hand]D', '2018-04-23 15:21:41', 1, 6, '192.168.2.125'),
(1475, 'Sub Package \'Executive Room\' has added successfull', '2018-04-23 16:18:21', 1, 3, '192.168.2.119'),
(1476, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-04-23 16:20:17', 1, 4, '192.168.2.119'),
(1477, 'Menu [Deluxe Room] CreatedData has added successfu', '2018-04-23 16:21:28', 1, 3, '192.168.2.119'),
(1478, 'Menu [Deluxe Room] Edit Successfully', '2018-04-23 16:22:27', 1, 4, '192.168.2.119'),
(1479, 'Menu [Executive Room] CreatedData has added succes', '2018-04-23 16:23:43', 1, 3, '192.168.2.119'),
(1480, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-04-23 16:46:54', 1, 4, '192.168.2.119'),
(1481, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-04-23 16:52:26', 1, 4, '192.168.2.119'),
(1482, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-04-23 16:55:01', 1, 4, '192.168.2.119'),
(1483, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-04-23 17:02:45', 1, 4, '192.168.2.119'),
(1484, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-04-23 17:09:55', 1, 4, '192.168.2.119'),
(1485, 'Sub Package \'Refreshing Godavari\' has added succes', '2018-04-23 17:14:46', 1, 3, '192.168.2.119'),
(1486, 'Sub Package \'Health Club\' has added successfully.', '2018-04-23 17:21:46', 1, 3, '192.168.2.119'),
(1487, 'Changes on Sub Package \'Refreshing Godavari\' has b', '2018-04-23 17:23:27', 1, 4, '192.168.2.119'),
(1488, 'Changes on Sub Package \'Resort View\' has been save', '2018-04-23 17:24:15', 1, 4, '192.168.2.119'),
(1489, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-04-23 17:41:21', 1, 4, '192.168.2.125'),
(1490, 'Package Banquet Edit Successfully', '2018-04-23 17:41:54', 1, 4, '192.168.2.125'),
(1491, 'Testimonial [vttgtgtg.] Edit Successfully', '2018-04-23 17:46:35', 1, 4, '192.168.2.125'),
(1492, 'Menu [Jagatpur Experiencedddd] Edit Successfully', '2018-04-23 17:48:19', 1, 4, '192.168.2.125'),
(1493, 'Menu [Jagatpur Experience] Edit Successfully', '2018-04-23 17:48:57', 1, 4, '192.168.2.125'),
(1494, 'Changes on Article \'About \' has been saved success', '2018-04-23 18:03:23', 1, 4, '192.168.2.119'),
(1495, 'Changes on Article \'About \' has been saved success', '2018-04-23 18:07:48', 1, 4, '192.168.2.119'),
(1496, 'Sub Package \'Deluxe Double\' has added successfully', '2018-04-23 18:10:02', 1, 3, '192.168.2.119'),
(1497, 'Menu [Deluxe Double] CreatedData has added success', '2018-04-23 18:12:06', 1, 3, '192.168.2.119'),
(1498, 'Sub Package \'Executive Double\' has added successfu', '2018-04-23 18:13:02', 1, 3, '192.168.2.119'),
(1499, 'Menu [Executive Double] CreatedData has added succ', '2018-04-23 18:13:34', 1, 3, '192.168.2.119'),
(1500, 'Login: site admin   logged in.', '2018-04-24 14:21:19', 1, 1, '192.168.2.119'),
(1501, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-04-24 14:39:34', 1, 4, '192.168.2.119'),
(1502, 'Sub Package [Standard Room]Data has deleted succes', '2018-04-24 14:40:06', 1, 6, '192.168.2.119'),
(1503, 'Sub Package []Data has deleted successfully.', '2018-04-24 14:40:11', 1, 6, '192.168.2.119'),
(1504, 'Sub Package [Deluxe Room]Data has deleted successf', '2018-04-24 14:40:11', 1, 6, '192.168.2.119'),
(1505, 'Sub Package []Data has deleted successfully.', '2018-04-24 14:40:16', 1, 6, '192.168.2.119'),
(1506, 'Sub Package []Data has deleted successfully.', '2018-04-24 14:40:17', 1, 6, '192.168.2.119'),
(1507, 'Sub Package [Presidential Room ]Data has deleted s', '2018-04-24 14:40:17', 1, 6, '192.168.2.119'),
(1508, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-04-24 14:43:37', 1, 4, '192.168.2.119'),
(1509, 'Changes on Sub Package \'Executive Room\' has been s', '2018-04-24 14:51:57', 1, 4, '192.168.2.119'),
(1510, 'Changes on Sub Package \'Executive Double\' has been', '2018-04-24 14:54:05', 1, 4, '192.168.2.119'),
(1511, 'Changes on Sub Package \'Executive Room\' has been s', '2018-04-24 14:55:00', 1, 4, '192.168.2.119');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1512, 'Menu [About Us] CreatedData has added successfully', '2018-04-24 14:57:42', 1, 3, '192.168.2.119'),
(1513, 'Menu [Explore] Edit Successfully', '2018-04-24 14:58:09', 1, 4, '192.168.2.119'),
(1514, 'Menu [Facilities] CreatedData has added successful', '2018-04-24 14:58:58', 1, 3, '192.168.2.119'),
(1515, 'Menu [Gallery] CreatedData has added successfully.', '2018-04-24 14:59:48', 1, 3, '192.168.2.119'),
(1516, 'Menu [Contact Us] CreatedData has added successful', '2018-04-24 15:00:19', 1, 3, '192.168.2.119'),
(1517, 'Menu [About Us] CreatedData has added successfully', '2018-04-24 15:07:25', 1, 3, '192.168.2.119'),
(1518, 'Menu [Facilities] CreatedData has added successful', '2018-04-24 15:08:10', 1, 3, '192.168.2.119'),
(1519, 'Menu [Gallery] CreatedData has added successfully.', '2018-04-24 15:09:45', 1, 3, '192.168.2.119'),
(1520, 'Menu [Contact Us] CreatedData has added successful', '2018-04-24 15:10:35', 1, 3, '192.168.2.119'),
(1521, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:12:08', 1, 6, '192.168.2.119'),
(1522, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:14', 1, 6, '192.168.2.119'),
(1523, 'Sub Gallery Image  [Reception]Data has deleted suc', '2018-04-24 15:12:14', 1, 6, '192.168.2.119'),
(1524, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:18', 1, 6, '192.168.2.119'),
(1525, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:18', 1, 6, '192.168.2.119'),
(1526, 'Sub Gallery Image  [Deluxe Room]Data has deleted s', '2018-04-24 15:12:18', 1, 6, '192.168.2.119'),
(1527, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:22', 1, 6, '192.168.2.119'),
(1528, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:22', 1, 6, '192.168.2.119'),
(1529, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:22', 1, 6, '192.168.2.119'),
(1530, 'Sub Gallery Image  [Tent ]Data has deleted success', '2018-04-24 15:12:22', 1, 6, '192.168.2.119'),
(1531, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:25', 1, 6, '192.168.2.119'),
(1532, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:26', 1, 6, '192.168.2.119'),
(1533, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:26', 1, 6, '192.168.2.119'),
(1534, 'Sub Gallery Image  [Bathroom]Data has deleted succ', '2018-04-24 15:12:26', 1, 6, '192.168.2.119'),
(1535, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:26', 1, 6, '192.168.2.119'),
(1536, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:29', 1, 6, '192.168.2.119'),
(1537, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:29', 1, 6, '192.168.2.119'),
(1538, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:29', 1, 6, '192.168.2.119'),
(1539, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:30', 1, 6, '192.168.2.119'),
(1540, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:30', 1, 6, '192.168.2.119'),
(1541, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:12:30', 1, 6, '192.168.2.119'),
(1542, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1543, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1544, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1545, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1546, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1547, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1548, 'Sub Gallery Image  [Luxurious Tent]Data has delete', '2018-04-24 15:12:33', 1, 6, '192.168.2.119'),
(1549, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1550, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1551, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1552, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1553, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1554, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1555, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1556, 'Sub Gallery Image  [Luxurious Tent]Data has delete', '2018-04-24 15:12:37', 1, 6, '192.168.2.119'),
(1557, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1558, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1559, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1560, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1561, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1562, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1563, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1564, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1565, 'Sub Gallery Image  [Bar]Data has deleted successfu', '2018-04-24 15:12:41', 1, 6, '192.168.2.119'),
(1566, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1567, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1568, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1569, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1570, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1571, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1572, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1573, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:45', 1, 6, '192.168.2.119'),
(1574, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:46', 1, 6, '192.168.2.119'),
(1575, 'Sub Gallery Image  [Luxurious Tent]Data has delete', '2018-04-24 15:12:46', 1, 6, '192.168.2.119'),
(1576, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:49', 1, 6, '192.168.2.119'),
(1577, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:49', 1, 6, '192.168.2.119'),
(1578, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1579, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1580, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1581, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1582, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1583, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1584, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1585, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1586, 'Sub Gallery Image  [Luxurious Tent]Data has delete', '2018-04-24 15:12:50', 1, 6, '192.168.2.119'),
(1587, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1588, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1589, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1590, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1591, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1592, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1593, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1594, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1595, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:54', 1, 6, '192.168.2.119'),
(1596, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:55', 1, 6, '192.168.2.119'),
(1597, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:55', 1, 6, '192.168.2.119'),
(1598, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:12:55', 1, 6, '192.168.2.119'),
(1599, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:58', 1, 6, '192.168.2.119'),
(1600, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:58', 1, 6, '192.168.2.119'),
(1601, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:58', 1, 6, '192.168.2.119'),
(1602, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1603, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1604, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1605, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1606, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1607, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1608, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1609, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1610, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1611, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:12:59', 1, 6, '192.168.2.119'),
(1612, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:03', 1, 6, '192.168.2.119'),
(1613, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:03', 1, 6, '192.168.2.119'),
(1614, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:03', 1, 6, '192.168.2.119'),
(1615, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:03', 1, 6, '192.168.2.119'),
(1616, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:03', 1, 6, '192.168.2.119'),
(1617, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:03', 1, 6, '192.168.2.119'),
(1618, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1619, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1620, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1621, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1622, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1623, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1624, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1625, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:04', 1, 6, '192.168.2.119'),
(1626, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1627, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1628, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1629, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1630, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1631, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1632, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1633, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1634, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1635, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1636, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:08', 1, 6, '192.168.2.119'),
(1637, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:09', 1, 6, '192.168.2.119'),
(1638, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:09', 1, 6, '192.168.2.119'),
(1639, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:09', 1, 6, '192.168.2.119'),
(1640, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:09', 1, 6, '192.168.2.119'),
(1641, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1642, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1643, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1644, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1645, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1646, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1647, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1648, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1649, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:13', 1, 6, '192.168.2.119'),
(1650, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1651, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1652, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1653, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1654, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1655, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1656, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:14', 1, 6, '192.168.2.119'),
(1657, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1658, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1659, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1660, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1661, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1662, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1663, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1664, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1665, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1666, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:18', 1, 6, '192.168.2.119'),
(1667, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1668, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1669, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1670, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1671, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1672, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1673, 'Sub Gallery Image  [Luxurious Tent]Data has delete', '2018-04-24 15:13:19', 1, 6, '192.168.2.119'),
(1674, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1675, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1676, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1677, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1678, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1679, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1680, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:22', 1, 6, '192.168.2.119'),
(1681, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1682, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1683, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1684, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1685, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1686, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1687, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1688, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1689, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1690, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1691, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:23', 1, 6, '192.168.2.119'),
(1692, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1693, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1694, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1695, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1696, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1697, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1698, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1699, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1700, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1701, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1702, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1703, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:29', 1, 6, '192.168.2.119'),
(1704, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1705, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1706, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1707, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1708, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1709, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1710, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:30', 1, 6, '192.168.2.119'),
(1711, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1712, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1713, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1714, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1715, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1716, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1717, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1718, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1719, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1720, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1721, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1722, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1723, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1724, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1725, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:35', 1, 6, '192.168.2.119'),
(1726, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:36', 1, 6, '192.168.2.119'),
(1727, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:36', 1, 6, '192.168.2.119'),
(1728, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:36', 1, 6, '192.168.2.119'),
(1729, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:36', 1, 6, '192.168.2.119'),
(1730, 'Sub Gallery Image  [Tharu Hut]Data has deleted suc', '2018-04-24 15:13:36', 1, 6, '192.168.2.119'),
(1731, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:40', 1, 6, '192.168.2.119'),
(1732, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:40', 1, 6, '192.168.2.119'),
(1733, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:40', 1, 6, '192.168.2.119'),
(1734, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:40', 1, 6, '192.168.2.119'),
(1735, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:40', 1, 6, '192.168.2.119'),
(1736, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:40', 1, 6, '192.168.2.119'),
(1737, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1738, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1739, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1740, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1741, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1742, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1743, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1744, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1745, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1746, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1747, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1748, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1749, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1750, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1751, 'Sub Gallery Image  [Tharu Hut]Data has deleted suc', '2018-04-24 15:13:41', 1, 6, '192.168.2.119'),
(1752, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1753, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1754, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1755, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1756, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1757, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1758, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1759, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1760, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1761, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1762, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1763, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:46', 1, 6, '192.168.2.119'),
(1764, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1765, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1766, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1767, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1768, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1769, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1770, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1771, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1772, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1773, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:47', 1, 6, '192.168.2.119'),
(1774, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1775, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1776, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1777, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1778, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1779, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1780, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1781, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:51', 1, 6, '192.168.2.119'),
(1782, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1783, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1784, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1785, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1786, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1787, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1788, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1789, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1790, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1791, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1792, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1793, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1794, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1795, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:52', 1, 6, '192.168.2.119'),
(1796, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:53', 1, 6, '192.168.2.119'),
(1797, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:57', 1, 6, '192.168.2.119'),
(1798, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:57', 1, 6, '192.168.2.119'),
(1799, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:57', 1, 6, '192.168.2.119'),
(1800, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:57', 1, 6, '192.168.2.119'),
(1801, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1802, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1803, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1804, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1805, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1806, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1807, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1808, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1809, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1810, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1811, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1812, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1813, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1814, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1815, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1816, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:58', 1, 6, '192.168.2.119'),
(1817, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:59', 1, 6, '192.168.2.119'),
(1818, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:59', 1, 6, '192.168.2.119'),
(1819, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:13:59', 1, 6, '192.168.2.119'),
(1820, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:13:59', 1, 6, '192.168.2.119'),
(1821, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:03', 1, 6, '192.168.2.119'),
(1822, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:03', 1, 6, '192.168.2.119'),
(1823, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:03', 1, 6, '192.168.2.119'),
(1824, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:03', 1, 6, '192.168.2.119'),
(1825, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:03', 1, 6, '192.168.2.119'),
(1826, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:03', 1, 6, '192.168.2.119'),
(1827, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1828, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1829, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1830, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1831, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1832, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1833, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1834, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1835, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1836, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1837, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1838, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1839, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1840, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1841, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1842, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:04', 1, 6, '192.168.2.119'),
(1843, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:05', 1, 6, '192.168.2.119'),
(1844, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:05', 1, 6, '192.168.2.119'),
(1845, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:14:05', 1, 6, '192.168.2.119'),
(1846, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:08', 1, 6, '192.168.2.119'),
(1847, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:08', 1, 6, '192.168.2.119'),
(1848, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:08', 1, 6, '192.168.2.119'),
(1849, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:08', 1, 6, '192.168.2.119'),
(1850, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:08', 1, 6, '192.168.2.119'),
(1851, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1852, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1853, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1854, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1855, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1856, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1857, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1858, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1859, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1860, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1861, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1862, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1863, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1864, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1865, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:09', 1, 6, '192.168.2.119'),
(1866, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:10', 1, 6, '192.168.2.119'),
(1867, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:10', 1, 6, '192.168.2.119'),
(1868, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:10', 1, 6, '192.168.2.119'),
(1869, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:10', 1, 6, '192.168.2.119'),
(1870, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:10', 1, 6, '192.168.2.119'),
(1871, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:14:10', 1, 6, '192.168.2.119'),
(1872, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1873, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1874, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1875, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1876, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1877, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1878, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1879, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1880, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1881, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:14', 1, 6, '192.168.2.119'),
(1882, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1883, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1884, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1885, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1886, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1887, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1888, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1889, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1890, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1891, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1892, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1893, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1894, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:15', 1, 6, '192.168.2.119'),
(1895, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:16', 1, 6, '192.168.2.119'),
(1896, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:16', 1, 6, '192.168.2.119'),
(1897, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:16', 1, 6, '192.168.2.119'),
(1898, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:14:16', 1, 6, '192.168.2.119'),
(1899, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1900, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1901, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1902, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1903, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1904, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1905, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1906, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:21', 1, 6, '192.168.2.119'),
(1907, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1908, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1909, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1910, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1911, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1912, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1913, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1914, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1915, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1916, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1917, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1918, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1919, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1920, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1921, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1922, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1923, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:22', 1, 6, '192.168.2.119'),
(1924, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:23', 1, 6, '192.168.2.119'),
(1925, 'Sub Gallery Image  []Data has deleted successfully', '2018-04-24 15:14:23', 1, 6, '192.168.2.119'),
(1926, 'Sub Gallery Image  [Jagatpur Lodge]Data has delete', '2018-04-24 15:14:23', 1, 6, '192.168.2.119'),
(1927, 'Login: site admin   logged in.', '2018-04-25 11:03:30', 1, 1, '::1'),
(1928, 'Menu  [Explore]Data has deleted successfully.', '2018-04-25 12:42:08', 1, 6, '::1'),
(1929, 'Menu [News] Edit Successfully', '2018-04-25 12:42:34', 1, 4, '::1'),
(1930, 'Menu [Contact us] CreatedData has added successful', '2018-04-25 12:44:11', 1, 3, '::1'),
(1931, 'Changes on Sub Package \'Executive Double\' has been', '2018-04-25 13:02:04', 1, 4, '::1'),
(1932, 'Changes on Sub Package \'Executive Double\' has been', '2018-04-25 16:35:20', 1, 4, '::1'),
(1933, 'Changes on Sub Package \'Executive Double\' has been', '2018-04-25 16:42:42', 1, 4, '::1'),
(1934, 'Changes on Sub Package \'Executive Room\' has been s', '2018-04-25 16:50:20', 1, 4, '::1'),
(1935, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-25 17:00:07', 1, 4, '::1'),
(1936, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-25 17:01:51', 1, 4, '::1'),
(1937, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-25 17:05:06', 1, 4, '::1'),
(1938, 'Changes on Config \'Godavari Resort\' has been saved', '2018-04-25 17:05:43', 1, 4, '::1'),
(1939, 'Login: site admin   logged in.', '2018-04-26 11:41:36', 1, 1, '::1'),
(1940, 'Package Dining Edit Successfully', '2018-04-26 16:49:35', 1, 4, '::1'),
(1941, 'Login: site admin   logged in.', '2018-05-20 18:01:49', 1, 1, '192.168.2.125'),
(1942, 'Login: site admin   logged in.', '2018-05-23 15:08:29', 1, 1, '110.44.121.133'),
(1943, 'Login: site admin   logged in.', '2018-05-24 16:40:02', 1, 1, '110.44.121.133'),
(1944, 'Slideshow [Building]Data has added successfully.', '2018-05-24 16:48:20', 1, 3, '110.44.121.133'),
(1945, 'Slideshow [Building]Data has added successfully.', '2018-05-24 16:49:18', 1, 3, '110.44.121.133'),
(1946, 'Slideshows  [Building]Data has deleted successfull', '2018-05-24 16:49:26', 1, 6, '110.44.121.133'),
(1947, 'Slideshow  [Building]Data has deleted successfully', '2018-05-24 16:49:26', 1, 6, '110.44.121.133'),
(1948, 'Slideshow [Building] Edit Successfully', '2018-05-24 16:51:26', 1, 4, '110.44.121.133'),
(1949, 'Slideshow [Room]Data has added successfully.', '2018-05-24 16:54:04', 1, 3, '110.44.121.133'),
(1950, 'Slideshows  [Hall]Data has deleted successfully.', '2018-05-24 16:54:38', 1, 6, '110.44.121.133'),
(1951, 'Slideshow  [Hall]Data has deleted successfully.', '2018-05-24 16:54:38', 1, 6, '110.44.121.133'),
(1952, 'Slideshow [Surrounding]Data has added successfully', '2018-05-24 17:07:39', 1, 3, '110.44.121.133'),
(1953, 'Slideshow [Dining hall]Data has added successfully', '2018-05-24 17:18:39', 1, 3, '110.44.121.133'),
(1954, 'Slideshow [Surrounding] Edit Successfully', '2018-05-24 17:19:50', 1, 4, '110.44.121.133'),
(1955, 'Slideshow [Surrounding] Edit Successfully', '2018-05-24 17:20:54', 1, 4, '110.44.121.133'),
(1956, 'Slideshow [Room] Edit Successfully', '2018-05-24 17:23:46', 1, 4, '110.44.121.133'),
(1957, 'Slideshow [Hall]Data has added successfully.', '2018-05-24 17:26:24', 1, 3, '110.44.121.133'),
(1958, 'Changes on Article \'About \' has been saved success', '2018-05-24 17:59:40', 1, 4, '110.44.121.133'),
(1959, 'Changes on Article \'About \' has been saved success', '2018-05-24 18:02:03', 1, 4, '110.44.121.133'),
(1960, 'Changes on Article \'About \' has been saved success', '2018-05-24 18:07:54', 1, 4, '110.44.121.133'),
(1961, 'Changes on Article \'About \' has been saved success', '2018-05-24 18:08:50', 1, 4, '110.44.121.133'),
(1962, 'Changes on Article \'About \' has been saved success', '2018-05-24 18:10:08', 1, 4, '110.44.121.133'),
(1963, 'Login: site admin   logged in.', '2018-05-25 10:37:28', 1, 1, '110.44.121.133'),
(1964, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-25 10:38:08', 1, 4, '110.44.121.133'),
(1965, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-25 10:38:42', 1, 4, '110.44.121.133'),
(1966, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-25 10:39:04', 1, 4, '110.44.121.133'),
(1967, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-25 10:39:35', 1, 4, '110.44.121.133'),
(1968, 'Login: site admin   logged in.', '2018-05-25 11:09:09', 1, 1, '::1'),
(1969, 'Menu [Facilities] Edit Successfully', '2018-05-25 11:55:59', 1, 4, '::1'),
(1970, 'Menu [Facilities] Edit Successfully', '2018-05-25 11:56:47', 1, 4, '::1'),
(1971, 'Menu [Gallery] Edit Successfully', '2018-05-25 12:01:21', 1, 4, '::1'),
(1972, 'Menu [Contact Us] Edit Successfully', '2018-05-25 12:01:50', 1, 4, '::1'),
(1973, 'Menu [Room] Edit Successfully', '2018-05-25 12:02:32', 1, 4, '::1'),
(1974, 'Menu [Dining] Edit Successfully', '2018-05-25 12:04:03', 1, 4, '::1'),
(1975, 'Menu [Banquet] CreatedData has added successfully.', '2018-05-25 12:06:54', 1, 3, '::1'),
(1976, 'Package Dining Edit Successfully', '2018-05-25 12:51:41', 1, 4, '::1'),
(1977, 'Package Dining Edit Successfully', '2018-05-25 12:51:55', 1, 4, '::1'),
(1978, 'Package Dining Edit Successfully', '2018-05-25 12:52:16', 1, 4, '::1'),
(1979, 'Package Dining Edit Successfully', '2018-05-25 12:52:32', 1, 4, '::1'),
(1980, 'Package Dining Edit Successfully', '2018-05-25 12:52:59', 1, 4, '::1'),
(1981, 'Package Dining Edit Successfully', '2018-05-25 12:53:39', 1, 4, '::1'),
(1982, 'Login: site admin   logged in.', '2018-05-25 15:55:48', 1, 1, '::1'),
(1983, 'Changes on Article \'About \' has been saved success', '2018-05-25 15:57:17', 1, 4, '::1'),
(1984, 'Login: site admin   logged in.', '2018-05-27 10:05:36', 1, 1, '::1'),
(1985, 'Features [Locker] Edit Successfully', '2018-05-27 10:17:45', 1, 4, '::1'),
(1986, 'Features [Locker] Edit Successfully', '2018-05-27 10:29:57', 1, 4, '::1'),
(1987, 'Features [View] Edit Successfully', '2018-05-27 10:31:50', 1, 4, '::1'),
(1988, 'Features [TV Cable] Edit Successfully', '2018-05-27 10:32:19', 1, 4, '::1'),
(1989, 'Features [Parking] Edit Successfully', '2018-05-27 10:34:14', 1, 4, '::1'),
(1990, 'Features [Wifi] Edit Successfully', '2018-05-27 10:34:30', 1, 4, '::1');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1991, 'Features [Free wine] Edit Successfully', '2018-05-27 10:34:53', 1, 4, '::1'),
(1992, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-05-27 11:47:22', 1, 4, '::1'),
(1993, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-05-27 11:58:19', 1, 4, '::1'),
(1994, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-05-27 11:59:08', 1, 4, '::1'),
(1995, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-27 14:35:29', 1, 4, '::1'),
(1996, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-27 14:36:19', 1, 4, '::1'),
(1997, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-27 14:38:57', 1, 4, '::1'),
(1998, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-27 14:39:24', 1, 4, '::1'),
(1999, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-27 14:40:18', 1, 4, '::1'),
(2000, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-27 14:40:29', 1, 4, '::1'),
(2001, 'Features [WIFI] Edit Successfully', '2018-05-27 16:01:13', 1, 4, '::1'),
(2002, 'Features [LED TV] Edit Successfully', '2018-05-27 16:01:43', 1, 4, '::1'),
(2003, 'Features [Ironing Facilities] Edit Successfully', '2018-05-27 16:02:08', 1, 4, '::1'),
(2004, 'Features [Jungle View] Edit Successfully', '2018-05-27 16:02:30', 1, 4, '::1'),
(2005, 'Features  [High speed WIFI]Data has deleted succes', '2018-05-27 16:02:47', 1, 6, '::1'),
(2006, 'Features [Breakfast] Edit Successfully', '2018-05-27 16:03:35', 1, 4, '::1'),
(2007, 'Features [Desk] Edit Successfully', '2018-05-27 16:04:06', 1, 4, '::1'),
(2008, 'Features [Shower] Edit Successfully', '2018-05-27 16:04:26', 1, 4, '::1'),
(2009, 'Features [Tea / Coffee] Edit Successfully', '2018-05-27 16:04:59', 1, 4, '::1'),
(2010, 'Features [Welcome Drink] Edit Successfully', '2018-05-27 16:05:25', 1, 4, '::1'),
(2011, 'Features [Toiletries] Edit Successfully', '2018-05-27 16:05:55', 1, 4, '::1'),
(2012, 'Features [Complementary Water Bottle] Edit Success', '2018-05-27 16:06:39', 1, 4, '::1'),
(2013, 'Features  [Air Conditioner]Data has deleted succes', '2018-05-27 16:07:02', 1, 6, '::1'),
(2014, 'Features [AC] Edit Successfully', '2018-05-27 16:07:25', 1, 4, '::1'),
(2015, 'Features [Airport pickup] Edit Successfully', '2018-05-27 16:09:23', 1, 4, '::1'),
(2016, 'Features [Garden View] Edit Successfully', '2018-05-27 16:12:38', 1, 4, '::1'),
(2017, 'Features [Daily Housekeeping] Edit Successfully', '2018-05-27 16:15:00', 1, 4, '::1'),
(2018, 'Package Dining Edit Successfully', '2018-05-27 17:32:08', 1, 4, '::1'),
(2019, 'Testimonial [Puja Shah] Edit Successfully', '2018-05-27 17:38:27', 1, 4, '::1'),
(2020, 'Testimonial [Puja Shah] Edit Successfully', '2018-05-27 17:39:06', 1, 4, '::1'),
(2021, 'Testimonial [Colleen] Edit Successfully', '2018-05-27 17:45:27', 1, 4, '::1'),
(2022, 'Testimonial [Puja Shah] Edit Successfully', '2018-05-27 17:46:46', 1, 4, '::1'),
(2023, 'Testimonial [AshishGurung] Edit Successfully', '2018-05-27 17:47:45', 1, 4, '::1'),
(2024, 'Testimonial [AshishGurung] Edit Successfully', '2018-05-27 17:47:56', 1, 4, '::1'),
(2025, 'Testimonial [JigsGaton] Edit Successfully', '2018-05-27 17:48:58', 1, 4, '::1'),
(2026, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-05-27 18:10:12', 1, 4, '::1'),
(2027, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-05-27 18:11:44', 1, 4, '::1'),
(2028, 'Login: site admin   logged in.', '2018-05-28 10:50:21', 1, 1, '::1'),
(2029, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-05-28 10:51:36', 1, 4, '::1'),
(2030, 'Changes on Sub Package \'Amarati Hall\' has been sav', '2018-05-28 10:52:27', 1, 4, '::1'),
(2031, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-05-28 10:56:57', 1, 4, '::1'),
(2032, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-05-28 11:00:00', 1, 4, '::1'),
(2033, 'Menu [Amarbati] Edit Successfully', '2018-05-28 11:04:42', 1, 4, '::1'),
(2034, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-28 11:54:51', 1, 4, '::1'),
(2035, 'Login: site admin   logged in.', '2018-05-28 14:38:41', 1, 1, '::1'),
(2036, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-28 14:40:04', 1, 4, '::1'),
(2037, 'Login: site admin   logged in.', '2018-05-28 16:20:00', 1, 1, '::1'),
(2038, 'Login: site admin   logged in.', '2018-05-28 16:28:29', 1, 1, '::1'),
(2039, 'Login: site admin   logged in.', '2018-05-28 16:29:26', 1, 1, '192.168.2.109'),
(2040, 'Login: site admin   logged in.', '2018-05-28 16:30:33', 1, 1, '192.168.2.101'),
(2041, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-28 16:44:35', 1, 4, '192.168.2.101'),
(2042, 'Features [WIFI] Edit Successfully', '2018-05-28 16:48:56', 1, 4, '192.168.2.101'),
(2043, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-28 16:49:50', 1, 4, '192.168.2.101'),
(2044, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-28 16:51:55', 1, 4, '192.168.2.101'),
(2045, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-28 17:00:14', 1, 4, '192.168.2.101'),
(2046, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-28 17:07:01', 1, 4, '192.168.2.101'),
(2047, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-28 17:14:15', 1, 4, '192.168.2.101'),
(2048, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-28 17:15:10', 1, 4, '192.168.2.101'),
(2049, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-05-28 17:23:33', 1, 4, '192.168.2.101'),
(2050, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-05-28 17:30:29', 1, 4, '192.168.2.101'),
(2051, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-05-28 17:39:07', 1, 4, '192.168.2.101'),
(2052, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-05-28 17:41:10', 1, 4, '192.168.2.101'),
(2053, 'Login: site admin   logged in.', '2018-05-28 17:56:43', 1, 1, '192.168.2.101'),
(2054, 'Login: site admin   logged in.', '2018-05-29 10:54:57', 1, 1, '192.168.2.101'),
(2055, 'Features [WIFI] Edit Successfully', '2018-05-29 10:58:50', 1, 4, '192.168.2.101'),
(2056, 'Features [Desk] Edit Successfully', '2018-05-29 11:05:43', 1, 4, '192.168.2.101'),
(2057, 'Features [Complementary Water Bottle] Edit Success', '2018-05-29 11:06:40', 1, 4, '192.168.2.101'),
(2058, 'Features [Tea / Coffee] Edit Successfully', '2018-05-29 11:10:57', 1, 4, '192.168.2.101'),
(2059, 'Features [Shower] Edit Successfully', '2018-05-29 11:15:22', 1, 4, '192.168.2.101'),
(2060, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-29 11:17:09', 1, 4, '192.168.2.101'),
(2061, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-29 11:31:16', 1, 4, '192.168.2.101'),
(2062, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-29 11:31:35', 1, 4, '192.168.2.101'),
(2063, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-29 11:32:19', 1, 4, '192.168.2.101'),
(2064, 'Features [Toiletries] Edit Successfully', '2018-05-29 11:48:39', 1, 4, '192.168.2.101'),
(2065, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-05-29 12:30:39', 1, 4, '192.168.2.101'),
(2066, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-29 12:54:10', 1, 4, '192.168.2.101'),
(2067, 'Login: site admin   logged in.', '2018-05-29 14:47:53', 1, 1, '192.168.2.125'),
(2068, 'Features [WIFI] Edit Successfully', '2018-05-29 14:49:11', 1, 4, '192.168.2.125'),
(2069, 'Features [Shower] Edit Successfully', '2018-05-29 15:07:01', 1, 4, '192.168.2.101'),
(2070, 'Features [Tea / Coffee] Edit Successfully', '2018-05-29 15:11:34', 1, 4, '192.168.2.101'),
(2071, 'Features [Toiletries] Edit Successfully', '2018-05-29 15:14:55', 1, 4, '192.168.2.101'),
(2072, 'Features [Breakfast] Edit Successfully', '2018-05-29 15:20:30', 1, 4, '192.168.2.101'),
(2073, 'Features [Daily Housekeeping] Edit Successfully', '2018-05-29 15:23:38', 1, 4, '192.168.2.101'),
(2074, 'Features [ATM Lounge] Edit Successfully', '2018-05-29 15:41:39', 1, 4, '192.168.2.101'),
(2075, 'Features [ATM Lounge] Edit Successfully', '2018-05-29 15:42:12', 1, 4, '192.168.2.101'),
(2076, 'Login: site admin   logged in.', '2018-05-29 15:44:18', 1, 1, '::1'),
(2077, 'Features [ATM Lounge] Edit Successfully', '2018-05-29 15:45:57', 1, 4, '192.168.2.101'),
(2078, 'Features [ATM Lounge] Edit Successfully', '2018-05-29 15:48:58', 1, 4, '192.168.2.101'),
(2079, 'Changes on Config \'Godavari Resort\' has been saved', '2018-05-29 15:49:41', 1, 4, '::1'),
(2080, 'Features [Foreign Exchange Service]Data has added ', '2018-05-29 15:52:58', 1, 3, '192.168.2.101'),
(2081, 'Features [Foreign Exchange Service] Edit Successfu', '2018-05-29 16:01:08', 1, 4, '192.168.2.101'),
(2082, 'Features [Foreign Exchange Service] Edit Successfu', '2018-05-29 16:04:44', 1, 4, '192.168.2.101'),
(2083, 'Features [Foreign Exchange Service] Edit Successfu', '2018-05-29 16:04:59', 1, 4, '192.168.2.101'),
(2084, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-29 16:14:34', 1, 4, '192.168.2.125'),
(2085, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-29 16:15:03', 1, 4, '192.168.2.125'),
(2086, 'SocialNetworking [Youtube] Edit Successfully', '2018-05-29 16:15:21', 1, 4, '192.168.2.125'),
(2087, 'SocialNetworking [Facebook] Edit Successfully', '2018-05-29 16:16:06', 1, 4, '192.168.2.125'),
(2088, 'SocialNetworking [Google plus] Edit Successfully', '2018-05-29 16:16:40', 1, 4, '192.168.2.125'),
(2089, 'Gallery Image  [Video Gallery]Data has deleted suc', '2018-05-29 16:23:40', 1, 6, '::1'),
(2090, 'Gallery [Video]Data has added successfully.', '2018-05-29 16:26:50', 1, 3, '::1'),
(2091, 'Sub Gallery Video [Building]Data has added success', '2018-05-29 16:28:27', 1, 3, '::1'),
(2092, 'Sub Gallery Video [Surrounding]Data has added succ', '2018-05-29 16:31:48', 1, 3, '::1'),
(2093, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-29 16:44:51', 1, 4, '::1'),
(2094, 'Gallery Image [photo Gallery] Edit Successfully', '2018-05-29 16:44:58', 1, 4, '192.168.2.125'),
(2095, 'Gallery Image [Rooms] Edit Successfully', '2018-05-29 16:45:21', 1, 4, '192.168.2.125'),
(2096, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2018-05-29 16:53:38', 1, 3, '192.168.2.125'),
(2097, 'Sub Gallery Image [Executive Room]Data has added s', '2018-05-29 16:53:38', 1, 3, '192.168.2.125'),
(2098, 'Sub Gallery Image [Bathroom]Data has added success', '2018-05-29 16:53:39', 1, 3, '192.168.2.125'),
(2099, 'Sub Gallery Image [Deluxe Double]Data has added su', '2018-05-29 16:53:39', 1, 3, '192.168.2.125'),
(2100, 'Sub Gallery Image [Bathroom]Data has added success', '2018-05-29 16:53:39', 1, 3, '192.168.2.125'),
(2101, 'Sub Gallery Image [Executive Double]Data has added', '2018-05-29 16:53:39', 1, 3, '192.168.2.125'),
(2102, 'Sub Gallery Image [Room Amenities]Data has added s', '2018-05-29 16:53:39', 1, 3, '192.168.2.125'),
(2103, 'Sub Gallery Image [Room Amenities]Data has added s', '2018-05-29 16:53:39', 1, 3, '192.168.2.125'),
(2104, 'Menu [Video Gallery] CreatedData has added success', '2018-05-29 17:01:22', 1, 3, '::1'),
(2105, 'Sub Gallery Image [Executive Twin Bed]Data has add', '2018-05-29 17:02:49', 1, 3, '192.168.2.125'),
(2106, 'Menu [Photo Gallery] CreatedData has added success', '2018-05-29 17:02:54', 1, 3, '::1'),
(2107, 'Menu [Gallery] Edit Successfully', '2018-05-29 17:03:05', 1, 4, '::1'),
(2108, 'Gallery Image [Dining] Edit Successfully', '2018-05-29 17:04:15', 1, 4, '192.168.2.125'),
(2109, 'Gallery Image [Dining] Edit Successfully', '2018-05-29 17:04:38', 1, 4, '192.168.2.125'),
(2110, 'Sub Gallery Image  [Greenery]Data has deleted succ', '2018-05-29 17:04:47', 1, 6, '192.168.2.125'),
(2111, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-29 17:04:50', 1, 6, '192.168.2.125'),
(2112, 'Sub Gallery Image  [Boating]Data has deleted succe', '2018-05-29 17:04:50', 1, 6, '192.168.2.125'),
(2113, 'Sub Gallery Image [Dining Hall]Data has added succ', '2018-05-29 17:05:18', 1, 3, '192.168.2.125'),
(2114, 'Sub Gallery Image [Dining Hall]Data has added succ', '2018-05-29 17:05:18', 1, 3, '192.168.2.125'),
(2115, 'Sub Gallery Image [Bar]Data has added successfully', '2018-05-29 17:05:18', 1, 3, '192.168.2.125'),
(2116, 'Sub Gallery Image [Bar]Data has added successfully', '2018-05-29 17:05:18', 1, 3, '192.168.2.125'),
(2117, 'Gallery Image [Dine and Wine] Edit Successfully', '2018-05-29 17:05:30', 1, 4, '192.168.2.125'),
(2118, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-29 17:22:25', 1, 4, '192.168.2.101'),
(2119, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-05-29 17:22:38', 1, 4, '::1'),
(2120, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-29 17:22:49', 1, 4, '192.168.2.101'),
(2121, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-29 17:23:13', 1, 4, '192.168.2.101'),
(2122, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-29 17:23:54', 1, 4, '192.168.2.101'),
(2123, 'Changes on Sub Package \'Resort View\' has been save', '2018-05-29 17:53:42', 1, 4, '::1'),
(2124, 'Changes on Article \'About \' has been saved success', '2018-05-29 18:12:24', 1, 4, '::1'),
(2125, 'Login: site admin   logged in.', '2018-05-30 11:43:17', 1, 1, '110.44.121.133'),
(2126, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 11:44:15', 1, 4, '110.44.121.133'),
(2127, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 11:45:01', 1, 4, '110.44.121.133'),
(2128, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 11:45:25', 1, 4, '110.44.121.133'),
(2129, 'Testimonial [Sujan] Edit Successfully', '2018-05-30 11:52:33', 1, 4, '110.44.121.133'),
(2130, 'Login: site admin   logged in.', '2018-05-30 11:52:45', 1, 1, '110.44.121.133'),
(2131, 'Testimonial [Sandeep] Edit Successfully', '2018-05-30 12:01:06', 1, 4, '110.44.121.133'),
(2132, 'Testimonial [Barsha] Edit Successfully', '2018-05-30 12:02:16', 1, 4, '110.44.121.133'),
(2133, 'Testimonial [Lyefei] Edit Successfully', '2018-05-30 12:04:27', 1, 4, '110.44.121.133'),
(2134, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 12:13:14', 1, 4, '110.44.121.133'),
(2135, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 12:13:30', 1, 4, '110.44.121.133'),
(2136, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 12:16:25', 1, 4, '110.44.121.133'),
(2137, 'Changes on Sub Package \'Resort View\' has been save', '2018-05-30 12:17:30', 1, 4, '110.44.121.133'),
(2138, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-05-30 12:17:50', 1, 4, '110.44.121.133'),
(2139, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-05-30 12:18:07', 1, 4, '110.44.121.133'),
(2140, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 12:19:03', 1, 4, '110.44.121.133'),
(2141, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 12:28:48', 1, 4, '110.44.121.133'),
(2142, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 12:29:51', 1, 4, '110.44.121.133'),
(2143, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 12:31:43', 1, 4, '110.44.121.133'),
(2144, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 12:35:41', 1, 4, '110.44.121.133'),
(2145, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 12:38:33', 1, 4, '110.44.121.133'),
(2146, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 12:39:39', 1, 4, '110.44.121.133'),
(2147, 'Changes on Sub Package \'Resort View\' has been save', '2018-05-30 12:44:39', 1, 4, '110.44.121.133'),
(2148, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-05-30 12:46:09', 1, 4, '110.44.121.133'),
(2149, 'Changes on Article \'About \' has been saved success', '2018-05-30 12:51:11', 1, 4, '110.44.121.133'),
(2150, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 12:52:37', 1, 4, '110.44.121.133'),
(2151, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 12:52:51', 1, 4, '110.44.121.133'),
(2152, 'Menu [Facilities] Edit Successfully', '2018-05-30 12:54:47', 1, 4, '110.44.121.133'),
(2153, 'Menu [Mountain View] Edit Successfully', '2018-05-30 12:56:07', 1, 4, '110.44.121.133'),
(2154, 'Menu [Resort View] Edit Successfully', '2018-05-30 12:56:36', 1, 4, '110.44.121.133'),
(2155, 'Menu [Deluxe Room] Edit Successfully', '2018-05-30 12:56:59', 1, 4, '110.44.121.133'),
(2156, 'Menu [Executive Room] Edit Successfully', '2018-05-30 12:57:18', 1, 4, '110.44.121.133'),
(2157, 'Menu [Amarbati Hall] Edit Successfully', '2018-05-30 12:57:43', 1, 4, '110.44.121.133'),
(2158, 'Menu [Resort View] CreatedData has added successfu', '2018-05-30 12:58:28', 1, 3, '110.44.121.133'),
(2159, 'Sub Gallery Image [Bar]Data has added successfully', '2018-05-30 13:00:45', 1, 3, '110.44.121.133'),
(2160, 'Sub Gallery Image [Dining Hall]Data has added succ', '2018-05-30 13:00:45', 1, 3, '110.44.121.133'),
(2161, 'Gallery [Banquet Hall]Data has added successfully.', '2018-05-30 13:01:28', 1, 3, '110.44.121.133'),
(2162, 'Gallery [Interior & Exteriour]Data has added succe', '2018-05-30 13:02:13', 1, 3, '110.44.121.133'),
(2163, 'Gallery Image [Interior | Exteriour] Edit Successf', '2018-05-30 13:02:28', 1, 4, '110.44.121.133'),
(2164, 'Gallery [Events]Data has added successfully.', '2018-05-30 13:02:53', 1, 3, '110.44.121.133'),
(2165, 'Features [Foreign Exchange Service] Edit Successfu', '2018-05-30 13:57:52', 1, 4, '110.44.121.133'),
(2166, 'Features [ATM Lounge] Edit Successfully', '2018-05-30 13:59:19', 1, 4, '110.44.121.133'),
(2167, 'Features [ATM Lounge] Edit Successfully', '2018-05-30 13:59:37', 1, 4, '110.44.121.133'),
(2168, 'User [site admin  ] Edit Successfully', '2018-05-30 14:02:51', 1, 4, '110.44.121.133'),
(2169, 'Login: site admin   logged in.', '2018-05-30 14:02:55', 1, 1, '110.44.121.133'),
(2170, 'User [Sunita  Shakya] Edit Successfully', '2018-05-30 14:03:40', 1, 4, '110.44.121.133'),
(2171, 'Login: site admin   logged in.', '2018-05-30 14:26:49', 1, 1, '110.44.121.133'),
(2172, 'Changes on Config \'Godavari Village Resort\' has be', '2018-05-30 14:47:31', 1, 4, '110.44.121.133'),
(2173, 'Login: site admin   logged in.', '2018-05-30 16:01:01', 1, 1, '110.44.121.133'),
(2174, 'Sub Gallery Video [Godavari Village Resort]Data ha', '2018-05-30 16:01:47', 1, 3, '110.44.121.133'),
(2175, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-30 16:02:32', 1, 4, '110.44.121.133'),
(2176, 'Gallery Image [Video] Edit Successfully', '2018-05-30 16:02:45', 1, 4, '110.44.121.133'),
(2177, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-30 16:04:08', 1, 4, '110.44.121.133'),
(2178, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-30 16:05:00', 1, 4, '110.44.121.133'),
(2179, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-30 16:05:32', 1, 4, '110.44.121.133'),
(2180, 'Package Dining Edit Successfully', '2018-05-30 16:06:19', 1, 4, '110.44.121.133'),
(2181, 'Changes on Sub Package \'Refreshing Godavari\' has b', '2018-05-30 16:07:02', 1, 4, '110.44.121.133'),
(2182, 'Changes on Sub Package \'Resort View\' has been save', '2018-05-30 16:07:36', 1, 4, '110.44.121.133'),
(2183, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-05-30 16:08:14', 1, 4, '110.44.121.133'),
(2184, 'Features [Foreign Currency Exchange] Edit Successf', '2018-05-30 16:08:38', 1, 4, '110.44.121.133'),
(2185, 'Changes on Sub Package \'Health Club\' has been save', '2018-05-30 16:08:45', 1, 4, '110.44.121.133'),
(2186, 'Features [Locker] Edit Successfully', '2018-05-30 16:09:00', 1, 4, '110.44.121.133'),
(2187, 'Features [View Location] Edit Successfully', '2018-05-30 16:10:22', 1, 4, '110.44.121.133'),
(2188, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-05-30 16:10:25', 1, 4, '110.44.121.133'),
(2189, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-05-30 16:11:11', 1, 4, '110.44.121.133'),
(2190, 'Features [Parking] Edit Successfully', '2018-05-30 16:11:20', 1, 4, '110.44.121.133'),
(2191, 'Changes on Sub Package \'Vai Janta Hall\' has been s', '2018-05-30 16:11:54', 1, 4, '110.44.121.133'),
(2192, 'Features [Wifi] Edit Successfully', '2018-05-30 16:12:09', 1, 4, '110.44.121.133'),
(2193, 'Changes on Sub Package \'Deluxe Rooms\' has been sav', '2018-05-30 16:12:56', 1, 4, '110.44.121.133'),
(2194, 'Features [ATM Lounge] Edit Successfully', '2018-05-30 16:13:01', 1, 4, '110.44.121.133'),
(2195, 'Changes on Sub Package \'Luxurious Tents\' has been ', '2018-05-30 16:13:22', 1, 4, '110.44.121.133'),
(2196, 'Features [Locker] Edit Successfully', '2018-05-30 16:15:28', 1, 4, '110.44.121.133'),
(2197, 'Features [View Location] Edit Successfully', '2018-05-30 16:15:53', 1, 4, '110.44.121.133'),
(2198, 'Features [Doctor on Call]Data has added successful', '2018-05-30 16:16:09', 1, 3, '110.44.121.133'),
(2199, 'Features [Wifi] Edit Successfully', '2018-05-30 16:17:11', 1, 4, '110.44.121.133'),
(2200, 'Package Dining Edit Successfully', '2018-05-30 16:18:17', 1, 4, '110.44.121.133'),
(2201, 'Package  [Stay]Data has deleted successfully.', '2018-05-30 16:35:45', 1, 6, '110.44.121.133'),
(2202, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-30 16:37:31', 1, 4, '110.44.121.133'),
(2203, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-30 16:38:29', 1, 4, '110.44.121.133'),
(2204, 'Sub Gallery Image [Vai Janta Hall]Data has added s', '2018-05-30 16:40:16', 1, 3, '110.44.121.133'),
(2205, 'Sub Gallery Image [Vai Janta Hall]Data has added s', '2018-05-30 16:40:16', 1, 3, '110.44.121.133'),
(2206, 'Sub Gallery Image [Meeting Hall]Data has added suc', '2018-05-30 16:40:16', 1, 3, '110.44.121.133'),
(2207, 'Sub Gallery Image [Meeting Hall]Data has added suc', '2018-05-30 16:40:16', 1, 3, '110.44.121.133'),
(2208, 'Sub Gallery Image [Amarbati Hall]Data has added su', '2018-05-30 16:40:16', 1, 3, '110.44.121.133'),
(2209, 'Sub Gallery Image [Amarbati Hall]Data has added su', '2018-05-30 16:40:16', 1, 3, '110.44.121.133'),
(2210, 'Sub Gallery Image  [Vai Janta Hall]Data has delete', '2018-05-30 16:41:13', 1, 6, '110.44.121.133'),
(2211, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:13', 1, 6, '110.44.121.133'),
(2212, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:14', 1, 6, '110.44.121.133'),
(2213, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:14', 1, 6, '110.44.121.133'),
(2214, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:14', 1, 6, '110.44.121.133'),
(2215, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:14', 1, 6, '110.44.121.133'),
(2216, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:15', 1, 6, '110.44.121.133'),
(2217, 'Sub Gallery Image  [Vai Janta Hall]Data has delete', '2018-05-30 16:41:15', 1, 6, '110.44.121.133'),
(2218, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:16', 1, 6, '110.44.121.133'),
(2219, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:16', 1, 6, '110.44.121.133'),
(2220, 'Sub Gallery Image  [Meeting Hall]Data has deleted ', '2018-05-30 16:41:22', 1, 6, '110.44.121.133'),
(2221, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:28', 1, 6, '110.44.121.133'),
(2222, 'Sub Gallery Image  [Meeting Hall]Data has deleted ', '2018-05-30 16:41:28', 1, 6, '110.44.121.133'),
(2223, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:33', 1, 6, '110.44.121.133'),
(2224, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:33', 1, 6, '110.44.121.133'),
(2225, 'Sub Gallery Image  [Amarbati Hall]Data has deleted', '2018-05-30 16:41:33', 1, 6, '110.44.121.133'),
(2226, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:39', 1, 6, '110.44.121.133'),
(2227, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:40', 1, 6, '110.44.121.133'),
(2228, 'Sub Gallery Image  []Data has deleted successfully', '2018-05-30 16:41:40', 1, 6, '110.44.121.133'),
(2229, 'Sub Gallery Image  [Amarbati Hall]Data has deleted', '2018-05-30 16:41:40', 1, 6, '110.44.121.133'),
(2230, 'Sub Gallery Image [Vai Janta Hall]Data has added s', '2018-05-30 16:44:11', 1, 3, '110.44.121.133'),
(2231, 'Sub Gallery Image [Vai Janta Hall]Data has added s', '2018-05-30 16:44:11', 1, 3, '110.44.121.133'),
(2232, 'Sub Gallery Image [Meeting Hall]Data has added suc', '2018-05-30 16:44:11', 1, 3, '110.44.121.133'),
(2233, 'Sub Gallery Image [Meeting Hall]Data has added suc', '2018-05-30 16:44:11', 1, 3, '110.44.121.133'),
(2234, 'Sub Gallery Image [Amarbati Hall]Data has added su', '2018-05-30 16:44:11', 1, 3, '110.44.121.133'),
(2235, 'Sub Gallery Image [Amarbati Hall]Data has added su', '2018-05-30 16:44:11', 1, 3, '110.44.121.133'),
(2236, 'Changes on Sub Package \'Executive Room\' has been s', '2018-05-30 16:46:53', 1, 4, '110.44.121.133'),
(2237, 'Sub Gallery Image  [Surrounding]Data has deleted s', '2018-05-30 16:50:46', 1, 6, '110.44.121.133'),
(2238, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-05-30 16:51:08', 1, 4, '110.44.121.133'),
(2239, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-30 16:52:22', 1, 4, '110.44.121.133'),
(2240, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-30 16:59:31', 1, 4, '110.44.121.133'),
(2241, 'Sub Gallery Image  [Building]Data has deleted succ', '2018-05-30 17:04:01', 1, 6, '110.44.121.133'),
(2242, 'User [site admin  ] Edit Successfully', '2018-05-30 17:04:14', 1, 4, '110.44.121.133'),
(2243, 'Sub Gallery Image [Interior]Data has added success', '2018-05-30 17:09:58', 1, 3, '110.44.121.133'),
(2244, 'Sub Gallery Image [Interior]Data has added success', '2018-05-30 17:09:58', 1, 3, '110.44.121.133'),
(2245, 'Sub Gallery Image [Interior]Data has added success', '2018-05-30 17:09:58', 1, 3, '110.44.121.133'),
(2246, 'Sub Gallery Image [Exteritor]Data has added succes', '2018-05-30 17:09:58', 1, 3, '110.44.121.133'),
(2247, 'Sub Gallery Image [Exterior]Data has added success', '2018-05-30 17:09:58', 1, 3, '110.44.121.133'),
(2248, 'Sub Gallery Image [Exterior]Data has added success', '2018-05-30 17:09:58', 1, 3, '110.44.121.133'),
(2249, 'Login: site admin   logged in.', '2018-05-30 17:11:52', 1, 1, '110.44.121.133'),
(2250, 'Login: site admin   logged in.', '2018-05-30 17:18:30', 1, 1, '110.44.121.133'),
(2251, 'Sub Gallery Image [Holi]Data has added successfull', '2018-05-30 17:29:51', 1, 3, '110.44.121.133'),
(2252, 'Sub Gallery Image [Holi]Data has added successfull', '2018-05-30 17:29:51', 1, 3, '110.44.121.133'),
(2253, 'Sub Gallery Image [Holi]Data has added successfull', '2018-05-30 17:29:51', 1, 3, '110.44.121.133'),
(2254, 'Sub Gallery Image [Wedding]Data has added successf', '2018-05-30 17:29:51', 1, 3, '110.44.121.133'),
(2255, 'Sub Gallery Image [Wedding]Data has added successf', '2018-05-30 17:29:51', 1, 3, '110.44.121.133'),
(2256, 'Sub Gallery Image [Wedding]Data has added successf', '2018-05-30 17:29:51', 1, 3, '110.44.121.133'),
(2257, 'Changes on Sub Package \'Executive Double\' has been', '2018-05-30 17:39:58', 1, 4, '110.44.121.133'),
(2258, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-05-30 17:40:16', 1, 4, '110.44.121.133'),
(2259, 'Package Dining Edit Successfully', '2018-05-30 17:41:55', 1, 4, '110.44.121.133'),
(2260, 'Login: site admin   logged in.', '2018-06-01 11:48:08', 1, 1, '110.44.121.133'),
(2261, 'Login: site admin   logged in.', '2018-06-01 12:33:17', 1, 1, '110.44.121.133'),
(2262, 'Changes on Config \'Godavari Village Resort\' has be', '2018-06-01 12:34:03', 1, 4, '110.44.121.133'),
(2263, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:37:43', 1, 4, '110.44.121.133'),
(2264, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:42:33', 1, 4, '110.44.121.133'),
(2265, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:44:04', 1, 4, '110.44.121.133'),
(2266, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:44:52', 1, 4, '110.44.121.133'),
(2267, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:45:46', 1, 4, '110.44.121.133'),
(2268, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:46:16', 1, 4, '110.44.121.133'),
(2269, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:47:31', 1, 4, '110.44.121.133'),
(2270, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:48:16', 1, 4, '110.44.121.133'),
(2271, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:51:31', 1, 4, '110.44.121.133'),
(2272, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:55:28', 1, 4, '110.44.121.133'),
(2273, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 12:56:33', 1, 4, '110.44.121.133'),
(2274, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 14:44:04', 1, 4, '110.44.121.133'),
(2275, 'Changes on Sub Package \'Health Club\' has been save', '2018-06-01 14:45:03', 1, 4, '110.44.121.133'),
(2276, 'Login: site admin   logged in.', '2018-06-01 17:18:44', 1, 1, '110.44.121.133'),
(2277, 'Login: site admin   logged in.', '2018-06-01 17:30:22', 1, 1, '110.44.121.133'),
(2278, 'Changes on Sub Package \'Executive Double\' has been', '2018-06-01 17:33:02', 1, 4, '110.44.121.133'),
(2279, 'Changes on Sub Package \'Executive Room\' has been s', '2018-06-01 17:34:07', 1, 4, '110.44.121.133'),
(2280, 'Changes on Sub Package \'Executive Double\' has been', '2018-06-01 17:37:12', 1, 4, '110.44.121.133'),
(2281, 'Changes on Sub Package \'Executive Room\' has been s', '2018-06-01 17:37:25', 1, 4, '110.44.121.133'),
(2282, 'Login: site admin   logged in.', '2018-06-01 17:47:56', 1, 1, '110.44.121.133'),
(2283, 'User [site admin  ] Edit Successfully', '2018-06-01 17:48:39', 1, 4, '110.44.121.133'),
(2284, 'Login: site admin   logged in.', '2018-06-01 17:48:47', 1, 1, '110.44.121.133'),
(2285, 'User [site admin  ] Edit Successfully', '2018-06-01 17:49:11', 1, 4, '110.44.121.133'),
(2286, 'Login: site admin   logged in.', '2018-06-01 17:49:22', 1, 1, '110.44.121.133'),
(2287, 'Login: site admin   logged in.', '2018-06-03 16:52:26', 1, 1, '110.44.121.133'),
(2288, 'Changes on Config \'Godavari Village Resort\' has be', '2018-06-03 16:56:34', 1, 4, '110.44.121.133'),
(2289, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-06-03 17:02:33', 1, 4, '110.44.121.133'),
(2290, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-06-03 17:02:59', 1, 4, '110.44.121.133'),
(2291, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-06-03 17:03:53', 1, 4, '110.44.121.133'),
(2292, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-06-03 17:06:25', 1, 4, '110.44.121.133'),
(2293, 'Changes on Config \'Godavari Village Resort\' has be', '2018-06-03 17:07:14', 1, 4, '110.44.121.133'),
(2294, 'Login: site admin   logged in.', '2018-06-03 18:07:25', 1, 1, '110.44.121.133'),
(2295, 'Login: site admin   logged in.', '2018-07-08 14:09:46', 1, 1, '110.44.121.133'),
(2296, 'Login: site admin   logged in.', '2018-07-08 15:40:02', 1, 1, '110.44.121.133'),
(2297, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-07-08 15:40:36', 1, 4, '110.44.121.133'),
(2298, 'Login: site admin   logged in.', '2018-07-08 15:44:14', 1, 1, '110.44.121.133'),
(2299, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-07-08 15:46:10', 1, 4, '110.44.121.133'),
(2300, 'Login: site admin   logged in.', '2018-07-08 15:49:29', 1, 1, '110.44.121.133'),
(2301, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-07-08 16:10:07', 1, 4, '110.44.121.133'),
(2302, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-07-08 16:10:59', 1, 4, '110.44.121.133'),
(2303, 'Login: site admin   logged in.', '2018-07-08 16:54:00', 1, 1, '110.44.121.133'),
(2304, 'Login: site admin   logged in.', '2018-08-17 09:46:25', 1, 1, '110.44.121.133'),
(2305, 'User [site admin  ] Edit Successfully', '2018-08-17 09:48:41', 1, 4, '110.44.121.133'),
(2306, 'Login: site admin   logged in.', '2018-08-17 09:49:24', 1, 1, '110.44.121.133'),
(2307, 'Login: site admin   logged in.', '2018-08-17 09:58:25', 1, 1, '110.44.121.133'),
(2308, 'Login: site admin   logged in.', '2018-08-17 10:03:05', 1, 1, '110.44.121.133'),
(2309, 'Login: site admin   logged in.', '2018-08-17 14:41:04', 1, 1, '110.44.121.133'),
(2310, 'Login: site admin   logged in.', '2018-08-17 14:54:56', 1, 1, '110.44.121.133'),
(2311, 'Login: site admin   logged in.', '2018-08-17 15:31:19', 1, 1, '202.63.243.226'),
(2312, 'Booking Request []Data has deleted successfully.', '2018-08-17 16:14:31', 1, 6, '202.63.243.226'),
(2313, 'Slideshow [Swimming Pool] Edit Successfully', '2018-08-17 16:16:53', 1, 4, '202.63.243.226'),
(2314, 'Changes on Article \'About \' has been saved success', '2018-08-17 16:18:09', 1, 4, '202.63.243.226'),
(2315, 'Changes on Article \'About \' has been saved success', '2018-08-17 16:19:11', 1, 4, '202.63.243.226'),
(2316, 'Changes on Article \'About \' has been saved success', '2018-08-17 19:00:20', 1, 4, '202.63.243.226'),
(2317, 'Changes on Article \'About \' has been saved success', '2018-08-19 12:55:15', 1, 4, '202.63.243.226'),
(2318, 'Login: site admin   logged in.', '2018-08-19 16:21:46', 1, 1, '110.44.121.133'),
(2319, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-08-19 16:28:55', 1, 4, '202.63.243.226'),
(2320, 'Changes on Sub Package \'VaiJanta Hall\' has been sa', '2018-08-19 16:31:43', 1, 4, '202.63.243.226'),
(2321, 'Changes on Sub Package \'Vaijanta Hall\' has been sa', '2018-08-19 16:32:12', 1, 4, '202.63.243.226'),
(2322, 'Changes on Sub Package \'Vaijanta Hall\' has been sa', '2018-08-19 16:35:52', 1, 4, '202.63.243.226'),
(2323, 'Package Dining Edit Successfully', '2018-08-19 16:42:28', 1, 4, '202.63.243.226'),
(2324, 'Features  [ATM Lounge]Data has deleted successfull', '2018-08-19 16:43:19', 1, 6, '202.63.243.226'),
(2325, 'Login: site admin   logged in.', '2018-08-21 11:58:09', 1, 1, '110.44.121.133'),
(2326, 'Menu [Brochure Download] CreatedData has added suc', '2018-08-24 13:01:39', 1, 3, '202.63.243.226'),
(2327, 'Menu [Brochure] Edit Successfully', '2018-08-24 13:08:06', 1, 4, '202.63.243.226'),
(2328, 'Menu [Brochure] Edit Successfully', '2018-08-24 13:08:48', 1, 4, '202.63.243.226'),
(2329, 'Changes on Sub Package \'Executive Double\' has been', '2018-08-24 13:11:48', 1, 4, '202.63.243.226'),
(2330, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-08-24 13:14:35', 1, 4, '202.63.243.226'),
(2331, 'Changes on Sub Package \'Suite Room\' has been saved', '2018-08-24 13:31:24', 1, 4, '202.63.243.226'),
(2332, 'Login: site admin   logged in.', '2018-08-31 10:19:36', 1, 1, '202.63.243.226'),
(2333, 'Changes on Sub Package \'Executive Double\' has been', '2018-08-31 10:52:53', 1, 4, '202.63.243.226'),
(2334, 'Changes on Sub Package \'Executive Room\' has been s', '2018-08-31 10:53:26', 1, 4, '202.63.243.226'),
(2335, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-08-31 10:54:04', 1, 4, '202.63.243.226'),
(2336, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-08-31 10:55:16', 1, 4, '202.63.243.226'),
(2337, 'Changes on Sub Package \'Suite Room\' has been saved', '2018-08-31 10:55:58', 1, 4, '202.63.243.226'),
(2338, 'Changes on Sub Package \'Deluxe Room\' has been save', '2018-08-31 10:57:38', 1, 4, '202.63.243.226'),
(2339, 'Changes on Sub Package \'Executive Double\' has been', '2018-08-31 10:58:05', 1, 4, '202.63.243.226'),
(2340, 'Changes on Sub Package \'Executive Room\' has been s', '2018-08-31 10:58:40', 1, 4, '202.63.243.226'),
(2341, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-08-31 10:59:27', 1, 4, '202.63.243.226'),
(2342, 'Changes on Sub Package \'Executive Room\' has been s', '2018-08-31 11:00:07', 1, 4, '202.63.243.226'),
(2343, 'Login: site admin   logged in.', '2018-08-31 11:09:54', 1, 1, '110.44.121.133'),
(2344, 'Sub Gallery Image [TEEJ UTSAB-3rd September 2018]D', '2018-08-31 11:20:09', 1, 3, '202.63.243.226'),
(2345, 'Sub Gallery Image  [TEEJ UTSAB-3rd September 2018]', '2018-08-31 11:21:49', 1, 6, '202.63.243.226'),
(2346, 'Changes on Article \'About \' has been saved success', '2018-08-31 12:05:50', 1, 4, '110.44.121.133'),
(2347, 'Changes on Article \'About \' has been saved success', '2018-08-31 12:10:25', 1, 4, '110.44.121.133'),
(2348, 'Changes on Article \'About \' has been saved success', '2018-08-31 12:11:55', 1, 4, '110.44.121.133'),
(2349, 'Changes on Article \'About \' has been saved success', '2018-08-31 12:13:40', 1, 4, '110.44.121.133'),
(2350, 'Sub Gallery Image  [Bar]Data has deleted successfu', '2018-08-31 13:40:42', 1, 6, '202.63.243.226'),
(2351, 'Sub Gallery Image  [Bar]Data has deleted successfu', '2018-08-31 13:40:59', 1, 6, '202.63.243.226'),
(2352, 'Sub Gallery Image [TEEJ UTSAB-3rd September 2018]D', '2018-08-31 13:48:07', 1, 3, '202.63.243.226'),
(2353, 'Sub Gallery Image  [TEEJ UTSAB-3rd September 2018]', '2018-08-31 13:48:20', 1, 6, '202.63.243.226'),
(2354, 'Sub Gallery Image [Gvr]Data has added successfully', '2018-08-31 13:50:26', 1, 3, '202.63.243.226'),
(2355, 'Sub Gallery Image  [Gvr]Data has deleted successfu', '2018-08-31 13:50:42', 1, 6, '202.63.243.226'),
(2356, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-08-31 13:53:03', 1, 4, '202.63.243.226'),
(2357, 'Login: site admin   logged in.', '2018-08-31 17:00:49', 1, 1, '110.44.121.133'),
(2358, 'Sub Gallery Image [Vaijanta Dining]Data has added ', '2018-09-01 12:21:38', 1, 3, '202.63.243.226'),
(2359, 'Sub Gallery Image  [Vaijanta Dining]Data has delet', '2018-09-01 12:22:58', 1, 6, '202.63.243.226'),
(2360, 'Sub Gallery Image [Restaurant]Data has added succe', '2018-09-01 12:23:48', 1, 3, '202.63.243.226'),
(2361, 'Sub Gallery Image  [Restaurant]Data has deleted su', '2018-09-01 12:24:12', 1, 6, '202.63.243.226'),
(2362, 'Login: site admin   logged in.', '2018-09-06 12:21:37', 1, 1, '110.44.121.133'),
(2363, 'Changes on Sub Package \'Resort View\' has been save', '2018-09-06 12:22:59', 1, 4, '202.63.243.226'),
(2364, 'Changes on Sub Package \'Refreshing Godavari\' has b', '2018-09-06 12:23:21', 1, 4, '110.44.121.133'),
(2365, 'Changes on Sub Package \'Executive Double\' has been', '2018-09-06 12:24:38', 1, 4, '110.44.121.133'),
(2366, 'Changes on Sub Package \'Executive Double\' has been', '2018-09-06 12:25:11', 1, 4, '110.44.121.133'),
(2367, 'Login: site admin   logged in.', '2018-09-06 12:28:58', 1, 1, '110.44.121.133'),
(2368, 'Changes on Sub Package \'Executive Double\' has been', '2018-09-06 12:31:38', 1, 4, '110.44.121.133'),
(2369, 'Changes on Article \'About \' has been saved success', '2018-09-06 15:15:44', 1, 4, '202.63.243.226'),
(2370, 'Changes on Article \'About \' has been saved success', '2018-09-06 15:16:43', 1, 4, '202.63.243.226'),
(2371, 'Sub Gallery Image [Swimming Competition]Data has a', '2018-09-06 15:20:16', 1, 3, '202.63.243.226'),
(2372, 'Sub Gallery Image  [Swimming Competition]Data has ', '2018-09-06 15:23:30', 1, 6, '202.63.243.226'),
(2373, 'Changes on Sub Package \'Suite Room\' has been saved', '2018-09-15 15:26:17', 1, 4, '202.63.243.226'),
(2374, 'Login: site admin   logged in.', '2018-09-27 13:56:59', 1, 1, '202.63.243.226'),
(2375, 'Login: site admin   logged in.', '2018-09-27 15:13:04', 1, 1, '202.63.243.226'),
(2376, 'Login: site admin   logged in.', '2018-09-27 16:21:22', 1, 1, '202.63.243.226'),
(2377, 'Login: site admin   logged in.', '2018-09-27 16:55:48', 1, 1, '202.63.243.226'),
(2378, 'Login: site admin   logged in.', '2018-09-28 10:36:18', 1, 1, '202.63.243.226'),
(2379, 'Login: site admin   logged in.', '2018-09-28 15:00:55', 1, 1, '110.44.121.133'),
(2380, 'Login: site admin   logged in.', '2018-09-29 11:00:22', 1, 1, '202.63.243.226'),
(2381, 'Login: site admin   logged in.', '2018-09-29 16:21:41', 1, 1, '202.63.243.226'),
(2382, 'Login: site admin   logged in.', '2018-09-30 11:07:56', 1, 1, '202.63.243.226'),
(2383, 'Login: site admin   logged in.', '2018-10-02 13:25:54', 1, 1, '202.63.243.226'),
(2384, 'Login: site admin   logged in.', '2018-10-05 10:36:07', 1, 1, '202.63.243.226'),
(2385, 'Login: site admin   logged in.', '2018-10-05 10:54:54', 1, 1, '110.44.121.133'),
(2386, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-10-05 10:58:10', 1, 4, '110.44.121.133'),
(2387, 'Login: site admin   logged in.', '2018-10-06 15:27:45', 1, 1, '202.63.243.226'),
(2388, 'Login: site admin   logged in.', '2018-10-07 12:05:51', 1, 1, '202.63.243.226'),
(2389, 'Login: site admin   logged in.', '2018-10-10 16:38:59', 1, 1, '202.63.243.226'),
(2390, 'Login: site admin   logged in.', '2018-10-14 12:46:19', 1, 1, '202.63.243.226'),
(2391, 'Login: site admin   logged in.', '2018-10-25 11:33:38', 1, 1, '202.63.243.226'),
(2392, 'Login: site admin   logged in.', '2018-10-26 10:51:52', 1, 1, '202.63.243.226'),
(2393, 'Login: site admin   logged in.', '2018-10-27 15:43:36', 1, 1, '202.63.243.226'),
(2394, 'Login: site admin   logged in.', '2018-10-28 11:07:20', 1, 1, '202.63.243.226'),
(2395, 'Login: site admin   logged in.', '2018-10-30 13:24:16', 1, 1, '202.63.243.226'),
(2396, 'Login: site admin   logged in.', '2018-10-30 13:51:31', 1, 1, '202.63.243.226'),
(2397, 'Login: site admin   logged in.', '2018-10-31 13:30:52', 1, 1, '202.63.243.226'),
(2398, 'Login: site admin   logged in.', '2018-11-01 16:30:08', 1, 1, '202.63.243.226'),
(2399, 'Login: site admin   logged in.', '2018-11-02 12:10:19', 1, 1, '202.63.243.226'),
(2400, 'Login: site admin   logged in.', '2018-11-03 12:26:03', 1, 1, '202.63.243.226'),
(2401, 'Login: site admin   logged in.', '2018-11-04 12:03:59', 1, 1, '202.63.243.226'),
(2402, 'Booking Request []Data has deleted successfully.', '2018-11-12 10:56:46', 1, 6, '202.63.243.226'),
(2403, 'Booking Request []Data has deleted successfully.', '2018-11-12 10:56:51', 1, 6, '202.63.243.226'),
(2404, 'Booking Request []Data has deleted successfully.', '2018-11-12 10:56:55', 1, 6, '202.63.243.226'),
(2405, 'Booking Request []Data has deleted successfully.', '2018-11-12 10:57:00', 1, 6, '202.63.243.226'),
(2406, 'Booking Request []Data has deleted successfully.', '2018-11-12 10:57:07', 1, 6, '202.63.243.226'),
(2407, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-11-12 10:59:20', 1, 4, '202.63.243.226'),
(2408, 'Changes on Sub Package \'Executive Room\' has been s', '2018-11-12 11:03:32', 1, 4, '202.63.243.226'),
(2409, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2018-11-12 11:05:25', 1, 4, '202.63.243.226'),
(2410, 'Changes on Sub Package \'Executive Room\' has been s', '2018-11-12 11:06:04', 1, 4, '202.63.243.226'),
(2411, 'Login: site admin   logged in.', '2018-11-15 12:37:36', 1, 1, '202.63.243.226'),
(2412, 'Login: site admin   logged in.', '2018-11-16 13:35:49', 1, 1, '202.63.243.226'),
(2413, 'Login: site admin   logged in.', '2018-11-16 15:55:35', 1, 1, '202.63.243.226'),
(2414, 'User [site admin  ] Edit Successfully', '2018-11-16 15:59:07', 1, 4, '202.63.243.226'),
(2415, 'Login: site admin   logged in.', '2018-11-16 16:00:59', 1, 1, '202.63.243.226'),
(2416, 'Changes on Config \'Godavari Village Resort | Tradi', '2018-11-16 16:04:24', 1, 4, '202.63.243.226'),
(2417, 'Login: site admin   logged in.', '2018-11-17 15:29:49', 1, 1, '202.63.243.226'),
(2418, 'Login: site admin   logged in.', '2018-11-18 11:21:34', 1, 1, '202.63.243.226'),
(2419, 'Login: site admin   logged in.', '2018-11-19 16:07:46', 1, 1, '202.63.243.226'),
(2420, 'Login: site admin   logged in.', '2018-11-21 11:38:31', 1, 1, '124.41.211.96'),
(2421, 'Login: site admin   logged in.', '2018-11-22 11:12:06', 1, 1, '202.63.243.226'),
(2422, 'Login: site admin   logged in.', '2018-11-23 11:08:45', 1, 1, '202.63.243.226'),
(2423, 'Login: site admin   logged in.', '2018-11-23 12:42:25', 1, 1, '110.44.121.133'),
(2424, 'Login: site admin   logged in.', '2018-11-23 14:31:11', 1, 1, '202.63.243.226'),
(2425, 'Login: site admin   logged in.', '2018-11-24 10:24:26', 1, 1, '202.63.243.226'),
(2426, 'Login: site admin   logged in.', '2018-11-25 13:30:50', 1, 1, '202.63.243.226'),
(2427, 'Login: site admin   logged in.', '2018-11-26 11:58:57', 1, 1, '202.63.243.226'),
(2428, 'Login: site admin   logged in.', '2018-11-30 12:03:13', 1, 1, '202.63.243.226'),
(2429, 'Login: site admin   logged in.', '2018-12-02 11:55:15', 1, 1, '202.63.243.226'),
(2430, 'Login: site admin   logged in.', '2018-12-03 12:05:25', 1, 1, '202.63.243.226'),
(2431, 'Login: site admin   logged in.', '2018-12-05 11:29:28', 1, 1, '202.63.243.226'),
(2432, 'Login: site admin   logged in.', '2018-12-08 14:37:06', 1, 1, '202.63.243.226'),
(2433, 'Login: site admin   logged in.', '2018-12-10 15:58:04', 1, 1, '202.63.243.226'),
(2434, 'Slideshow [Dining hall] Edit Successfully', '2018-12-14 12:02:22', 1, 4, '202.63.243.226'),
(2435, 'Login: site admin   logged in.', '2018-12-14 12:02:57', 1, 1, '202.63.243.226'),
(2436, 'Sub Gallery Image [New Year Eve]Data has added suc', '2018-12-14 12:09:38', 1, 3, '202.63.243.226'),
(2437, 'Sub Gallery Image  [New Year Eve]Data has deleted ', '2018-12-14 12:09:53', 1, 6, '202.63.243.226'),
(2438, 'Login: site admin   logged in.', '2018-12-19 17:36:33', 1, 1, '202.63.243.226'),
(2439, 'Login: site admin   logged in.', '2018-12-20 11:58:11', 1, 1, '110.44.121.133'),
(2440, 'Sub Gallery Image [Deluxe Twin]Data has added succ', '2018-12-20 16:02:21', 1, 3, '202.63.243.226'),
(2441, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2018-12-20 16:04:01', 1, 3, '202.63.243.226'),
(2442, 'Sub Gallery Image  [Bar]Data has deleted successfu', '2018-12-20 16:04:27', 1, 6, '202.63.243.226'),
(2443, 'Sub Gallery Image  [Dining Hall]Data has deleted s', '2018-12-20 16:04:35', 1, 6, '202.63.243.226'),
(2444, 'Sub Gallery Image  [Dining Hall]Data has deleted s', '2018-12-20 16:06:10', 1, 6, '202.63.243.226'),
(2445, 'Sub Gallery Image [Vaijanta Dining Hall]Data has a', '2018-12-20 16:09:15', 1, 3, '202.63.243.226'),
(2446, 'Sub Gallery Image [Vaijanta Dining Hall]Data has a', '2018-12-20 16:09:15', 1, 3, '202.63.243.226'),
(2447, 'Sub Gallery Image [Vaijanta Dining Hall]Data has a', '2018-12-20 16:09:15', 1, 3, '202.63.243.226'),
(2448, 'Sub Gallery Image [Garden Lawn ]Data has added suc', '2018-12-20 16:11:23', 1, 3, '202.63.243.226'),
(2449, 'Sub Gallery Image [Garden Lawn ]Data has added suc', '2018-12-20 16:13:23', 1, 3, '202.63.243.226'),
(2450, 'Sub Gallery Image [Wedding Event]Data has added su', '2018-12-20 16:14:13', 1, 3, '202.63.243.226'),
(2451, 'Sub Gallery Image  [Vai Janta Hall]Data has delete', '2018-12-20 16:16:02', 1, 6, '202.63.243.226'),
(2452, 'Sub Gallery Image [Garden Hall]Data has added succ', '2018-12-20 16:17:16', 1, 3, '202.63.243.226'),
(2453, 'Sub Gallery Image  [Meeting Hall]Data has deleted ', '2018-12-20 16:17:26', 1, 6, '202.63.243.226'),
(2454, 'Sub Gallery Image  [Meeting Hall]Data has deleted ', '2018-12-20 16:17:34', 1, 6, '202.63.243.226'),
(2455, 'Sub Gallery Image  [Amarbati Hall]Data has deleted', '2018-12-20 16:17:39', 1, 6, '202.63.243.226'),
(2456, 'Sub Gallery Image  [Amarbati Hall]Data has deleted', '2018-12-20 16:17:42', 1, 6, '202.63.243.226'),
(2457, 'Sub Gallery Image  [Garden Hall]Data has deleted s', '2018-12-20 16:17:46', 1, 6, '202.63.243.226'),
(2458, 'Sub Gallery Image [Meeting Hall]Data has added suc', '2018-12-20 16:18:15', 1, 3, '202.63.243.226'),
(2459, 'Sub Gallery Image [Garden Hall]Data has added succ', '2018-12-20 16:18:43', 1, 3, '202.63.243.226'),
(2460, 'Sub Gallery Image  [Vai Janta Hall]Data has delete', '2018-12-20 16:18:57', 1, 6, '202.63.243.226'),
(2461, 'Sub Gallery Image [Amarawati Hall]Data has added s', '2018-12-20 16:19:37', 1, 3, '202.63.243.226'),
(2462, 'Sub Gallery Image [Meeting Hall]Data has added suc', '2018-12-20 16:20:19', 1, 3, '202.63.243.226'),
(2463, 'Sub Gallery Image [Garden Hall]Data has added succ', '2018-12-20 16:20:48', 1, 3, '202.63.243.226'),
(2464, 'Sub Gallery Image  [Interior]Data has deleted succ', '2018-12-20 16:21:16', 1, 6, '202.63.243.226'),
(2465, 'Sub Gallery Image  [Interior]Data has deleted succ', '2018-12-20 16:21:22', 1, 6, '202.63.243.226'),
(2466, 'Sub Gallery Image [Main Lobby]Data has added succe', '2018-12-20 16:22:17', 1, 3, '202.63.243.226'),
(2467, 'Sub Gallery Image  [Exterior]Data has deleted succ', '2018-12-20 16:22:26', 1, 6, '202.63.243.226'),
(2468, 'Sub Gallery Image  []Data has deleted successfully', '2018-12-20 16:22:37', 1, 6, '202.63.243.226'),
(2469, 'Sub Gallery Image  []Data has deleted successfully', '2018-12-20 16:22:38', 1, 6, '202.63.243.226'),
(2470, 'Sub Gallery Image  []Data has deleted successfully', '2018-12-20 16:23:09', 1, 6, '202.63.243.226'),
(2471, 'Sub Gallery Image  []Data has deleted successfully', '2018-12-20 16:23:09', 1, 6, '202.63.243.226'),
(2472, 'Sub Gallery Image  []Data has deleted successfully', '2018-12-20 16:23:09', 1, 6, '202.63.243.226'),
(2473, 'Sub Gallery Image [Swimming Pool]Data has added su', '2018-12-20 16:23:49', 1, 3, '202.63.243.226'),
(2474, 'Sub Gallery Image  [Interior]Data has deleted succ', '2018-12-20 16:24:05', 1, 6, '202.63.243.226'),
(2475, 'Sub Gallery Image [Sitting Area]Data has added suc', '2018-12-20 16:24:42', 1, 3, '202.63.243.226'),
(2476, 'Sub Gallery Image [Exterior]Data has added success', '2018-12-20 16:25:44', 1, 3, '202.63.243.226'),
(2477, 'Sub Gallery Image [Cottage]Data has added successf', '2018-12-20 16:26:22', 1, 3, '202.63.243.226'),
(2478, 'Sub Gallery Image [Room Balcony ]Data has added su', '2018-12-20 16:27:06', 1, 3, '202.63.243.226'),
(2479, 'Sub Gallery Image [Cottage]Data has added successf', '2018-12-20 16:29:47', 1, 3, '202.63.243.226'),
(2480, 'Sub Gallery Image [The Resort]Data has added succe', '2018-12-20 16:34:43', 1, 3, '202.63.243.226'),
(2481, 'Sub Gallery Image [The Resort]Data has added succe', '2018-12-20 16:36:01', 1, 3, '202.63.243.226'),
(2482, 'Changes on Article \'About \' has been saved success', '2018-12-20 16:39:33', 1, 4, '202.63.243.226'),
(2483, 'Changes on Article \'About \' has been saved success', '2018-12-20 16:46:14', 1, 4, '202.63.243.226'),
(2484, 'Changes on Article \'About \' has been saved success', '2018-12-20 16:52:34', 1, 4, '202.63.243.226'),
(2485, 'Changes on Article \'About \' has been saved success', '2018-12-20 16:54:20', 1, 4, '202.63.243.226'),
(2486, 'Changes on Article \'About \' has been saved success', '2018-12-20 16:55:28', 1, 4, '202.63.243.226'),
(2487, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-12-20 17:00:21', 1, 4, '202.63.243.226');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(2488, 'Changes on Sub Package \'Amarbati Hall\' has been sa', '2018-12-20 17:02:01', 1, 4, '202.63.243.226'),
(2489, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2018-12-20 17:02:42', 1, 4, '202.63.243.226'),
(2490, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2018-12-20 17:04:02', 1, 4, '202.63.243.226'),
(2491, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2018-12-20 17:04:26', 1, 4, '202.63.243.226'),
(2492, 'Changes on Sub Package \'Vaijanta Hall(Garden Hall)', '2018-12-20 17:09:11', 1, 4, '202.63.243.226'),
(2493, 'Changes on Sub Package \'Mountain View\' has been sa', '2018-12-20 17:11:32', 1, 4, '202.63.243.226'),
(2494, 'Login: site admin   logged in.', '2018-12-21 12:37:59', 1, 1, '202.63.243.226'),
(2495, 'Login: site admin   logged in.', '2018-12-23 15:51:23', 1, 1, '202.63.243.226'),
(2496, 'Login: site admin   logged in.', '2018-12-26 12:47:03', 1, 1, '202.63.243.226'),
(2497, 'Login: site admin   logged in.', '2018-12-27 15:25:01', 1, 1, '202.63.243.226'),
(2498, 'Login: site admin   logged in.', '2018-12-28 15:30:40', 1, 1, '202.63.243.226'),
(2499, 'Login: site admin   logged in.', '2018-12-31 15:06:50', 1, 1, '202.63.243.226'),
(2500, 'Login: site admin   logged in.', '2019-01-01 13:58:35', 1, 1, '202.63.243.226'),
(2501, 'Login: site admin   logged in.', '2019-01-03 14:20:10', 1, 1, '202.63.243.226'),
(2502, 'Login: site admin   logged in.', '2019-01-03 17:53:59', 1, 1, '124.41.211.96'),
(2503, 'Login: site admin   logged in.', '2019-01-04 12:44:13', 1, 1, '124.41.211.96'),
(2504, 'Login: site admin   logged in.', '2019-01-04 16:50:24', 1, 1, '110.44.127.207'),
(2505, 'Changes on Article \'About \' has been saved success', '2019-01-04 17:00:59', 1, 4, '110.44.127.207'),
(2506, 'Login: site admin   logged in.', '2019-01-05 12:31:00', 1, 1, '202.63.243.226'),
(2507, 'Login: site admin   logged in.', '2019-01-08 10:33:46', 1, 1, '202.63.243.226'),
(2508, 'Login: site admin   logged in.', '2019-01-08 11:45:14', 1, 1, '202.63.243.226'),
(2509, 'Login: site admin   logged in.', '2019-01-09 17:13:40', 1, 1, '202.63.243.226'),
(2510, 'Login: site admin   logged in.', '2019-01-12 11:55:59', 1, 1, '202.63.243.226'),
(2511, 'Login: site admin   logged in.', '2019-01-13 14:02:30', 1, 1, '202.63.243.226'),
(2512, 'Login: site admin   logged in.', '2019-01-16 11:52:31', 1, 1, '202.63.243.226'),
(2513, 'Login: site admin   logged in.', '2019-01-17 14:20:08', 1, 1, '202.63.243.226'),
(2514, 'Login: site admin   logged in.', '2019-01-18 12:03:19', 1, 1, '202.63.243.226'),
(2515, 'Login: site admin   logged in.', '2019-01-19 13:38:45', 1, 1, '202.63.243.226'),
(2516, 'Login: site admin   logged in.', '2019-01-20 16:18:31', 1, 1, '202.63.243.226'),
(2517, 'Login: site admin   logged in.', '2019-01-25 13:25:29', 1, 1, '202.63.243.226'),
(2518, 'Login: site admin   logged in.', '2019-02-01 12:38:14', 1, 1, '202.63.243.226'),
(2519, 'Login: site admin   logged in.', '2019-02-02 17:18:13', 1, 1, '202.63.243.226'),
(2520, 'Login: site admin   logged in.', '2019-02-03 11:47:13', 1, 1, '202.63.243.226'),
(2521, 'Login: site admin   logged in.', '2019-02-06 11:20:54', 1, 1, '202.63.243.226'),
(2522, 'Login: site admin   logged in.', '2019-02-07 11:38:44', 1, 1, '202.63.243.226'),
(2523, 'Login: site admin   logged in.', '2019-02-08 10:20:00', 1, 1, '110.44.120.201'),
(2524, 'Login: site admin   logged in.', '2019-02-08 13:47:02', 1, 1, '202.63.243.226'),
(2525, 'Login: site admin   logged in.', '2019-02-09 12:56:15', 1, 1, '202.63.243.226'),
(2526, 'Login: site admin   logged in.', '2019-02-11 16:27:50', 1, 1, '110.44.121.133'),
(2527, 'Changes on Config \'Godavari Village Resort | Tradi', '2019-02-11 16:27:58', 1, 4, '110.44.121.133'),
(2528, 'Login: site admin   logged in.', '2019-02-15 11:45:43', 1, 1, '202.63.243.226'),
(2529, 'Login: site admin   logged in.', '2019-02-17 09:13:08', 1, 1, '202.63.243.226'),
(2530, 'Login: site admin   logged in.', '2019-02-19 09:17:31', 1, 1, '202.63.243.226'),
(2531, 'Login: site admin   logged in.', '2019-02-19 10:26:59', 1, 1, '202.63.243.226'),
(2532, 'Login: site admin   logged in.', '2019-02-22 11:39:04', 1, 1, '110.44.125.10'),
(2533, 'Changes on Sub Package \'Refreshing Godavari\' has b', '2019-02-22 12:36:48', 1, 4, '110.44.125.10'),
(2534, 'Changes on Sub Package \'Resort View\' has been save', '2019-02-22 12:41:14', 1, 4, '110.44.125.10'),
(2535, 'Changes on Sub Package \'Mountain View\' has been sa', '2019-02-22 12:42:02', 1, 4, '110.44.125.10'),
(2536, 'Changes on Sub Package \'Health Club\' has been save', '2019-02-22 12:51:49', 1, 4, '110.44.125.10'),
(2537, 'Changes on Sub Package \'Executive Double\' has been', '2019-02-22 12:54:35', 1, 4, '110.44.125.10'),
(2538, 'Changes on Sub Package \'Executive Room\' has been s', '2019-02-22 12:56:32', 1, 4, '110.44.125.10'),
(2539, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2019-02-22 12:57:27', 1, 4, '110.44.125.10'),
(2540, 'Changes on Sub Package \'Deluxe Room\' has been save', '2019-02-22 12:58:33', 1, 4, '110.44.125.10'),
(2541, 'Changes on Sub Package \'Suite Room\' has been saved', '2019-02-22 12:59:32', 1, 4, '110.44.125.10'),
(2542, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2019-02-22 13:06:04', 1, 4, '110.44.125.10'),
(2543, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2019-02-22 13:08:05', 1, 4, '110.44.125.10'),
(2544, 'Changes on Sub Package \'Vaijanta Hall(Garden Hall)', '2019-02-22 13:08:38', 1, 4, '110.44.125.10'),
(2545, 'Login: site admin   logged in.', '2019-02-23 09:52:05', 1, 1, '202.63.243.226'),
(2546, 'Login: site admin   logged in.', '2019-02-24 11:17:19', 1, 1, '202.63.243.226'),
(2547, 'Login: site admin   logged in.', '2019-02-26 14:34:56', 1, 1, '110.44.125.10'),
(2548, 'Login: site admin   logged in.', '2019-02-26 15:24:18', 1, 1, '110.44.125.10'),
(2549, 'Login: site admin   logged in.', '2019-02-28 13:17:51', 1, 1, '202.63.243.226'),
(2550, 'Login: site admin   logged in.', '2019-03-03 10:13:02', 1, 1, '202.63.243.226'),
(2551, 'Login: site admin   logged in.', '2019-03-07 14:38:49', 1, 1, '202.63.243.226'),
(2552, 'Login: site admin   logged in.', '2019-03-12 17:39:16', 1, 1, '103.10.29.121'),
(2553, 'Login: site admin   logged in.', '2019-03-12 17:41:18', 1, 1, '103.10.29.121'),
(2554, 'Article \'Events\' has added successfully.', '2019-03-12 17:49:27', 1, 3, '103.10.29.121'),
(2555, 'Changes on Article \'Events\' has been saved success', '2019-03-12 17:49:56', 1, 4, '103.10.29.121'),
(2556, 'Menu [Holi Event] CreatedData has added successful', '2019-03-12 17:52:01', 1, 3, '103.10.29.121'),
(2557, 'Login: site admin   logged in.', '2019-03-15 12:24:58', 1, 1, '110.44.122.138'),
(2558, 'Login: site admin   logged in.', '2019-03-16 13:36:45', 1, 1, '202.63.243.226'),
(2559, 'Login: site admin   logged in.', '2019-03-16 15:12:28', 1, 1, '202.63.243.226'),
(2560, 'Login: site admin   logged in.', '2019-04-01 10:18:08', 1, 1, '202.63.243.226'),
(2561, 'Login: site admin   logged in.', '2019-04-13 10:47:58', 1, 1, '202.63.243.226'),
(2562, 'Login: site admin   logged in.', '2019-04-14 10:44:53', 1, 1, '202.63.243.226'),
(2563, 'Login: site admin   logged in.', '2019-04-24 10:29:13', 1, 1, '202.63.243.226'),
(2564, 'Login: site admin   logged in.', '2019-04-30 13:10:21', 1, 1, '110.44.122.138'),
(2565, 'Menu  [Holi Event]Data has deleted successfully.', '2019-04-30 13:10:36', 1, 6, '110.44.122.138'),
(2566, 'Login: site admin   logged in.', '2019-04-30 13:33:51', 1, 1, '202.63.243.226'),
(2567, 'Sub Gallery Image [HILLS International]Data has ad', '2019-04-30 13:35:47', 1, 3, '202.63.243.226'),
(2568, 'Login: site admin   logged in.', '2019-04-30 14:56:45', 1, 1, '110.44.122.138'),
(2569, 'Login: site admin   logged in.', '2019-04-30 15:02:41', 1, 1, '202.63.243.226'),
(2570, 'Login: site admin   logged in.', '2019-04-30 16:33:36', 1, 1, '110.44.122.138'),
(2571, 'Article \'Holistic Health Tourism\' has added succes', '2019-04-30 17:01:12', 1, 3, '110.44.122.138'),
(2572, 'Menu [Holistic Health Tourism] CreatedData has add', '2019-04-30 17:01:59', 1, 3, '110.44.122.138'),
(2573, 'Menu [Holistic Health Tourism] CreatedData has add', '2019-04-30 17:02:55', 1, 3, '110.44.122.138'),
(2574, 'Menu  [Holistic Health Tourism]Data has deleted su', '2019-04-30 17:05:00', 1, 6, '110.44.122.138'),
(2575, 'Menu [Holistic Health Tourism] Edit Successfully', '2019-04-30 17:15:33', 1, 4, '110.44.122.138'),
(2576, 'Changes on Article \'Events\' has been saved success', '2019-04-30 17:18:31', 1, 4, '110.44.122.138'),
(2577, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-04-30 17:18:42', 1, 4, '110.44.122.138'),
(2578, 'Changes on Article \'About \' has been saved success', '2019-04-30 17:19:16', 1, 4, '110.44.122.138'),
(2579, 'Changes on Article \'About \' has been saved success', '2019-04-30 17:19:53', 1, 4, '110.44.122.138'),
(2580, 'Changes on Article \'Events\' has been saved success', '2019-04-30 17:19:59', 1, 4, '110.44.122.138'),
(2581, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-04-30 17:20:07', 1, 4, '110.44.122.138'),
(2582, 'Changes on Article \'About \' has been saved success', '2019-04-30 17:20:58', 1, 4, '110.44.122.138'),
(2583, 'Login: site admin   logged in.', '2019-05-01 15:04:02', 1, 1, '110.44.122.138'),
(2584, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 15:07:57', 1, 4, '110.44.122.138'),
(2585, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 15:08:22', 1, 4, '110.44.122.138'),
(2586, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 15:13:29', 1, 4, '110.44.122.138'),
(2587, 'Login: site admin   logged in.', '2019-05-01 15:52:37', 1, 1, '110.44.122.138'),
(2588, 'Changes on Article \'About \' has been saved success', '2019-05-01 15:54:00', 1, 4, '110.44.122.138'),
(2589, 'Changes on Article \'About \' has been saved success', '2019-05-01 15:56:35', 1, 4, '110.44.122.138'),
(2590, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:02:13', 1, 4, '110.44.122.138'),
(2591, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:04:10', 1, 4, '110.44.122.138'),
(2592, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:08:55', 1, 4, '110.44.122.138'),
(2593, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:13:04', 1, 4, '110.44.122.138'),
(2594, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:14:15', 1, 4, '110.44.122.138'),
(2595, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:15:03', 1, 4, '110.44.122.138'),
(2596, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:15:43', 1, 4, '110.44.122.138'),
(2597, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:16:41', 1, 4, '110.44.122.138'),
(2598, 'Login: site admin   logged in.', '2019-05-01 16:20:57', 1, 1, '110.44.122.138'),
(2599, 'Changes on Article \'Holistic Health Tourism\' has b', '2019-05-01 16:21:30', 1, 4, '110.44.122.138'),
(2600, 'Login: site admin   logged in.', '2019-05-03 09:18:54', 1, 1, '202.63.243.226'),
(2601, 'Login: site admin   logged in.', '2019-05-16 12:02:55', 1, 1, '202.63.243.226'),
(2602, 'Login: site admin   logged in.', '2019-05-18 11:21:30', 1, 1, '202.63.243.226'),
(2603, 'Login: site admin   logged in.', '2019-05-24 15:05:04', 1, 1, '202.63.243.226'),
(2604, 'Login: site admin   logged in.', '2019-06-01 14:37:26', 1, 1, '202.63.243.226'),
(2605, 'Changes on Sub Package \'Executive Double\' has been', '2019-06-01 14:42:05', 1, 4, '202.63.243.226'),
(2606, 'Login: site admin   logged in.', '2019-07-03 14:46:18', 1, 1, '202.63.243.226'),
(2607, 'Login: site admin   logged in.', '2019-07-19 10:36:00', 1, 1, '202.63.243.226'),
(2608, 'Login: site admin   logged in.', '2019-09-16 15:12:47', 1, 1, '202.63.243.226'),
(2609, 'Login: site admin   logged in.', '2019-09-16 15:55:10', 1, 1, '202.63.243.226'),
(2610, 'Login: site admin   logged in.', '2019-09-19 10:16:09', 1, 1, '202.63.243.226'),
(2611, 'User [Pramod Bhakta Mathema] Edit Successfully', '2019-09-19 10:47:25', 1, 4, '202.63.243.226'),
(2612, 'Login: Pramod Bhakta Mathema logged in.', '2019-09-19 10:59:00', 1, 1, '202.63.243.226'),
(2613, 'Slideshow [Building] Edit Successfully', '2019-09-19 11:00:32', 1, 4, '202.63.243.226'),
(2614, 'Slideshow [Dining hall] Edit Successfully', '2019-09-19 11:02:52', 1, 4, '202.63.243.226'),
(2615, 'Changes on Sub Package \'Executive Double\' has been', '2019-09-19 11:16:13', 1, 4, '202.63.243.226'),
(2616, 'Login: Pramod Bhakta Mathema logged in.', '2019-10-17 13:14:43', 1, 1, '110.44.122.138'),
(2617, 'User [Pramod Bhakta Mathema] Edit Successfully', '2019-10-17 13:16:26', 1, 4, '110.44.122.138'),
(2618, 'Login: Pramod Bhakta Mathema logged in.', '2019-11-04 12:32:42', 1, 1, '202.63.243.226'),
(2619, 'Login: Pramod Bhakta Mathema logged in.', '2019-11-13 13:08:51', 1, 1, '202.63.243.226'),
(2620, 'Login: Pramod Bhakta Mathema logged in.', '2020-01-05 14:33:07', 1, 1, '202.63.243.226'),
(2621, 'Login: Pramod Bhakta Mathema logged in.', '2020-02-04 12:45:30', 1, 1, '202.63.243.226'),
(2622, 'Login: Pramod Bhakta Mathema logged in.', '2020-02-25 11:55:18', 1, 1, '202.63.243.226'),
(2623, 'Login: Pramod Bhakta Mathema logged in.', '2020-03-04 10:44:29', 1, 1, '202.63.243.226'),
(2624, 'Login: Pramod Bhakta Mathema logged in.', '2020-03-10 11:39:25', 1, 1, '110.44.122.138'),
(2625, 'Login: Pramod Bhakta Mathema logged in.', '2020-03-10 12:14:52', 1, 1, '110.44.122.138'),
(2626, 'Login: Pramod Bhakta Mathema logged in.', '2020-08-25 17:58:03', 1, 1, '110.44.122.143'),
(2627, 'SocialNetworking [Facebook] Edit Successfully', '2020-08-25 17:58:43', 1, 4, '110.44.122.143'),
(2628, 'SocialNetworking [Youtube] Edit Successfully', '2020-08-25 17:59:26', 1, 4, '110.44.122.143'),
(2629, 'Login: Pramod Bhakta Mathema logged in.', '2020-11-09 11:09:54', 1, 1, '27.34.17.115'),
(2630, 'Login: Pramod Bhakta Mathema logged in.', '2020-11-10 10:49:16', 1, 1, '27.34.17.115'),
(2631, 'Login: Pramod Bhakta Mathema logged in.', '2020-11-22 13:18:04', 1, 1, '27.34.18.12'),
(2632, 'Login: Pramod Bhakta Mathema logged in.', '2021-02-26 17:16:23', 1, 1, '27.34.68.123'),
(2633, 'Login: Pramod Bhakta Mathema logged in.', '2021-02-27 09:54:49', 1, 1, '202.63.243.226'),
(2634, 'User [Radheshyam  maharjan] Edit Successfully', '2021-02-27 09:56:09', 1, 4, '202.63.243.226'),
(2635, 'Login: Radheshyam  maharjan logged in.', '2021-02-27 09:56:30', 1, 1, '202.63.243.226'),
(2636, 'Login: Radheshyam  maharjan logged in.', '2022-05-30 17:45:46', 1, 1, '122.254.82.215'),
(2637, 'Login: Radheshyam  maharjan logged in.', '2022-05-31 13:04:01', 1, 1, '43.245.87.70'),
(2638, 'Login: Radheshyam  maharjan logged in.', '2022-05-31 15:15:14', 1, 1, '43.245.87.70'),
(2639, 'Login: Radheshyam  maharjan logged in.', '2022-05-31 15:54:04', 1, 1, '43.245.87.70'),
(2640, 'Login: Radheshyam  maharjan logged in.', '2022-05-31 15:56:21', 1, 1, '43.245.87.70'),
(2641, 'Login: Radheshyam  maharjan logged in.', '2022-05-31 15:59:50', 1, 1, '43.245.87.70'),
(2642, 'Changes on Article \'About \' has been saved success', '2022-05-31 16:00:12', 1, 4, '43.245.87.70'),
(2643, 'Changes on Article \'About \' has been saved success', '2022-05-31 16:03:00', 1, 4, '43.245.87.70'),
(2644, 'Changes on Article \'About \' has been saved success', '2022-05-31 16:03:42', 1, 4, '43.245.87.70'),
(2645, 'Changes on Article \'About \' has been saved success', '2022-05-31 16:08:24', 1, 4, '43.245.87.70'),
(2646, 'Changes on Article \'About \' has been saved success', '2022-05-31 16:09:26', 1, 4, '43.245.87.70'),
(2647, 'Article \'About Us\' has added successfully.', '2022-05-31 16:11:50', 1, 3, '43.245.87.70'),
(2648, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:18:50', 1, 4, '43.245.87.70'),
(2649, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:19:30', 1, 4, '43.245.87.70'),
(2650, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:40:54', 1, 4, '43.245.87.70'),
(2651, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:43:20', 1, 4, '43.245.87.70'),
(2652, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:44:39', 1, 4, '43.245.87.70'),
(2653, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:46:22', 1, 4, '43.245.87.70'),
(2654, 'Changes on Config \'Godavari Village Resort | Tradi', '2022-05-31 16:51:49', 1, 4, '43.245.87.70'),
(2655, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 16:52:45', 1, 4, '43.245.87.70'),
(2656, 'Changes on Config \'Godavari Village Resort | Tradi', '2022-05-31 16:56:57', 1, 4, '43.245.87.70'),
(2657, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 17:00:30', 1, 4, '43.245.87.70'),
(2658, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 17:04:08', 1, 4, '43.245.87.70'),
(2659, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 17:08:39', 1, 4, '43.245.87.70'),
(2660, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 17:18:53', 1, 4, '43.245.87.70'),
(2661, 'Changes on Config \'Godavari Village Resort | Tradi', '2022-05-31 17:31:29', 1, 4, '43.245.87.70'),
(2662, 'Changes on Config \'Godavari Village Resort | Tradi', '2022-05-31 17:33:45', 1, 4, '43.245.87.70'),
(2663, 'Changes on Article \'About Us\' has been saved succe', '2022-05-31 17:35:11', 1, 4, '43.245.87.70'),
(2664, 'Login: Radheshyam  maharjan logged in.', '2022-06-01 12:57:10', 1, 1, '43.245.87.70'),
(2665, 'Login: Radheshyam  maharjan logged in.', '2022-06-06 13:38:52', 1, 1, '103.41.174.122'),
(2666, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-06 14:57:08', 1, 4, '103.41.174.122'),
(2667, 'Changes on Article \'About Us\' has been saved succe', '2022-06-06 15:06:39', 1, 4, '103.41.174.122'),
(2668, 'Changes on Article \'About Us\' has been saved succe', '2022-06-06 15:09:14', 1, 4, '103.41.174.122'),
(2669, 'Slideshow [Swimming Pool] Edit Successfully', '2022-06-06 15:24:54', 1, 4, '103.41.174.122'),
(2670, 'Changes on Article \'About \' has been saved success', '2022-06-06 15:30:52', 1, 4, '103.41.174.122'),
(2671, 'Login: Radheshyam  maharjan logged in.', '2022-06-07 15:27:34', 1, 1, '122.254.86.149'),
(2672, 'Changes on Config \'Godavari Village Resort | Tradi', '2022-06-07 15:29:00', 1, 4, '122.254.86.149'),
(2673, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2022-06-07 17:07:28', 1, 4, '122.254.86.149'),
(2674, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-07 17:08:25', 1, 4, '122.254.86.149'),
(2675, 'Changes on Sub Package \'Vaijanta Hall(Garden Hall)', '2022-06-07 17:09:19', 1, 4, '122.254.86.149'),
(2676, 'Menu [Vai Janta Hall] Edit Successfully', '2022-06-07 17:09:56', 1, 4, '122.254.86.149'),
(2677, 'Menu [Vai Janta Hall] Edit Successfully', '2022-06-07 17:11:00', 1, 4, '122.254.86.149'),
(2678, 'Features [Accommodation]Data has added successfull', '2022-06-07 17:13:24', 1, 3, '122.254.86.149'),
(2679, 'Features  [Accommodation]Data has deleted successf', '2022-06-07 17:15:21', 1, 6, '122.254.86.149'),
(2680, 'Features [Accommodation]Data has added successfull', '2022-06-07 17:16:00', 1, 3, '122.254.86.149'),
(2681, 'Features [Laundry]Data has added successfully.', '2022-06-07 17:23:03', 1, 3, '122.254.86.149'),
(2682, 'Features [Kitchen]Data has added successfully.', '2022-06-07 17:24:25', 1, 3, '122.254.86.149'),
(2683, 'Features [Dining Hall]Data has added successfully.', '2022-06-07 17:25:20', 1, 3, '122.254.86.149'),
(2684, 'Features [Restaurant & Bar]Data has added successf', '2022-06-07 17:26:30', 1, 3, '122.254.86.149'),
(2685, 'Features [Conference Hall]Data has added successfu', '2022-06-07 17:27:34', 1, 3, '122.254.86.149'),
(2686, 'Features [Garden]Data has added successfully.', '2022-06-07 17:28:27', 1, 3, '122.254.86.149'),
(2687, 'Features [Swimming Pool]Data has added successfull', '2022-06-07 17:29:32', 1, 3, '122.254.86.149'),
(2688, 'Features [Wi-Fi]Data has added successfully.', '2022-06-07 17:30:34', 1, 3, '122.254.86.149'),
(2689, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 11:21:26', 1, 1, '122.254.86.149'),
(2690, 'Menu [Vai Janta Hall] Edit Successfully', '2022-06-08 11:25:34', 1, 4, '122.254.86.149'),
(2691, 'Changes on Sub Package \'Vaijanta Hall(Garden Hall)', '2022-06-08 11:28:43', 1, 4, '122.254.86.149'),
(2692, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2022-06-08 11:31:28', 1, 4, '122.254.86.149'),
(2693, 'Menu [Amarbati] Edit Successfully', '2022-06-08 11:31:43', 1, 4, '122.254.86.149'),
(2694, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 12:08:57', 1, 1, '122.254.86.149'),
(2695, 'Features [Laundry]Data has added successfully.', '2022-06-08 12:11:07', 1, 3, '122.254.86.149'),
(2696, 'Features [Laundry] Edit Successfully', '2022-06-08 12:11:27', 1, 4, '122.254.86.149'),
(2697, 'Changes on Sub Package \'Executive Double\' has been', '2022-06-08 12:12:13', 1, 4, '122.254.86.149'),
(2698, 'Changes on Sub Package \'Executive Room\' has been s', '2022-06-08 12:12:25', 1, 4, '122.254.86.149'),
(2699, 'Changes on Sub Package \'Deluxe Double\' has been sa', '2022-06-08 12:12:37', 1, 4, '122.254.86.149'),
(2700, 'Changes on Sub Package \'Deluxe Room\' has been save', '2022-06-08 12:12:49', 1, 4, '122.254.86.149'),
(2701, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 13:09:35', 1, 1, '122.254.86.149'),
(2702, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 14:41:05', 1, 1, '27.34.20.133'),
(2703, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 14:41:51', 1, 4, '27.34.20.133'),
(2704, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 14:42:25', 1, 4, '27.34.20.133'),
(2705, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 15:29:43', 1, 1, '27.34.22.126'),
(2706, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 15:30:36', 1, 4, '27.34.22.126'),
(2707, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 15:31:03', 1, 4, '27.34.22.126'),
(2708, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 15:32:05', 1, 4, '27.34.22.126'),
(2709, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 15:33:56', 1, 4, '27.34.22.126'),
(2710, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 17:08:08', 1, 1, '122.254.86.149'),
(2711, 'Login: Radheshyam  maharjan logged in.', '2022-06-08 17:10:08', 1, 1, '27.34.20.133'),
(2712, 'Slideshow [Swimming Pool] Edit Successfully', '2022-06-08 17:10:31', 1, 4, '27.34.20.133'),
(2713, 'Slideshow [Swimming Pool] Edit Successfully', '2022-06-08 17:11:07', 1, 4, '27.34.20.133'),
(2714, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 17:21:20', 1, 4, '122.254.86.149'),
(2715, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 17:22:22', 1, 4, '122.254.86.149'),
(2716, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 17:41:04', 1, 4, '122.254.86.149'),
(2717, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-08 17:41:58', 1, 4, '122.254.86.149'),
(2718, 'Login: Radheshyam  maharjan logged in.', '2022-06-09 11:18:31', 1, 1, '122.254.83.245'),
(2719, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-09 11:22:17', 1, 4, '122.254.83.245'),
(2720, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-09 11:23:33', 1, 4, '122.254.83.245'),
(2721, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-09 11:24:04', 1, 4, '122.254.83.245'),
(2722, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2022-06-09 12:35:04', 1, 4, '122.254.83.245'),
(2723, 'Changes on Sub Package \'Amarabati Hall\' has been s', '2022-06-09 12:35:33', 1, 4, '122.254.83.245'),
(2724, 'Changes on Sub Package \'Vaijanta Hall(Garden Hall)', '2022-06-09 12:36:15', 1, 4, '122.254.83.245'),
(2725, 'Changes on Sub Package \'Meeting Hall\' has been sav', '2022-06-09 12:36:47', 1, 4, '122.254.83.245'),
(2726, 'Login: Radheshyam  maharjan logged in.', '2022-06-16 11:39:38', 1, 1, '163.53.27.50'),
(2727, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 11:59:12', 1, 4, '163.53.27.50'),
(2728, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:03:12', 1, 4, '163.53.27.50'),
(2729, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:08:28', 1, 4, '163.53.27.50'),
(2730, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:09:17', 1, 4, '163.53.27.50'),
(2731, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:12:59', 1, 4, '163.53.27.50'),
(2732, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:15:54', 1, 4, '163.53.27.50'),
(2733, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:16:17', 1, 4, '163.53.27.50'),
(2734, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:16:34', 1, 4, '163.53.27.50'),
(2735, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:18:11', 1, 4, '163.53.27.50'),
(2736, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:19:46', 1, 4, '163.53.27.50'),
(2737, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:21:50', 1, 4, '163.53.27.50'),
(2738, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:22:48', 1, 4, '163.53.27.50'),
(2739, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:23:25', 1, 4, '163.53.27.50'),
(2740, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:25:14', 1, 4, '163.53.27.50'),
(2741, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:27:06', 1, 4, '163.53.27.50'),
(2742, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:28:11', 1, 4, '163.53.27.50'),
(2743, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:29:51', 1, 4, '163.53.27.50'),
(2744, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:31:43', 1, 4, '163.53.27.50'),
(2745, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:35:39', 1, 4, '163.53.27.50'),
(2746, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:36:41', 1, 4, '163.53.27.50'),
(2747, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:37:55', 1, 4, '163.53.27.50'),
(2748, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:45:32', 1, 4, '163.53.27.50'),
(2749, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:45:46', 1, 4, '163.53.27.50'),
(2750, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:45:55', 1, 4, '163.53.27.50'),
(2751, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:46:22', 1, 4, '163.53.27.50'),
(2752, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:46:50', 1, 4, '163.53.27.50'),
(2753, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 12:47:27', 1, 4, '163.53.27.50'),
(2754, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:03:46', 1, 4, '163.53.27.50'),
(2755, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:06:27', 1, 4, '163.53.27.50'),
(2756, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:07:27', 1, 4, '163.53.27.50'),
(2757, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:12:46', 1, 4, '163.53.27.50'),
(2758, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:14:22', 1, 4, '163.53.27.50'),
(2759, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:14:55', 1, 4, '163.53.27.50'),
(2760, 'Changes on Article \'About Us\' has been saved succe', '2022-06-16 13:18:42', 1, 4, '163.53.27.50'),
(2761, 'Login: Radheshyam  maharjan logged in.', '2022-06-20 11:40:30', 1, 1, '43.245.87.111'),
(2762, 'Login: Radheshyam  maharjan logged in.', '2022-06-30 15:57:05', 1, 1, '202.51.87.137'),
(2763, 'Login: Radheshyam  maharjan logged in.', '2022-07-01 13:13:29', 1, 1, '202.51.87.137'),
(2764, 'Login: Radheshyam  maharjan logged in.', '2022-07-05 11:41:13', 1, 1, '43.245.87.100'),
(2765, 'Login: Radheshyam  maharjan logged in.', '2022-07-05 14:05:33', 1, 1, '43.245.87.100'),
(2766, 'Login: Radheshyam  maharjan logged in.', '2022-07-05 15:11:54', 1, 1, '43.245.87.100'),
(2767, 'Login: Radheshyam  maharjan logged in.', '2022-07-05 17:23:02', 1, 1, '43.245.87.100'),
(2768, 'Login: Radheshyam  maharjan logged in.', '2022-07-06 13:57:02', 1, 1, '43.245.87.100'),
(2769, 'Login: Radheshyam  maharjan logged in.', '2022-07-07 16:07:15', 1, 1, '202.51.87.54'),
(2770, 'Login: Radheshyam  maharjan logged in.', '2022-07-12 16:40:58', 1, 1, '27.34.22.199'),
(2771, 'Menu [Gallery] Edit Successfully', '2022-07-12 16:41:47', 1, 4, '27.34.22.199'),
(2772, 'Menu [Banquet] Edit Successfully', '2022-07-12 16:41:53', 1, 4, '27.34.22.199'),
(2773, 'Menu [Contact us] Edit Successfully', '2022-07-12 16:41:59', 1, 4, '27.34.22.199'),
(2774, 'Login: Radheshyam  maharjan logged in.', '2022-07-12 16:51:45', 1, 1, '113.199.253.223'),
(2775, 'Menu [Facilities] Edit Successfully', '2022-07-12 16:52:14', 1, 4, '113.199.253.223'),
(2776, 'Login: Radheshyam  maharjan logged in.', '2022-07-13 10:17:20', 1, 1, '113.199.248.221'),
(2777, 'Login: Radheshyam  maharjan logged in.', '2022-07-18 10:34:21', 1, 1, '113.199.254.222'),
(2778, 'SocialNetworking [Facebook] Edit Successfully', '2022-07-18 10:35:02', 1, 4, '113.199.254.222'),
(2779, 'SocialNetworking [Youtube] Edit Successfully', '2022-07-18 10:35:52', 1, 4, '113.199.254.222'),
(2780, 'Login: Radheshyam  maharjan logged in.', '2022-08-22 11:26:21', 1, 1, '202.51.85.60'),
(2781, 'Login: Radheshyam  maharjan logged in.', '2022-08-25 09:48:36', 1, 1, '202.166.205.138'),
(2782, 'Login: Radheshyam  maharjan logged in.', '2022-08-26 15:24:37', 1, 1, '103.174.84.72'),
(2783, 'Login: Radheshyam  maharjan logged in.', '2023-07-18 16:52:36', 1, 1, '202.63.243.226'),
(2784, 'Login: Radheshyam  maharjan logged in.', '2023-07-18 17:13:39', 1, 1, '27.34.64.167'),
(2785, 'Login: Radheshyam  maharjan logged in.', '2023-07-18 17:22:55', 1, 1, '110.44.127.172'),
(2786, 'Login: Radheshyam  maharjan logged in.', '2023-07-18 18:33:23', 1, 1, '110.44.115.165'),
(2787, 'Login: Radheshyam  maharjan logged in.', '2023-07-30 20:30:59', 1, 1, '110.44.115.169'),
(2788, 'Login: Radheshyam  maharjan logged in.', '2023-07-31 17:58:23', 1, 1, '110.44.115.169'),
(2789, 'Login: Radheshyam  maharjan logged in.', '2023-08-01 12:36:49', 1, 1, '202.63.243.226'),
(2790, 'Login: Radheshyam  maharjan logged in.', '2023-08-03 16:07:14', 1, 1, '202.63.243.226'),
(2791, 'Login: Radheshyam  maharjan logged in.', '2023-09-11 14:26:41', 1, 1, '103.181.226.149'),
(2792, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:30:41', 1, 4, '103.181.226.149'),
(2793, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:37:42', 1, 4, '103.181.226.149'),
(2794, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:39:28', 1, 4, '103.181.226.149'),
(2795, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:40:45', 1, 4, '103.181.226.149'),
(2796, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:40:59', 1, 4, '103.181.226.149'),
(2797, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:41:12', 1, 4, '103.181.226.149'),
(2798, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:42:18', 1, 4, '103.181.226.149'),
(2799, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:44:02', 1, 4, '103.181.226.149'),
(2800, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-11 14:44:16', 1, 4, '103.181.226.149'),
(2801, 'Slideshow [Building] Edit Successfully', '2023-09-11 14:50:48', 1, 4, '103.181.226.149'),
(2802, 'Slideshow [Room] Edit Successfully', '2023-09-11 14:53:43', 1, 4, '103.181.226.149'),
(2803, 'Slideshow [Dining] Edit Successfully', '2023-09-11 14:54:39', 1, 4, '103.181.226.149'),
(2804, 'Slideshow [Dining hall] Edit Successfully', '2023-09-11 14:57:22', 1, 4, '103.181.226.149'),
(2805, 'Slideshow [Hall] Edit Successfully', '2023-09-11 14:57:53', 1, 4, '103.181.226.149'),
(2806, 'Login: Radheshyam  maharjan logged in.', '2023-09-11 16:01:37', 1, 1, '103.181.226.149'),
(2807, 'User [Teknath  Bashyal] Edit Successfully', '2023-09-11 16:02:13', 1, 4, '103.181.226.149'),
(2808, 'Login: Teknath  Bashyal logged in.', '2023-09-11 16:02:44', 1, 1, '103.181.226.149'),
(2809, 'Changes on Article \'About \' has been saved success', '2023-09-11 16:05:24', 1, 4, '103.181.226.149'),
(2810, 'Changes on Article \'About \' has been saved success', '2023-09-11 16:05:44', 1, 4, '103.181.226.149'),
(2811, 'Changes on Article \'About \' has been saved success', '2023-09-11 16:11:02', 1, 4, '103.181.226.149'),
(2812, 'Menu  [Standard Room]Data has deleted successfully', '2023-09-11 16:12:09', 1, 6, '103.181.226.149'),
(2813, 'Menu  [Suite Room]Data has deleted successfully.', '2023-09-11 16:12:14', 1, 6, '103.181.226.149'),
(2814, 'Menu  [Presidential Room]Data has deleted successf', '2023-09-11 16:12:17', 1, 6, '103.181.226.149'),
(2815, 'Menu  [Deluxe Room]Data has deleted successfully.', '2023-09-11 16:12:20', 1, 6, '103.181.226.149'),
(2816, 'Menu [Standard Room] Edit Successfully', '2023-09-11 16:12:36', 1, 4, '103.181.226.149'),
(2817, 'Menu [Deluxe Room] Edit Successfully', '2023-09-11 16:12:49', 1, 4, '103.181.226.149'),
(2818, 'Menu [Suite Room] Edit Successfully', '2023-09-11 16:13:21', 1, 4, '103.181.226.149'),
(2819, 'Menu [Presidential Suite] Edit Successfully', '2023-09-11 16:13:46', 1, 4, '103.181.226.149'),
(2820, 'Menu [Gallery] Edit Successfully', '2023-09-11 16:15:26', 1, 4, '103.181.226.149'),
(2821, 'Menu  [Video Gallery]Data has deleted successfully', '2023-09-11 16:16:02', 1, 6, '103.181.226.149'),
(2822, 'Menu  [Photo Gallery]Data has deleted successfully', '2023-09-11 16:16:11', 1, 6, '103.181.226.149'),
(2823, 'Sub Gallery Image  [HILLS International]Data has d', '2023-09-11 16:17:29', 1, 6, '103.181.226.149'),
(2824, 'Login: Teknath  Bashyal logged in.', '2023-09-11 18:20:01', 1, 1, '103.181.226.149'),
(2825, 'Login: Teknath  Bashyal logged in.', '2023-09-11 22:12:12', 1, 1, '103.181.226.149'),
(2826, 'Slideshow [Aerial View]Data has added successfully', '2023-09-11 22:12:32', 1, 3, '103.181.226.149'),
(2827, 'Slideshow [Hall] Edit Successfully', '2023-09-11 22:20:22', 1, 4, '103.181.226.149'),
(2828, 'Changes on Article \'About \' has been saved success', '2023-09-11 22:25:58', 1, 4, '103.181.226.149'),
(2829, 'Changes on Article \'About \' has been saved success', '2023-09-11 22:30:33', 1, 4, '103.181.226.149'),
(2830, 'Changes on Article \'About \' has been saved success', '2023-09-11 22:31:24', 1, 4, '103.181.226.149'),
(2831, 'Changes on Article \'About \' has been saved success', '2023-09-11 22:32:18', 1, 4, '103.181.226.149'),
(2832, 'Changes on Sub Package \'Resort View\' has been save', '2023-09-11 22:52:54', 1, 4, '103.181.226.149'),
(2833, 'Changes on Sub Package \'Resort View\' has been save', '2023-09-11 23:00:09', 1, 4, '103.181.226.149'),
(2834, 'Package Tours and Attraction Edit Successfully', '2023-09-11 23:00:59', 1, 4, '103.181.226.149'),
(2835, 'Changes on Sub Package \'Resort View\' has been save', '2023-09-11 23:02:07', 1, 4, '103.181.226.149'),
(2836, 'Changes on Sub Package \'Convenient Location\' has b', '2023-09-11 23:03:44', 1, 4, '103.181.226.149'),
(2837, 'Changes on Sub Package \'Convenient Location\' has b', '2023-09-11 23:04:15', 1, 4, '103.181.226.149'),
(2838, 'Changes on Sub Package \'Health Club\' has been save', '2023-09-11 23:05:58', 1, 4, '103.181.226.149'),
(2839, 'Changes on Sub Package \'Health Club\' has been save', '2023-09-11 23:16:07', 1, 4, '103.181.226.149'),
(2840, 'Changes on Sub Package \'Health Club\' has been save', '2023-09-11 23:16:37', 1, 4, '103.181.226.149'),
(2841, 'Changes on Sub Package \'The SR Hotel Banquet Halls', '2023-09-11 23:17:31', 1, 4, '103.181.226.149'),
(2842, 'Changes on Sub Package \'The SR Hotel Banquet Halls', '2023-09-11 23:19:37', 1, 4, '103.181.226.149'),
(2843, 'Login: Teknath  Bashyal logged in.', '2023-09-12 05:31:33', 1, 1, '163.53.27.42'),
(2844, 'Testimonial [Mr. Arjun S] Edit Successfully', '2023-09-12 05:34:31', 1, 4, '163.53.27.42'),
(2845, 'Testimonial [Manzug2021] Edit Successfully', '2023-09-12 05:36:01', 1, 4, '163.53.27.42'),
(2846, 'Testimonial [Mr. Arjun S] Edit Successfully', '2023-09-12 05:36:31', 1, 4, '163.53.27.42'),
(2847, 'Testimonial [Pashupati Pradhan] Edit Successfully', '2023-09-12 05:44:08', 1, 4, '163.53.27.42'),
(2848, 'Testimonial [Ganga Gautam] Edit Successfully', '2023-09-12 05:44:48', 1, 4, '163.53.27.42'),
(2849, 'Testimonial [Manzug2021] Edit Successfully', '2023-09-12 05:45:48', 1, 4, '163.53.27.42'),
(2850, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-12 05:49:38', 1, 4, '163.53.27.42'),
(2851, 'SocialNetworking [Instagram] Edit Successfully', '2023-09-12 05:50:24', 1, 4, '163.53.27.42'),
(2852, 'SocialNetworking [tiktok] Edit Successfully', '2023-09-12 05:51:56', 1, 4, '163.53.27.42'),
(2853, 'SocialNetworking [tiktok] Edit Successfully', '2023-09-12 05:52:21', 1, 4, '163.53.27.42'),
(2854, 'SocialNetworking [youtube] Edit Successfully', '2023-09-12 05:52:53', 1, 4, '163.53.27.42'),
(2855, 'SocialNetworking [youtube] Edit Successfully', '2023-09-12 05:53:49', 1, 4, '163.53.27.42'),
(2856, 'SocialNetworking [tripadvisor]Data has added succe', '2023-09-12 05:55:48', 1, 3, '163.53.27.42'),
(2857, 'Menu [Jalsa Hall] Edit Successfully', '2023-09-12 06:05:40', 1, 4, '163.53.27.42'),
(2858, 'Menu [Jamaica Hall] Edit Successfully', '2023-09-12 06:05:58', 1, 4, '163.53.27.42'),
(2859, 'Menu [Presidential Suite] Edit Successfully', '2023-09-12 06:06:36', 1, 4, '163.53.27.42'),
(2860, 'Menu [Buddhist Circuit] Edit Successfully', '2023-09-12 06:07:23', 1, 4, '163.53.27.42'),
(2861, 'Changes on Article \'About \' has been saved success', '2023-09-12 06:08:37', 1, 4, '163.53.27.42'),
(2862, 'Changes on Article \'About \' has been saved success', '2023-09-12 06:08:55', 1, 4, '163.53.27.42'),
(2863, 'Changes on Article \'About \' has been saved success', '2023-09-12 06:09:20', 1, 4, '163.53.27.42'),
(2864, 'Sub Package [Suite Room]Data has deleted successfu', '2023-09-12 06:13:35', 1, 6, '103.181.226.149'),
(2865, 'Changes on Sub Package \'Standard Room\' has been sa', '2023-09-12 06:17:53', 1, 4, '103.181.226.149'),
(2866, 'Changes on Sub Package \'Standard Room\' has been sa', '2023-09-12 06:22:48', 1, 4, '103.181.226.149'),
(2867, 'Changes on Sub Package \'Executive Room\' has been s', '2023-09-12 06:24:19', 1, 4, '103.181.226.149'),
(2868, 'Login: Teknath  Bashyal logged in.', '2023-09-12 08:05:02', 1, 1, '103.181.226.149'),
(2869, 'Gallery Image  [Rooms]Data has deleted successfull', '2023-09-12 08:05:08', 1, 6, '103.181.226.149'),
(2870, 'Gallery [Rooms]Data has added successfully.', '2023-09-12 08:05:28', 1, 3, '103.181.226.149'),
(2871, 'Sub Gallery Image [Suite]Data has added successful', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2872, 'Sub Gallery Image [Suite]Data has added successful', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2873, 'Sub Gallery Image [Standard Double Room]Data has a', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2874, 'Sub Gallery Image [Standard Twin Room]Data has add', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2875, 'Sub Gallery Image [Bathroom]Data has added success', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2876, 'Sub Gallery Image [Bathroom]Data has added success', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2877, 'Sub Gallery Image [Presidential Suite]Data has add', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2878, 'Sub Gallery Image [Presidential Suite]Data has add', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2879, 'Sub Gallery Image [Bathroom]Data has added success', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2880, 'Sub Gallery Image [Deluxe Room]Data has added succ', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2881, 'Sub Gallery Image [Bathroom]Data has added success', '2023-09-12 08:06:41', 1, 3, '103.181.226.149'),
(2882, 'Gallery Image  [Dine and Wine]Data has deleted suc', '2023-09-12 08:07:06', 1, 6, '103.181.226.149'),
(2883, 'Gallery [Dine & Wine]Data has added successfully.', '2023-09-12 08:09:24', 1, 3, '103.181.226.149'),
(2884, 'Sub Gallery Image [Bar]Data has added successfully', '2023-09-12 08:10:01', 1, 3, '103.181.226.149'),
(2885, 'Sub Gallery Image [Bar]Data has added successfully', '2023-09-12 08:10:01', 1, 3, '103.181.226.149'),
(2886, 'Sub Gallery Image [Bar and Coffee]Data has added s', '2023-09-12 08:10:01', 1, 3, '103.181.226.149'),
(2887, 'Sub Gallery Image [Jambalaya Restaurant]Data has a', '2023-09-12 08:10:01', 1, 3, '103.181.226.149'),
(2888, 'Sub Gallery Image [Jambalaya Restaurant]Data has a', '2023-09-12 08:10:01', 1, 3, '103.181.226.149'),
(2889, 'Gallery Image  [Interior | Exteriour]Data has dele', '2023-09-12 08:10:17', 1, 6, '103.181.226.149'),
(2890, 'Gallery Image  []Data has deleted successfully.', '2023-09-12 08:10:21', 1, 6, '103.181.226.149'),
(2891, 'Gallery Image  [Events]Data has deleted successful', '2023-09-12 08:10:21', 1, 6, '103.181.226.149'),
(2892, 'Gallery Image  []Data has deleted successfully.', '2023-09-12 08:10:28', 1, 6, '103.181.226.149'),
(2893, 'Gallery Image  []Data has deleted successfully.', '2023-09-12 08:10:28', 1, 6, '103.181.226.149'),
(2894, 'Gallery Image  [Banquet Hall]Data has deleted succ', '2023-09-12 08:10:28', 1, 6, '103.181.226.149'),
(2895, 'Gallery [Events]Data has added successfully.', '2023-09-12 08:17:15', 1, 3, '103.181.226.149'),
(2896, 'Gallery Image [Events & Banquets] Edit Successfull', '2023-09-12 08:17:28', 1, 4, '103.181.226.149'),
(2897, 'Gallery Image [Halls & Banquets] Edit Successfully', '2023-09-12 08:17:39', 1, 4, '103.181.226.149'),
(2898, 'Sub Gallery Image [rooftop hall]Data has added suc', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2899, 'Sub Gallery Image [rooftop hall]Data has added suc', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2900, 'Sub Gallery Image [Jalsa Hall]Data has added succe', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2901, 'Sub Gallery Image [Jalsa Hall]Data has added succe', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2902, 'Sub Gallery Image [Jamaica Hall]Data has added suc', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2903, 'Sub Gallery Image [Jamaica Hall]Data has added suc', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2904, 'Sub Gallery Image [way to jamaica from jalsa]Data ', '2023-09-12 08:18:40', 1, 3, '103.181.226.149'),
(2905, 'Gallery [Interior & Exterior]Data has added succes', '2023-09-12 08:19:02', 1, 3, '103.181.226.149'),
(2906, 'Sub Gallery Image [Aerial View]Data has added succ', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2907, 'Sub Gallery Image [Aerial View]Data has added succ', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2908, 'Sub Gallery Image [Aerial View]Data has added succ', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2909, 'Sub Gallery Image [Aerial View]Data has added succ', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2910, 'Sub Gallery Image [Exterior]Data has added success', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2911, 'Sub Gallery Image [Entrance]Data has added success', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2912, 'Sub Gallery Image [Lobby]Data has added successful', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2913, 'Sub Gallery Image [Lobby]Data has added successful', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2914, 'Sub Gallery Image [just by the highway]Data has ad', '2023-09-12 08:20:08', 1, 3, '103.181.226.149'),
(2915, 'Sub Gallery Image [Rooftop banquet]Data has added ', '2023-09-12 08:21:49', 1, 3, '103.181.226.149'),
(2916, 'Package Dining Edit Successfully', '2023-09-12 08:24:37', 1, 4, '103.181.226.149'),
(2917, 'Package Banquet Edit Successfully', '2023-09-12 08:26:28', 1, 4, '103.181.226.149'),
(2918, 'Changes on Sub Package \'Jalsa Hall\' has been saved', '2023-09-12 08:27:55', 1, 4, '103.181.226.149'),
(2919, 'Changes on Sub Package \'Jamaica Hall\' has been sav', '2023-09-12 08:29:06', 1, 4, '103.181.226.149'),
(2920, 'Changes on Sub Package \'Rooftop Hall\' has been sav', '2023-09-12 08:30:11', 1, 4, '103.181.226.149'),
(2921, 'Sub Package \'Rooftop Banquet\' has added successful', '2023-09-12 08:31:19', 1, 3, '103.181.226.149'),
(2922, 'Menu [Jalsa Hall] Edit Successfully', '2023-09-12 08:31:41', 1, 4, '103.181.226.149'),
(2923, 'Menu [Jamaica Hall] Edit Successfully', '2023-09-12 08:32:04', 1, 4, '103.181.226.149'),
(2924, 'Menu [Rooftop Hall] Edit Successfully', '2023-09-12 08:32:22', 1, 4, '103.181.226.149'),
(2925, 'Menu [Rooftop Banquet] CreatedData has added succe', '2023-09-12 08:34:05', 1, 3, '103.181.226.149'),
(2926, 'Menu [Rooftop Banquet] Edit Successfully', '2023-09-12 08:35:10', 1, 4, '103.181.226.149'),
(2927, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-12 08:38:02', 1, 4, '103.181.226.149'),
(2928, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-09-12 08:39:38', 1, 4, '103.181.226.149'),
(2929, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-12 08:40:37', 1, 4, '103.181.226.149'),
(2930, 'Menu [Standard Room] Edit Successfully', '2023-09-12 08:41:23', 1, 4, '103.181.226.149'),
(2931, 'Menu [Deluxe Room] Edit Successfully', '2023-09-12 08:41:36', 1, 4, '103.181.226.149'),
(2932, 'Menu [Suite Room] Edit Successfully', '2023-09-12 08:41:54', 1, 4, '103.181.226.149'),
(2933, 'Menu [Presidential Suite] Edit Successfully', '2023-09-12 08:43:09', 1, 4, '103.181.226.149'),
(2934, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-12 08:43:46', 1, 4, '103.181.226.149'),
(2935, 'Menu [Presidential Suite] Edit Successfully', '2023-09-12 08:44:00', 1, 4, '103.181.226.149'),
(2936, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-12 08:48:15', 1, 4, '103.181.226.149'),
(2937, 'Features [Convenient Location] Edit Successfully', '2023-09-12 08:50:26', 1, 4, '103.181.226.149'),
(2938, 'Features [Convenient Location] Edit Successfully', '2023-09-12 08:50:40', 1, 4, '103.181.226.149'),
(2939, 'Features [Hotel Facilities] Edit Successfully', '2023-09-12 08:52:02', 1, 4, '103.181.226.149'),
(2940, 'Menu  [Deluxe Room]Data has deleted successfully.', '2023-09-12 08:54:53', 1, 6, '103.181.226.149'),
(2941, 'Menu [Jamaica Hall] Edit Successfully', '2023-09-12 08:55:08', 1, 4, '103.181.226.149'),
(2942, 'Menu [Jalsa Hall] Edit Successfully', '2023-09-12 08:55:22', 1, 4, '103.181.226.149'),
(2943, 'Menu [Presidential Suite] Edit Successfully', '2023-09-12 08:55:34', 1, 4, '103.181.226.149'),
(2944, 'Login: Teknath  Bashyal logged in.', '2023-09-12 12:47:24', 1, 1, '103.10.29.120'),
(2945, 'Login: Teknath  Bashyal logged in.', '2023-09-12 13:19:51', 1, 1, '110.44.124.178'),
(2946, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-12 13:20:01', 1, 4, '110.44.124.178'),
(2947, 'Login: Teknath  Bashyal logged in.', '2023-09-12 13:39:10', 1, 1, '110.44.124.178'),
(2948, 'Login: Teknath  Bashyal logged in.', '2023-09-12 13:58:25', 1, 1, '110.44.124.178'),
(2949, 'Login: Teknath  Bashyal logged in.', '2023-09-12 15:09:17', 1, 1, '110.44.124.178'),
(2950, 'Changes on Article \'About Us\' has been saved succe', '2023-09-12 15:09:46', 1, 4, '110.44.124.178'),
(2951, 'Login: Teknath  Bashyal logged in.', '2023-09-13 10:21:54', 1, 1, '103.123.60.28'),
(2952, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 10:25:19', 1, 4, '103.123.60.28'),
(2953, 'Changes on Sub Package \'Mountain View\' has been sa', '2023-09-13 10:56:19', 1, 4, '103.123.60.28'),
(2954, 'Login: Teknath  Bashyal logged in.', '2023-09-13 11:43:32', 1, 1, '110.44.124.178'),
(2955, 'Login: Teknath  Bashyal logged in.', '2023-09-13 11:51:00', 1, 1, '110.44.124.178'),
(2956, 'Login: Teknath  Bashyal logged in.', '2023-09-13 12:45:05', 1, 1, '110.44.124.178'),
(2957, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 12:46:48', 1, 4, '110.44.124.178'),
(2958, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 12:47:01', 1, 4, '110.44.124.178'),
(2959, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 12:47:07', 1, 4, '110.44.124.178'),
(2960, 'Login: Teknath  Bashyal logged in.', '2023-09-13 14:13:02', 1, 1, '103.181.226.149'),
(2961, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 14:13:19', 1, 4, '103.181.226.149'),
(2962, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 14:22:51', 1, 4, '103.181.226.149'),
(2963, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-13 14:30:01', 1, 4, '103.181.226.149'),
(2964, 'Changes on Sub Package \'Deluxe Room\' has been save', '2023-09-13 14:32:49', 1, 4, '103.181.226.149'),
(2965, 'Changes on Sub Package \'Rooftop Banquet\' has been ', '2023-09-13 14:36:14', 1, 4, '103.181.226.149'),
(2966, 'Changes on Sub Package \'Rooftop Hall\' has been sav', '2023-09-13 14:36:39', 1, 4, '103.181.226.149'),
(2967, 'Changes on Sub Package \'Jamaica Hall\' has been sav', '2023-09-13 14:38:27', 1, 4, '103.181.226.149'),
(2968, 'Changes on Sub Package \'Jalsa Hall\' has been saved', '2023-09-13 14:38:53', 1, 4, '103.181.226.149'),
(2969, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 14:42:48', 1, 4, '103.181.226.149'),
(2970, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-13 14:46:32', 1, 4, '103.181.226.149'),
(2971, 'Login: Teknath  Bashyal logged in.', '2023-09-15 13:27:21', 1, 1, '103.10.29.84'),
(2972, 'Login: Teknath  Bashyal logged in.', '2023-09-15 15:01:09', 1, 1, '103.10.29.84'),
(2973, 'Article \'test\' has added successfully.', '2023-09-15 15:01:22', 1, 3, '103.10.29.84'),
(2974, 'Slideshow [asd]Data has added successfully.', '2023-09-15 15:02:11', 1, 3, '103.10.29.84'),
(2975, 'Slideshow  [asd]Data has deleted successfully.', '2023-09-15 15:02:17', 1, 6, '103.10.29.84'),
(2976, 'Gallery [test]Data has added successfully.', '2023-09-15 15:02:27', 1, 3, '103.10.29.84'),
(2977, 'Features [test]Data has added successfully.', '2023-09-15 15:06:43', 1, 3, '103.10.29.84'),
(2978, 'Package [tsetds]Data has added successfully.', '2023-09-15 15:07:00', 1, 3, '103.10.29.84'),
(2979, 'Sub Package \'sdfsdf\' has added successfully.', '2023-09-15 15:07:13', 1, 3, '103.10.29.84'),
(2980, 'Testimonial [tsedefs]Data has added successfully.', '2023-09-15 15:07:42', 1, 3, '103.10.29.84'),
(2981, 'Testimonial  []Data has deleted successfully.', '2023-09-15 15:07:48', 1, 6, '103.10.29.84');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(2982, 'News [esdf]Data has added successfully.', '2023-09-15 15:08:04', 1, 3, '103.10.29.84'),
(2983, 'News  [esdf]Data has deleted successfully.', '2023-09-15 15:08:12', 1, 6, '103.10.29.84'),
(2984, 'Login: Teknath  Bashyal logged in.', '2023-09-18 18:03:57', 1, 1, '122.254.81.201'),
(2985, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-18 18:18:41', 1, 4, '122.254.81.201'),
(2986, 'SocialNetworking [tiktok]Data has added successful', '2023-09-18 18:42:36', 1, 3, '122.254.81.201'),
(2987, 'SocialNetworking [Facebook] Edit Successfully', '2023-09-18 18:48:15', 1, 4, '122.254.81.201'),
(2988, 'SocialNetworking [Instagram] Edit Successfully', '2023-09-18 18:48:47', 1, 4, '122.254.81.201'),
(2989, 'Login: Teknath  Bashyal logged in.', '2023-09-21 11:10:47', 1, 1, '163.53.26.80'),
(2990, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-21 11:43:53', 1, 4, '163.53.26.80'),
(2991, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-21 11:47:18', 1, 4, '163.53.26.80'),
(2992, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-21 11:49:20', 1, 4, '163.53.26.80'),
(2993, 'Changes on Sub Package \'Suite Room\' has been saved', '2023-09-21 11:59:54', 1, 4, '163.53.26.80'),
(2994, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-21 12:00:11', 1, 4, '163.53.26.80'),
(2995, 'Changes on Sub Package \'Jalsa Hall\' has been saved', '2023-09-21 12:26:20', 1, 4, '163.53.26.80'),
(2996, 'Changes on Sub Package \'Jamaica Hall\' has been sav', '2023-09-21 12:28:53', 1, 4, '163.53.26.80'),
(2997, 'Sub Package \'Deluxe Room(Double)\' has added succes', '2023-09-21 12:46:44', 1, 3, '163.53.26.80'),
(2998, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 12:48:51', 1, 4, '163.53.26.80'),
(2999, 'Menu [Room] Edit Successfully', '2023-09-21 12:49:18', 1, 4, '163.53.26.80'),
(3000, 'Menu [Room] Edit Successfully', '2023-09-21 12:52:23', 1, 4, '163.53.26.80'),
(3001, 'Menu [Deluxe Room(Double)] CreatedData has added s', '2023-09-21 12:57:50', 1, 3, '163.53.26.80'),
(3002, 'Menu [Deluxe Room(Double)] CreatedData has added s', '2023-09-21 12:58:36', 1, 3, '163.53.26.80'),
(3003, 'Menu  [Deluxe Room(Double)]Data has deleted succes', '2023-09-21 12:59:13', 1, 6, '163.53.26.80'),
(3004, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 13:06:47', 1, 4, '163.53.26.80'),
(3005, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 13:09:19', 1, 4, '163.53.26.80'),
(3006, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 13:12:21', 1, 4, '163.53.26.80'),
(3007, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 13:16:37', 1, 4, '163.53.26.80'),
(3008, 'Sub Package \'Deluxe Room(Twin)\' has added successf', '2023-09-21 13:31:28', 1, 3, '163.53.26.80'),
(3009, 'Menu [Deluxe Room(Twin)] CreatedData has added suc', '2023-09-21 13:32:00', 1, 3, '163.53.26.80'),
(3010, 'Login: Teknath  Bashyal logged in.', '2023-09-21 13:46:58', 1, 1, '113.199.226.65'),
(3011, 'Menu [Junior Suite] Edit Successfully', '2023-09-21 13:53:37', 1, 4, '163.53.26.80'),
(3012, 'Changes on Sub Package \'Junior Suite\' has been sav', '2023-09-21 14:00:21', 1, 4, '163.53.26.80'),
(3013, 'Menu [Junior Suite] Edit Successfully', '2023-09-21 14:00:55', 1, 4, '163.53.26.80'),
(3014, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 14:23:02', 1, 4, '163.53.26.80'),
(3015, 'Sub Package \'Deluxe Room(Family)\' has added succes', '2023-09-21 14:27:10', 1, 3, '163.53.26.80'),
(3016, 'Menu [Deluxe Room(Family)] CreatedData has added s', '2023-09-21 14:27:51', 1, 3, '163.53.26.80'),
(3017, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-21 14:29:27', 1, 4, '163.53.26.80'),
(3018, 'Sub Package \'Super Deluxe\' has added successfully.', '2023-09-21 15:17:46', 1, 3, '163.53.26.80'),
(3019, 'Menu [Super Deluxe] CreatedData has added successf', '2023-09-21 15:18:05', 1, 3, '163.53.26.80'),
(3020, 'Changes on Sub Package \'Super Deluxe\' has been sav', '2023-09-21 15:23:27', 1, 4, '163.53.26.80'),
(3021, 'Login: Teknath  Bashyal logged in.', '2023-09-21 16:36:42', 1, 1, '163.53.26.80'),
(3022, 'Changes on Sub Package \'Conference Hall\' has been ', '2023-09-21 16:52:05', 1, 4, '163.53.26.80'),
(3023, 'Menu [Rooftop Banquet] Edit Successfully', '2023-09-21 16:52:55', 1, 4, '163.53.26.80'),
(3024, 'Menu [Conference Hall] Edit Successfully', '2023-09-21 16:53:20', 1, 4, '163.53.26.80'),
(3025, 'Changes on Sub Package \'Jaffa Hall\' has been saved', '2023-09-21 16:56:10', 1, 4, '163.53.26.80'),
(3026, 'Menu [Jaffa Hall] Edit Successfully', '2023-09-21 16:56:27', 1, 4, '163.53.26.80'),
(3027, 'Changes on Sub Package \'Jamaica Hall\' has been sav', '2023-09-21 17:00:37', 1, 4, '163.53.26.80'),
(3028, 'Changes on Sub Package \'Jalsa Hall\' has been saved', '2023-09-21 17:03:14', 1, 4, '163.53.26.80'),
(3029, 'Changes on Sub Package \'Conference Hall\' has been ', '2023-09-21 17:03:45', 1, 4, '163.53.26.80'),
(3030, 'Changes on Sub Package \'Jamaica Hall\' has been sav', '2023-09-21 17:04:26', 1, 4, '163.53.26.80'),
(3031, 'Changes on Sub Package \'Jaffa Hall\' has been saved', '2023-09-21 17:04:48', 1, 4, '163.53.26.80'),
(3032, 'Login: Teknath  Bashyal logged in.', '2023-09-22 11:48:01', 1, 1, '122.254.82.217'),
(3033, 'Login: Teknath  Bashyal logged in.', '2023-09-22 14:57:11', 1, 1, '122.254.82.217'),
(3034, 'User [Teknath  Bashyal] Edit Successfully', '2023-09-22 15:01:07', 1, 4, '122.254.82.217'),
(3035, 'Login: Teknath  Bashyal logged in.', '2023-09-22 15:01:16', 1, 1, '122.254.82.217'),
(3036, 'Login: Teknath  Bashyal logged in.', '2023-09-22 16:19:45', 1, 1, '122.254.82.217'),
(3037, 'User [Teknath  Bashyal] Edit Successfully', '2023-09-22 16:20:51', 1, 4, '122.254.82.217'),
(3038, 'Login: Teknath  Bashyal logged in.', '2023-09-22 16:21:04', 1, 1, '122.254.82.217'),
(3039, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-09-22 16:22:51', 1, 4, '122.254.82.217'),
(3040, 'Changes on Sub Package \'Deluxe Room(Twin)\' has bee', '2023-09-22 16:41:55', 1, 4, '122.254.82.217'),
(3041, 'Changes on Sub Package \'Deluxe Room(Twin)\' has bee', '2023-09-22 16:42:40', 1, 4, '122.254.82.217'),
(3042, 'Changes on Sub Package \'Deluxe Room(Twin)\' has bee', '2023-09-22 16:46:48', 1, 4, '122.254.82.217'),
(3043, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2023-09-22 17:00:23', 1, 4, '122.254.82.217'),
(3044, 'Changes on Sub Package \'Super Deluxe\' has been sav', '2023-09-22 17:08:09', 1, 4, '122.254.82.217'),
(3045, 'Changes on Sub Package \'Presidential Suite\' has be', '2023-09-22 17:15:49', 1, 4, '122.254.82.217'),
(3046, 'Login: Teknath  Bashyal logged in.', '2023-10-20 14:11:03', 1, 1, '110.44.121.11'),
(3047, 'Login: Teknath  Bashyal logged in.', '2023-10-20 16:09:42', 1, 1, '110.44.121.11'),
(3048, 'Login: Teknath  Bashyal logged in.', '2023-10-20 16:41:25', 1, 1, '163.53.26.99'),
(3049, 'Login: Teknath  Bashyal logged in.', '2023-12-11 10:58:20', 1, 1, '122.254.88.201'),
(3050, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-12-11 10:59:59', 1, 4, '122.254.88.201'),
(3051, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-12-11 11:54:29', 1, 4, '122.254.88.201'),
(3052, 'Login: Teknath  Bashyal logged in.', '2023-12-11 11:54:54', 1, 1, '122.254.88.201'),
(3053, 'Changes on Config \'The SR Hotel where Luxury Meets', '2023-12-11 11:57:10', 1, 4, '122.254.88.201'),
(3054, 'Login: Teknath  Bashyal logged in.', '2024-02-02 17:22:46', 1, 1, '122.254.81.78'),
(3055, 'Login: Teknath  Bashyal logged in.', '2024-03-06 11:56:06', 1, 1, '27.34.64.32'),
(3056, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-03-06 11:57:12', 1, 4, '27.34.64.32'),
(3057, 'Menu [Brochure] Edit Successfully', '2024-03-06 12:14:30', 1, 4, '27.34.64.32'),
(3058, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-03-06 12:16:31', 1, 4, '27.34.64.32'),
(3059, 'Login: Teknath  Bashyal logged in.', '2024-03-06 15:19:19', 1, 1, '27.34.64.32'),
(3060, 'Login: Teknath  Bashyal logged in.', '2024-03-06 15:55:53', 1, 1, '103.123.60.71'),
(3061, 'User [Teknath  Bashyal] Edit Successfully', '2024-03-06 16:07:58', 1, 4, '103.123.60.71'),
(3062, 'Login: Teknath  Bashyal logged in.', '2024-03-06 16:17:34', 1, 1, '103.123.60.71'),
(3063, 'User [Teknath  Bashyal] Edit Successfully', '2024-03-06 16:20:26', 1, 4, '103.123.60.71'),
(3064, 'Login: Teknath  Bashyal logged in.', '2024-03-06 16:20:48', 1, 1, '27.34.64.32'),
(3065, 'Login: Teknath  Bashyal logged in.', '2024-03-06 16:22:38', 1, 1, '103.123.60.71'),
(3066, 'User [Teknath  Bashyal] Edit Successfully', '2024-03-06 16:22:40', 1, 4, '27.34.64.32'),
(3067, 'Login: Teknath  Bashyal logged in.', '2024-03-06 16:23:01', 1, 1, '103.123.60.71'),
(3068, 'Login: Teknath  Bashyal logged in.', '2024-03-06 17:38:55', 1, 1, '103.123.60.71'),
(3069, 'User [Teknath  Bashyal] Edit Successfully', '2024-03-06 17:39:06', 1, 4, '103.123.60.71'),
(3070, 'Login: Teknath  Bashyal logged in.', '2024-03-06 17:41:15', 1, 1, '103.123.60.71'),
(3071, 'User [Teknath  Bashyal] Edit Successfully', '2024-03-06 17:41:39', 1, 4, '103.123.60.71'),
(3072, 'Login: Teknath  Bashyal logged in.', '2024-03-06 18:08:04', 1, 1, '27.34.64.32'),
(3073, 'Login: Teknath  Bashyal logged in.', '2024-03-06 18:14:46', 1, 1, '27.34.64.32'),
(3074, 'Login: Teknath  Bashyal logged in.', '2024-03-06 18:19:12', 1, 1, '103.86.57.27'),
(3075, 'Login: Teknath  Bashyal logged in.', '2024-03-07 15:27:11', 1, 1, '27.34.1.57'),
(3076, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-03-07 15:28:45', 1, 4, '27.34.1.57'),
(3077, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-03-07 15:45:23', 1, 4, '27.34.1.57'),
(3078, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-03-07 15:48:57', 1, 4, '27.34.1.57'),
(3079, 'Login: Teknath  Bashyal logged in.', '2024-03-07 15:57:07', 1, 1, '27.34.64.32'),
(3080, 'Login: Teknath  Bashyal logged in.', '2024-03-28 16:12:34', 1, 1, '103.181.227.97'),
(3081, 'Login: Super admin   logged in.', '2024-04-04 02:19:26', 1, 1, '27.34.65.30'),
(3082, 'Popup \'sdsadasd\' has added successfully.', '2024-04-04 02:23:41', 1, 3, '27.34.65.30'),
(3083, 'Changes on Popup \'sdsadasd\' has been saved success', '2024-04-04 02:28:11', 1, 4, '27.34.65.30'),
(3084, 'Popup  [sdsadasd]Data has deleted successfully.', '2024-04-04 02:28:23', 1, 6, '27.34.65.30'),
(3085, 'Login: Super admin   logged in.', '2024-04-04 17:50:49', 1, 1, '103.10.29.78'),
(3086, 'Popup \'asdasdasdasd\' has added successfully.', '2024-04-04 17:51:15', 1, 3, '103.10.29.78'),
(3087, 'Changes on Popup \'asdasdasdasd\' has been saved suc', '2024-04-04 17:51:45', 1, 4, '103.10.29.78'),
(3088, 'Popup  [asdasdasdasd]Data has deleted successfully', '2024-04-04 17:56:42', 1, 6, '103.10.29.78'),
(3089, 'Login: Super admin   logged in.', '2024-04-09 12:16:05', 1, 1, '103.10.28.199'),
(3090, 'Popup \'New Year Offer\' has added successfully.', '2024-04-09 12:22:39', 1, 3, '103.10.28.199'),
(3091, 'Login: Super admin   logged in.', '2024-04-09 12:23:02', 1, 1, '103.10.28.199'),
(3092, 'Login: Super admin   logged in.', '2024-04-09 13:04:07', 1, 1, '103.10.28.199'),
(3093, 'Popup \'New Year Offer 1\' has added successfully.', '2024-04-09 13:08:27', 1, 3, '103.10.28.199'),
(3094, 'Login: Super admin   logged in.', '2024-05-02 15:58:04', 1, 1, '103.10.29.75'),
(3095, 'Popup \'asdasd\' has added successfully.', '2024-05-02 15:58:41', 1, 3, '103.10.29.75'),
(3096, 'Popup  [asdasd]Data has deleted successfully.', '2024-05-02 15:59:30', 1, 6, '103.10.29.75'),
(3097, 'Login: Teknath  Bashyal logged in.', '2024-05-29 17:07:41', 1, 1, '103.10.28.222'),
(3098, 'Login: Super admin   logged in.', '2024-06-06 15:09:05', 1, 1, '27.34.66.61'),
(3099, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-06-06 15:15:02', 1, 4, '27.34.66.61'),
(3100, 'Login: Teknath  Bashyal logged in.', '2024-06-12 13:37:11', 1, 1, '103.232.230.90'),
(3101, 'Login: Teknath  Bashyal logged in.', '2024-08-27 14:47:52', 1, 1, '::1'),
(3102, 'Changes on Config \'The SR Hotel where Luxury Meets', '2024-08-27 14:48:13', 1, 4, '::1'),
(3103, 'Changes on Sub Package \'Deluxe Room(Double)\' has b', '2024-08-27 15:35:48', 1, 4, '::1'),
(3104, 'Changes on Sub Package \'Deluxe Room(Twin)\' has bee', '2024-08-27 15:36:38', 1, 4, '::1'),
(3105, 'Changes on Sub Package \'Junior Suite\' has been sav', '2024-08-27 15:37:18', 1, 4, '::1'),
(3106, 'Changes on Sub Package \'Presidential Suite\' has be', '2024-08-27 15:38:41', 1, 4, '::1'),
(3107, 'Changes on Sub Package \'Super Deluxe\' has been sav', '2024-08-27 15:39:21', 1, 4, '::1'),
(3108, 'Features [Wi-Fi] Edit Successfully', '2024-08-27 15:44:02', 1, 4, '::1'),
(3109, 'Features [Wi-Fi] Edit Successfully', '2024-08-27 15:44:30', 1, 4, '::1'),
(3110, 'Features [Laundry] Edit Successfully', '2024-08-27 15:45:31', 1, 4, '::1'),
(3111, 'Features [Laundry] Edit Successfully', '2024-08-27 15:46:41', 1, 4, '::1'),
(3112, 'Features [Laundry] Edit Successfully', '2024-08-27 15:46:54', 1, 4, '::1'),
(3113, 'Features [Laundry] Edit Successfully', '2024-08-27 15:47:08', 1, 4, '::1'),
(3114, 'Features [Laundry] Edit Successfully', '2024-08-27 15:47:57', 1, 4, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `bgcolor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `linksrc` varchar(150) NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(1, 'Home', '#', 0, '0', 1, 1, '2016-12-08 11:12:09', 1, ''),
(2, 'Jalsa Hall', 'subpackage/jalsa-hall', 0, '0', 1, 16, '2016-12-08 11:12:26', 3, ''),
(4, 'Gallery', 'gallery', 0, '0', 1, 7, '2016-12-08 11:12:53', 4, ''),
(6, 'Contact us', 'contact-us', 0, '0', 1, 9, '2016-12-08 11:13:47', 4, ''),
(22, 'About Us', 'page/about', 0, '0', 1, 2, '2018-04-04 11:52:36', 1, ''),
(23, 'Facilities', 'facility-list', 0, '0', 1, 6, '2018-04-04 12:12:02', 4, ''),
(24, 'Banquet', '#', 0, '0', 1, 8, '2018-04-04 12:12:40', 4, ''),
(25, 'Dining', 'package/dining', 0, '0', 1, 5, '2018-04-04 12:13:11', 1, ''),
(26, 'Jalsa Hall', 'subpackage/jalsa-hall', 24, '0', 1, 1, '2018-04-04 18:01:41', 1, ''),
(27, 'Jamaica Hall', 'subpackage/jamaica-hall', 24, '0', 1, 2, '2018-04-04 18:02:06', 1, ''),
(28, 'Jaffa Hall', 'subpackage/jaffa-hall', 24, '0', 1, 3, '2018-04-04 18:02:46', 1, ''),
(29, 'Room', '#', 0, '0', 1, 4, '2018-04-04 18:03:44', 1, ''),
(30, 'Standard Room', 'subpackage/standard-room', 29, '0', 0, 18, '2018-04-04 18:04:35', 1, ''),
(35, 'Deluxe Room', 'subpackage/deluxe-room', 29, '0', 0, 17, '2018-04-23 16:23:43', 1, ''),
(36, 'Junior Suite', 'subpackage/junior-suite', 29, '0', 1, 15, '2018-04-23 18:12:06', 1, ''),
(37, 'Presidential Suite', 'subpackage/presidential-suite', 29, '0', 1, 16, '2018-04-23 18:13:34', 1, ''),
(42, 'About Us', 'page/about', 0, '0', 1, 10, '2018-04-24 15:07:25', 2, ''),
(43, 'Facilities', 'facility-list', 0, '0', 1, 11, '2018-04-24 15:08:10', 2, ''),
(44, 'Gallery', 'gallery', 0, '0', 1, 12, '2018-04-24 15:09:45', 2, ''),
(45, 'Contact Us', 'contact-us', 0, '0', 1, 13, '2018-04-24 15:10:35', 2, ''),
(47, 'Presidential Suite', 'subpackage/presidential-suite', 0, '0', 1, 15, '2018-05-25 12:06:54', 3, ''),
(50, 'Jamaica Hall', 'subpackage/jamaica-hall', 0, '0', 1, 17, '2018-05-30 12:58:28', 3, ''),
(51, 'Brochure', 'page/about', 0, '0', 0, 18, '2018-08-24 13:01:39', 1, ''),
(54, 'Buddhist Circuit', 'page/holistic-health-tourism', 0, '0', 0, 3, '2019-04-30 17:02:55', 3, ''),
(55, 'Conference Hall', 'subpackage/conference-hall', 24, '0', 1, 4, '2023-09-12 08:34:05', 1, ''),
(57, 'Deluxe Room(Double)', 'subpackage/deluxe-room-double', 29, '0', 1, 11, '2023-09-21 12:58:36', 1, ''),
(58, 'Deluxe Room(Twin)', 'subpackage/deluxe-room-twin', 29, '0', 1, 12, '2023-09-21 13:32:00', 1, ''),
(59, 'Deluxe Room(Family)', 'subpackage/deluxe-room-family', 29, '0', 0, 13, '2023-09-21 14:27:51', 1, ''),
(60, 'Super Deluxe', 'subpackage/super-deluxe', 29, '0', 1, 14, '2023-09-21 15:18:05', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) NOT NULL,
  `icon_link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 0, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 3, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 5, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:3:\"600\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:4:\"1400\";s:9:\"imgheight\";s:3:\"500\";s:9:\"simgwidth\";s:3:\"800\";s:10:\"simgheight\";s:3:\"600\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 1, 17, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 8, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 11, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 19, '0000-00-00', ''),
(11, 0, 'Social Link Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 9, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 18, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:3:\"125\";s:10:\"simgheight\";s:2:\"80\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 0, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 10, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 12, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 0, 16, '2015-05-20', 'a:2:{s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 0, 14, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 13, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 15, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 2, '2016-06-17', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', '', '', 'icon-bullhorn', 1, 7, '2016-11-16', ''),
(26, 0, 'Booking Info', 'bookinginfo/list', 'bookinginfo', 'icon-indent', 1, 10, '2017-03-29', ''),
(27, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 15, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `id` int(11) NOT NULL,
  `slug` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `image` varchar(250) NOT NULL,
  `banner_image` varchar(250) NOT NULL,
  `release_date` varchar(50) NOT NULL,
  `server_name` varchar(100) NOT NULL,
  `dta_service` tinyint(1) NOT NULL DEFAULT 0,
  `youtube_video` text NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `movie_type` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_theaters`
--

CREATE TABLE `tbl_movie_theaters` (
  `theaters_id` int(11) NOT NULL,
  `movies_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sub_title` tinytext NOT NULL,
  `image` varchar(50) NOT NULL,
  `header_image` tinytext NOT NULL,
  `banner_image` text NOT NULL,
  `detail` mediumtext NOT NULL,
  `content` text NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `type`) VALUES
(4, 'banquet', 'Banquet', 'Banquet', '', '', 'a:1:{i:0;s:12:\"w2UKM-e2.jpg\";}', '', '', '', '', '', 1, 1, '2018-04-04 17:31:16', 0),
(5, 'room', 'Room', 'Room', '', '', 'a:1:{i:0;s:21:\"XvBHl-0uzhj-about.jpg\";}', '', '', '', '', '', 1, 2, '2018-04-04 17:32:15', 1),
(6, 'dining', 'Dining', 'Good Food, Good Taste, Good Cheers', '', '', 'a:2:{i:0;s:17:\"DqxXy-dining2.jpg\";i:1;s:17:\"RJ0fG-dining1.jpg\";}', '', '<div class=\"section_title\">\r\n	<h2 style=\"text-align: justify;\">\r\n		Our menu</h2>\r\n	<h3 style=\"text-align: justify;\">\r\n		Genuine and delicious</h3>\r\n</div>\r\n<div class=\"row\">\r\n	<div class=\"col-md-12\">\r\n		<div class=\"list-items\">\r\n			<div class=\"list-item\">\r\n				<div class=\"row\">\r\n					<div class=\"col-md-9\">\r\n						<h3 style=\"text-align: justify;\">\r\n							Pizza</h3>\r\n					</div>\r\n					<div class=\"col-md-3\" style=\"text-align: justify;\">\r\n						<span>4$</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"list-item\">\r\n				<div class=\"row\">\r\n					<div class=\"col-md-9\">\r\n						<h3 style=\"text-align: justify;\">\r\n							Momo</h3>\r\n					</div>\r\n					<div class=\"col-md-3\" style=\"text-align: justify;\">\r\n						<span>3$</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"list-item\">\r\n				<div class=\"row\">\r\n					<div class=\"col-md-9\">\r\n						<h3 style=\"text-align: justify;\">\r\n							Soup</h3>\r\n					</div>\r\n					<div class=\"col-md-3\" style=\"text-align: justify;\">\r\n						<span>2$</span></div>\r\n				</div>\r\n			</div>\r\n			<div class=\"list-item\">\r\n				<div class=\"row\">\r\n					<div class=\"col-md-9\">\r\n						<h3 style=\"text-align: justify;\">\r\n							Nepali Khana Set</h3>\r\n					</div>\r\n					<div class=\"col-md-3\" style=\"text-align: justify;\">\r\n						<span>5$</span></div>\r\n					<div class=\"col-md-3\" style=\"text-align: justify;\">\r\n						&nbsp;</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 1, 3, '2018-04-06 16:48:45', 0),
(7, 'tours-and-attraction', 'Tours and Attraction', 'Our attractions', '', '', 'a:1:{i:0;s:18:\"ydpaF-location.jpg\";}', '', '', '', '', '', 1, 4, '2018-04-11 15:09:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_old`
--

CREATE TABLE `tbl_package_old` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` text NOT NULL,
  `header_image` tinytext NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `feature` blob NOT NULL,
  `content` text NOT NULL,
  `facility_title` varchar(255) NOT NULL,
  `number_room` tinytext NOT NULL,
  `currency` tinytext NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` tinytext NOT NULL,
  `onep_price` tinytext NOT NULL,
  `twop_price` tinytext NOT NULL,
  `threep_price` int(5) NOT NULL DEFAULT 0,
  `U` varchar(30) NOT NULL,
  `Double_U` varchar(50) NOT NULL,
  `Round` varchar(50) NOT NULL,
  `Theatre` varchar(50) NOT NULL,
  `extra_bed` tinytext NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `image2`, `image3`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `U`, `Double_U`, `Round`, `Theatre`, `extra_bed`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `type`) VALUES
(1, 'row-row-row-your-boat', 'Row Row Row your Boat', 'Pick a room that best suits your taste and budget', 'Summer Package for Nepali', 'a:1:{i:0;s:19:\"MP2Ah-detailexp.jpg\";}', '', '5HJfb-7.jpg', '', 0x613a303a7b7d, '<div class=\"row\">\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n		<div class=\"resort-r-value\">\r\n			<div class=\"accordian-area\">\r\n				<div aria-multiselectable=\"true\" class=\"panel-group\" id=\"accordion\" role=\"tablist\">\r\n					<div>\r\n						<p style=\"text-align: justify;\">\r\n							The lodge provides great experience of Boat riding and close sightseeing of creatures in the wild. Lakeside picnic is the Jagatpur highlight not to be missed.</p>\r\n						<p style=\"text-align: justify;\">\r\n							<strong>Inclusion:</strong></p>\r\n						<div>\r\n							&bull;<span style=\"white-space:pre\"> </span>1 night stay</div>\r\n						<div>\r\n							&bull;<span style=\"white-space:pre\"> </span>1 breakfast</div>\r\n						<div>\r\n							&bull;<span style=\"white-space:pre\"> </span>1 lunch</div>\r\n						<div>\r\n							&bull;<span style=\"white-space:pre\"> </span>Boating with sun downer</div>\r\n						<div>\r\n							&bull;<span style=\"white-space:pre\"> </span>Airport pick up and drop</div>\r\n						<div>\r\n							&nbsp;</div>\r\n						<div>\r\n							<span style=\"color:#ff0000;\">*</span>Note: Valid till end of August 2017.<br />\r\n							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The above rate is subjected to 10% service charge and 13% VAT.</div>\r\n					</div>\r\n					<div>\r\n						&nbsp;</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12 our-resort-value hidden-xs\">\r\n		<div class=\"img-l-box\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/1_3.jpg\" style=\"width: 279px; height: 436px;\" /></div>\r\n		<div class=\"img-r-box\">\r\n			<div class=\"img-box1\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/1_2.jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n			<div class=\"img-box2\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/1_1.jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 0, '', 'USD', '', 200, '', '', '', '', '', '', '', '', 1, 6, '2017-03-23 14:56:51', 2),
(2, 'sun-downer', 'Sun Downer', 'Discover the mysteries of the place', 'Everything around Jagatpur Lodge is unique and asking questions to those who know the area is a must if you want to discover the mysteries of the place. You can choose all kinds of programs: the Jungle Walk, which takes you to some of the most important places in the region; the Sunset Coffee Break, when dusk begins and animals are more active; and many other options.', 'a:0:{}', '', '2MFwG-8.jpg', '', 0x613a303a7b7d, '<div class=\"row\">\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n		<div class=\"resort-r-value\">\r\n			<div class=\"accordian-area\">\r\n				<div aria-multiselectable=\"true\" class=\"panel-group\" id=\"accordion\" role=\"tablist\">\r\n					<div>\r\n						<p style=\"text-align: justify;\">\r\n							Gazing the sun set on Rapti river bank is an experience of its kind. Birds flying back to their nest and animals on river bank to quench their thirst becomes interesting while soaked in golden rays of dusk.</p>\r\n					</div>\r\n					<div>\r\n						&nbsp;</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12 our-resort-value hidden-xs\">\r\n		<div class=\"img-l-box\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/3(1).jpg\" style=\"width: 279px; height: 436px;\" /></div>\r\n		<div class=\"img-r-box\">\r\n			<div class=\"img-box1\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/2(1).jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n			<div class=\"img-box2\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/1(1).jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 0, '', 'NRS', '', 0, '', '', '', '', '', '', '', '', 0, 9, '2017-03-23 14:58:05', 2),
(3, 'village-walk', 'Village Walk', 'Discover the mysteries of the place', 'Everything around Jagatpur Lodge is unique and asking questions to those who know the area is a must if you want to discover the mysteries of the place. You can choose all kinds of programs: the Jungle Walk, which takes you to some of the most important places in the region; the Sunset Coffee Break, when dusk begins and animals are more active; and many other options.', 'a:1:{i:0;s:21:\"taEqO-jungle-walk.jpg\";}', '', '', '', 0x613a303a7b7d, 'Details Coming Soon!!!', '', '', '', 0, '', 'NRS.', '', 0, '', '', '', '', '', '', '', '', 0, 5, '2017-03-23 14:58:40', 2),
(4, 'jungle-picnic', 'Jungle Picnic', 'Discover the mysteries of the place', 'Everything around Jagatpur Lodge is unique and asking questions to those who know the area is a must if you want to discover the mysteries of the place. You can choose all kinds of programs: the Jungle Walk, which takes you to some of the most important places in the region; the Sunset Coffee Break, when dusk begins and animals are more active; and many other options.', 'a:0:{}', '', 'IIaiv-11.jpg', '', 0x613a303a7b7d, 'Details Coming Soon!!!', '', '', '', 0, '', 'NRS.', '', 0, '', '', '', '', '', '', '', '', 0, 4, '2017-03-23 14:59:11', 2),
(5, 'jeep-safari', 'Jeep Safari', 'Discover the mysteries of the place', 'Everything around Jagatpur Lodge is unique and asking questions to those who know the area is a must if you want to discover the mysteries of the place. You can choose all kinds of programs: the Jungle Walk, which takes you to some of the most important places in the region; the Sunset Coffee Break, when dusk begins and animals are more active; and many other options.', 'a:0:{}', '', 'vX1Kb-10.jpg', '', 0x613a303a7b7d, '<div class=\"row\">\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n		<div class=\"resort-r-value\">\r\n			<div class=\"accordian-area\">\r\n				<div aria-multiselectable=\"true\" class=\"panel-group\" id=\"accordion\" role=\"tablist\">\r\n					<div>\r\n						<p>\r\n							Rhino, bear, leopard, hog dear, crocodile and different rare birds excites you at its best while driving across the jungle in open jeep of Jagatpur lodge.&nbsp;</p>\r\n					</div>\r\n					<div>\r\n						&nbsp;</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12 our-resort-value hidden-xs\">\r\n		<div class=\"img-l-box\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/3(2).jpg\" style=\"width: 279px; height: 436px;\" /></div>\r\n		<div class=\"img-r-box\">\r\n			<div class=\"img-box1\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/1(2).jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n			<div class=\"img-box2\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/2(2).jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 0, '', 'NRS.', '', 0, '', '', '', '', '', '', '', '', 0, 3, '2017-03-23 14:59:51', 2),
(6, 'luxurious-tents', 'Luxurious Tents', 'Experience the Jungle in Tented Luxury', 'Our tents are spacious (650 sq ft), luxurious and with facilities and services of the highest level. Gaze over the river to the jungle from the comfort of your bed. Watch the sun set from your private viewing deck.', 'a:5:{i:0;s:15:\"JeCx4-1-(2).jpg\";i:1;s:15:\"tPxjm-2-(2).jpg\";i:2;s:15:\"SnM3l-3-(1).jpg\";i:3;s:15:\"G35RD-4-(1).jpg\";i:4;s:15:\"phSHI-5-(1).jpg\";}', '', 'SBF1y-1.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a31353a22526f6f6d20466163696c6974696573223b7d693a313b613a31313a7b693a303b733a323a223134223b693a313b733a323a223133223b693a323b733a313a2236223b693a333b733a323a223131223b693a343b733a313a2238223b693a353b733a313a2234223b693a363b733a323a223135223b693a373b733a323a223132223b693a383b733a313a2233223b693a393b733a323a223136223b693a31303b733a323a223137223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Seven tents imported from South Africa are home to luxuriously appointed rooms with en-suite bathrooms. These rooms may seem like five-star hotel rooms that just happen to be housed in a tent in the jungle. But the character and service evoke the timeless courtesy and style of the days of Maharajas and Kings. Sited on raised platforms, each tent has its own private viewing deck. And the view is one as if time stood still. The vista roams over meadowland to the river and the national park beyond. A mugger crocodile may float in deceptive idleness by the riverbank. Or the greater one-horned rhino, deer and a flutter of birds wander past in sublime indifference to the humans nearby.&nbsp;</p>\r\n', '', '5', 'Two +1 Child', 0, '650 sq. ft', '$', 'View Deck', 525, '', '', '', '', 'Lake and Jungle View', '', '', '', 1, 1, '2017-03-23 15:15:49', 1),
(7, 'deluxe-rooms', 'Deluxe Rooms', 'Experience the Jungle in Deluxe Comforts', 'The lodge offers 20 well-appointed rooms housed in five bungalows. Each room is an oasis of soothing calm with en suite bathroom and its own private balcony or terrace. All the rooms have TV with HD channels.', 'a:1:{i:0;s:15:\"hKBPP-slide.jpg\";}', '', '4r0M8-2-(1).jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a31353a22526f6f6d20466163696c6974696573223b7d693a313b613a31313a7b693a303b733a323a223233223b693a313b733a323a223134223b693a323b733a313a2235223b693a333b733a323a223133223b693a343b733a323a223131223b693a353b733a313a2238223b693a363b733a323a223135223b693a373b733a323a223132223b693a383b733a313a2233223b693a393b733a323a223136223b693a31303b733a323a223137223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	There are 5 blocks with 4 rooms in each building. A balcony offers a view of the garden in the daytime and the heavy mist surrounding these blocks make you feel like you are among clouds while on the balcony at early morning during winter. These rooms offer the best view of resort landscape through tall trees and bushes around.</p>\r\n<p style=\"text-align: justify;\">\r\n	Great view of the garden is seen from the balcony of the room. Best view of the resort through tall trees and bushes around is also seen from the room. The lodge also provides very good room services.</p>\r\n<p style=\"text-align: justify;\">\r\n	The lodge landscape is prominently visible from all of the deluxe rooms. Every room offers a private balcony. Rooms are fully facilitated with amenities that make you pleasantly surprised being in the jungle.</p>\r\n', '', '8', 'Two +1 Child', 0, '600 sq. feet', '$', 'Balcony', 220, '', '', '', '', 'Garden view', '', '', '', 1, 2, '2017-03-23 15:17:57', 1),
(8, 'backup', 'Backup', '-', '', 'a:0:{}', '', '', '', 0x613a303a7b7d, '<div class=\"col-lg-7 col-md-7 col-sm-12 col-xs-12 family-img pull-right\">\r\n	<div class=\"image-gallery ntracing-images\">\r\n		<div class=\"grid-sizer\">\r\n			&nbsp;</div>\r\n		<div class=\"single-gallery single-r-gallery anim-5-all masonryImage  span-10\">\r\n			<div class=\"img-holder hover\">\r\n				<a class=\"fancybox\" href=\"javascript:void(0);\" rel=\"tag\"><img alt=\"\" src=\"/userfiles/images/1.png\" /> </a></div>\r\n		</div>\r\n		<div class=\"single-gallery anim-5-all masonryImage  span-7\">\r\n			<div class=\"img-holder hover\">\r\n				<a class=\"fancybox\" href=\"javascript:void(0);\" rel=\"tag\"><img alt=\"\" src=\"/userfiles/images/2.png\" /> </a></div>\r\n		</div>\r\n		<div class=\"single-gallery single-r-gallery anim-5-all masonryImage  span-11\">\r\n			<div class=\"img-holder hover\">\r\n				<a class=\"fancybox\" href=\"javascript:void(0);\" rel=\"tag\"><img alt=\"\" src=\"/userfiles/images/3.png\" /> </a></div>\r\n		</div>\r\n		<div class=\"single-gallery anim-5-all masonryImage  span-12\">\r\n			<div class=\"img-holder hover\">\r\n				<a class=\"fancybox\" href=\"javascript:void(0);\" rel=\"tag\"><img alt=\"\" src=\"/userfiles/images/4.png\" /> </a></div>\r\n		</div>\r\n		<div class=\"single-gallery single-r-gallery anim-5-all masonryImage  span-13\">\r\n			<div class=\"img-holder hover\">\r\n				<a class=\"fancybox\" href=\"javascript:void(0);\" rel=\"tag\"><img alt=\"\" src=\"/userfiles/images/5.png\" /> </a></div>\r\n		</div>\r\n		<div class=\"single-gallery single-r-gallery anim-5-all masonryImage  span-13\">\r\n			<div class=\"img-holder hover\">\r\n				<a class=\"fancybox\" href=\"javascript:void(0);\" rel=\"tag\"><img alt=\"\" src=\"/userfiles/images/6.png\" /> </a></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<div class=\"col-lg-5 col-md-5 col-sm-12 col-xs-12 pull-right\">\r\n	<div class=\"maount-content\">\r\n		<h2>\r\n			Row Row Row Your Boat</h2>\r\n		<p>\r\n			Neque porro quisquam est, qui dolorem ipsum quia dqAolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit. Neque porro quisquam est, qui dolorem ipsum quia dqAolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniamNeque porro quisquam est, qui dolorem ipsum quia dqAolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n		<h3>\r\n			Requirement of Boating</h3>\r\n		<h5>\r\n			qui dolorem ipsum quia dqAolor sit amet, consect etur, adipisci velit, sed quia non numquam eius modi</h5>\r\n		<p>\r\n			Tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit. Neque porro quisquam est, qui dolorem ipsum quia dqAolor sit amet, consectetur, adipisci velit, sed quia.</p>\r\n		<h3>\r\n			Points of Attraction</h3>\r\n		<p>\r\n			Tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit. Neque porro quisquam est, qui dolorem ipsum quia dqAolor sit amet, consectetur, adipisci velit, sed quia.</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 0, '', 'NPR', '', 0, '', '', '', '', '', '', '', '', 0, 2, '2017-04-20 16:44:01', 2),
(9, 'walk-in-the-wild', 'Walk In The Wild', 'Enjoy the Taste of Nature', 'Summer Package For Nepali', 'a:0:{}', '', '', '', 0x613a303a7b7d, '<div class=\"row\">\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n		<div class=\"resort-r-value\">\r\n			<div class=\"accordian-area\">\r\n				<div aria-multiselectable=\"true\" class=\"panel-group\" id=\"accordion\" role=\"tablist\">\r\n					<div>\r\n						<p style=\"text-align: justify;\">\r\n							<strong>Inclusion:</strong></p>\r\n						<div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 night stay</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 breakfast</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 lunch</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 hour of nature walk</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>Airport pick up and drop</div>\r\n						</div>\r\n						<div>\r\n							&nbsp;</div>\r\n						<div>\r\n							<span style=\"color:#ff0000;\">*</span>Note: Valid till 30<sup>th</sup> Sept, 2017.<br />\r\n							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The above rate is subjected to 10% service charge and 13% VAT.</div>\r\n					</div>\r\n					<div>\r\n						&nbsp;</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12 our-resort-value hidden-xs\">\r\n		<div class=\"img-l-box\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/walk1(1).jpg\" style=\"width: 279px; height: 436px;\" /></div>\r\n		<div class=\"img-r-box\">\r\n			<div class=\"img-box1\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/walking.jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n			<div class=\"img-box2\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/walking_1.jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 0, '', 'USD', '', 170, '', '', '', '', '', '', '', '', 1, 7, '2017-08-09 15:03:03', 2),
(10, 'birding', 'Birding', 'Birding Watching in Nature', 'Summer Package For Nepali', 'a:0:{}', '', '', '', 0x613a303a7b7d, '<div class=\"row\">\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12\">\r\n		<div class=\"resort-r-value\">\r\n			<div class=\"accordian-area\">\r\n				<div aria-multiselectable=\"true\" class=\"panel-group\" id=\"accordion\" role=\"tablist\">\r\n					<div>\r\n						<p style=\"text-align: justify;\">\r\n							<strong>Inclusion:</strong></p>\r\n						<div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 night stay</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 breakfast</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 lunch</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>1 hour of birding</div>\r\n							<div>\r\n								&bull;<span style=\"white-space:pre\"> </span>Airport pick up and drop</div>\r\n						</div>\r\n						<div>\r\n							&nbsp;</div>\r\n						<div>\r\n							<span style=\"color:#ff0000;\">*</span>Note: Valid till 30<sup>th</sup> Sept, 2017.<br />\r\n							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The above rate is subjected to 10% service charge and 13% VAT.</div>\r\n					</div>\r\n					<div>\r\n						&nbsp;</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6 col-md-6 col-xs-12 our-resort-value hidden-xs\">\r\n		<div class=\"img-l-box\">\r\n			<img alt=\"\" src=\"/assets/userfiles/images/bird1.jpg\" style=\"width: 279px; height: 436px;\" /></div>\r\n		<div class=\"img-r-box\">\r\n			<div class=\"img-box1\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/birding.jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n			<div class=\"img-box2\">\r\n				<img alt=\"\" src=\"/assets/userfiles/images/bird3.jpg\" style=\"width: 281px; height: 213px;\" /></div>\r\n		</div>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', '', 0, '', 'USD', '', 170, '', '', '', '', '', '', '', '', 1, 8, '2017-08-09 15:11:29', 2),
(11, 'text', 'text', 'Activities', 'sa', 'a:1:{i:0;s:24:\"R6H44-2017-09-17-(1).jpg\";}', '', 'unFSU-aurora-catering-1.jpg', '', 0x613a303a7b7d, 'as', '', '', '', 0, '', 'as', '', 0, '', '', '', '', '', '', '', '', 1, 1, '2017-09-19 10:45:43', 3),
(12, 'asads', 'asads', 'as', '', 'a:1:{i:0;s:19:\"dkqyu-mvxb6-dr1.jpg\";}', '', 'khvcO-ey5dp-hotel-ambassador-gallry.jpg', '', 0x613a303a7b7d, '', '', '', '', 0, '', 'ac', '', 0, '', '', '', '', '', '', '', '', 1, 2, '2017-09-19 10:46:32', 3),
(13, 'new', 'new', 'new', '', 'a:1:{i:0;s:17:\"TDsjF-at5at-1.jpg\";}', '', '52sYM-at5at-1.jpg', '', 0x613a303a7b7d, '', '', '', '', 0, '', '1', '', 12, '', '', '', '', '', '', '', '', 1, 3, '2017-09-19 17:53:48', 3),
(15, 'jaffa-hall', 'Jaffa Hall', 'Welcome to Jaffa Hall, where your events find the perfect space to shine.', 'Welcome to Jaffa Hall, where your events find the perfect space to shine. With 800 sq. ft. of versatile space, it accommodates up to 30 to 70 guests, with seating for 25. Our hall is equipped with essential amenities including a projector, PA system with a microphone, whiteboard, flip chart, soft (pin) board, and printing services. We also provide writing pads with pencils for your convenience. Let us help you create memorable gatherings in this inviting setting.', 'a:2:{i:0;s:12:\"124NK-e7.jpg\";i:1;s:12:\"uKJGV-e6.jpg\";}', '', '3OCCF-rooftop-hall.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	Welcome to Jaffa Hall, where your events find the perfect space to shine. With 800 sq. ft. of versatile space, it accommodates up to 30 to 70 guests, with seating for 25. Our hall is equipped with essential amenities including a projector, PA system with a microphone, whiteboard, flip chart, soft (pin) board, and printing services. We also provide writing pads with pencils for your convenience. Let us help you create memorable gatherings in this inviting setting.</p>\r\n', '', '', '', 0, '', '$', '', 100, '30', '', '25', '70', '', 'Jaffa Hall', 'Welcome to Jaffa Hall, where your events find the perfect space to shine. With 800 sq. ft. of versatile space, it accommodates up to 30 to 70 guests, with seating for 25. Our hall is equipped with essential amenities including a projector, PA system with ', 'Welcome to Jaffa Hall, where your events find the perfect space to shine. With 800 sq. ft. of versatile space, it accommodates up to 30 to 70 guests, with seating for 25. Our hall is equipped with essential amenities including a projector, PA system with ', 1, 1, '2018-04-04 17:38:04', 4),
(16, 'jamaica-hall', 'Jamaica Hall', 'Discover the grandeur of Jamaica Hall, the perfect venue.', 'Discover the grandeur of Jamaica Hall, the perfect venue for your large-scale events and conferences. With a spacious 2500 sq. ft. area, it can comfortably accommodate up to 120 to 250 guests, providing seating for 120. Our hall is fully equipped with advanced amenities, including a projector, PA system with a microphone, LED TV, video conferencing capabilities, computers/laptops, whiteboard, flip chart, soft (pin) board, and printing services. We also offer writing pads with pencils and professional photography and videography services to capture your event\'s moments. Make your gatherings truly exceptional in this versatile and well-equipped space.', 'a:3:{i:0;s:12:\"AF0T0-e8.jpg\";i:1;s:12:\"a2iwt-e3.jpg\";i:2;s:12:\"2FXIL-e2.jpg\";}', '', 'DkKtB-jamaica-hall.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	Discover the grandeur of Jamaica Hall, the perfect venue for your large-scale events and conferences. With a spacious 2500 sq. ft. area, it can comfortably accommodate up to 120 to 250 guests, providing seating for 120. Our hall is fully equipped with advanced amenities, including a projector, PA system with a microphone, LED TV, video conferencing capabilities, computers/laptops, whiteboard, flip chart, soft (pin) board, and printing services. We also offer writing pads with pencils and professional photography and videography services to capture your event&#39;s moments. Make your gatherings truly exceptional in this versatile and well-equipped space.</p>\r\n', '', '', '', 0, '', '$', '', 100, '120', '', '120', '250', '', 'Jamaica Hall', 'Discover the grandeur of Jamaica Hall, the perfect venue for your large-scale events and conferences. With a spacious 2500 sq. ft. area, it can comfortably accommodate up to 120 to 250 guests, providing seating for 120. Our hall is fully equipped with adv', 'Discover the grandeur of Jamaica Hall, the perfect venue for your large-scale events and conferences. With a spacious 2500 sq. ft. area, it can comfortably accommodate up to 120 to 250 guests, providing seating for 120. Our hall is fully equipped with adv', 1, 2, '2018-04-04 17:39:02', 4),
(17, 'jalsa-hall', 'Jalsa Hall', 'Welcome to Jalsa, our grand and versatile event space.', 'Welcome to Jalsa, our grand and versatile event space that\'s perfect for hosting large gatherings. With an expansive 4800 sq. ft., it comfortably accommodates up to 300 to 500 guests, with seating for 240. Jalsa is fully equipped with cutting-edge amenities, including a projector, PA system with microphones, LED TV, video conferencing capabilities, computers/laptops, whiteboard, flip chart, soft (pin) board, and printing services. We provide writing pads with pencils for your convenience, along with professional photography and videography services to capture your special moments. Elevate your events to grandeur in this spacious and well-appointed venue.', 'a:3:{i:0;s:12:\"M6SxT-e4.jpg\";i:1;s:12:\"aXtzg-e5.jpg\";i:2;s:12:\"xtfpy-e1.jpg\";}', '', 'wEcFG-jalsa-hall.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	Welcome to Jalsa, our grand and versatile event space that&#39;s perfect for hosting large gatherings. With an expansive 4800 sq. ft., it comfortably accommodates up to 300 to 500 guests, with seating for 240. Jalsa is fully equipped with cutting-edge amenities, including a projector, PA system with microphones, LED TV, video conferencing capabilities, computers/laptops, whiteboard, flip chart, soft (pin) board, and printing services. We provide writing pads with pencils for your convenience, along with professional photography and videography services to capture your special moments. Elevate your events to grandeur in this spacious and well-appointed venue.</p>\r\n', '', '', '', 0, '', '$', '', 100, '300', '', '240', '500', '', 'Jalsa Hall', 'Welcome to Jalsa, our grand and versatile event space that\'s perfect for hosting large gatherings. With an expansive 4800 sq. ft., it comfortably accommodates up to 300 to 500 guests, with seating for 240. Jalsa is fully equipped with cutting-edge ameniti', 'Welcome to Jalsa, our grand and versatile event space that\'s perfect for hosting large gatherings. With an expansive 4800 sq. ft., it comfortably accommodates up to 300 to 500 guests, with seating for 240. Jalsa is fully equipped with cutting-edge ameniti', 1, 3, '2018-04-04 17:39:39', 4),
(18, 'presidential-suite', 'Presidential Suite', 'Experience the epitome of luxury in our exquisite Presidential Suite.', 'Presidential Suite rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet facilities.\r\nThe windows of the presidential room offers a panoramic view of the the highway yet the customers can get the healthy and peaceful environment.\r\n', 'a:5:{i:0;s:12:\"3C3Ci-ps.jpg\";i:1;s:13:\"oO61r-ps1.jpg\";i:2;s:13:\"cRv2t-ps3.jpg\";i:3;s:12:\"On7Zy-ps.jpg\";i:4;s:13:\"yqI5A-ps2.jpg\";}', '', '9Vwh0-presidential-suite.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31303a7b693a303b733a323a223135223b693a313b733a323a223132223b693a323b733a323a223434223b693a333b733a313a2234223b693a343b733a323a223136223b693a353b733a313a2238223b693a363b733a313a2239223b693a373b733a323a223138223b693a383b733a323a223134223b693a393b733a323a223233223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Presidential Suite rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet facilities.<br />\r\n	The windows of the presidential room offers a panoramic view of the the highway yet the customers can get the healthy and peaceful environment.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '1', 'Twin Sharing on BB', 0, '350 sq ft', '$', '', 90, '', '', '', '', 'Panoramic view of the the highway', 'Presidential Suite Room', 'Presidential Suite rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet fac', 'Presidential Suite rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet fac', 1, 23, '2018-04-04 17:40:49', 5),
(22, 'mountain-view', 'Mountain View', 'Mountain View', 'A heaven of peace and tranquility. SR Hotel is a perfect retreat for you and your family. The Packages er offer are carefully tailored to your needs. Since we are far from Hustle and Bustle of the City, transportation facilities are included with special every day.', 'a:2:{i:0;s:15:\"sALUF-view1.jpg\";i:1;s:15:\"rA0hC-view2.jpg\";}', '', '', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	A heaven of peace and tranquility. SR Hotel is a perfect retreat for you and your family. The Packages er offer are carefully tailored to your needs. Since we are far from Hustle and Bustle of the City, transportation facilities are included with special every day.</p>\r\n', '', '', '', 0, '', '$', '', 100, '', '', '', '', '', 'Mountain View', 'A heaven of peace and tranquility. SR Hotel is a perfect retreat for you and your family. The Packages er offer are carefully tailored to your needs. Since we are far from Hustle and Bustle of the City, transportation facilities are included with special ', 'A heaven of peace and tranquility. SR Hotel is a perfect retreat for you and your family. The Packages er offer are carefully tailored to your needs. Since we are far from Hustle and Bustle of the City, transportation facilities are included with special ', 1, 22, '2018-04-11 15:17:48', 7),
(23, 'convenient-location', 'Convenient Location', 'The SR Hotel', 'We are located in a prime location, providing easy access to the city\'s major attractions and landmarks. Whether you are here for business or leisure, we are the perfect base to explore the city and its surroundings.', 'a:4:{i:0;s:18:\"9kTMj-location.jpg\";i:1;s:15:\"wXJWy-view1.jpg\";i:2;s:15:\"Ysr7K-view2.jpg\";i:3;s:15:\"q2BTN-view3.jpg\";}', '', 'LIW7D-location.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	<span courier=\"\" lucida=\"\" style=\"font-family: Consolas, \" white-space:=\"\">We are located in a prime location, providing easy access to the city&#39;s major attractions and landmarks. Whether you are here for business or leisure, we are the perfect base to explore the city and its surroundings.</span></p>\r\n', '', '', '', 0, '', '$', '', 100, '', '', '', '', '', 'Convenient Location', 'We are located in a prime location, providing easy access to the city\'s major attractions and landmarks. Whether you are here for business or leisure, we are the perfect base to explore the city and its surroundings.', 'We are located in a prime location, providing easy access to the city\'s major attractions and landmarks. Whether you are here for business or leisure, we are the perfect base to explore the city and its surroundings.', 1, 23, '2018-04-11 15:47:05', 7),
(25, 'deluxe-room', 'Deluxe Room', 'We have 10 well furnished spacious comfortable rooms', 'One of the best resorts in Nepal, The SR Hotel offers you 40 well furnished spacious comfortable rooms including 4 suites, with traditional yet all modern day facilities beneficial for both the business travelers and the leisure tourists.', 'a:2:{i:0;s:12:\"czc8F-r2.jpg\";i:1;s:12:\"0Ge55-r1.jpg\";}', '', 'WbGdi-deluxe-room.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31333a7b693a303b733a323a223135223b693a313b733a323a223132223b693a323b733a313a2233223b693a333b733a323a223434223b693a343b733a313a2234223b693a353b733a313a2238223b693a363b733a323a223136223b693a373b733a323a223131223b693a383b733a313a2239223b693a393b733a323a223138223b693a31303b733a313a2235223b693a31313b733a323a223134223b693a31323b733a323a223233223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Deluxe rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet facilities.<br />\r\n	The Windows of the executive rooms offer a panoramic view of the the highway yet the customers can get the healthy and peaceful environment.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 'Double Sharing on BB', 0, '', '$', '', 110, '', '', '', '', '', 'Deluxe Room', 'Deluxe rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet facilities.\r\nTh', 'Deluxe rooms are functionally arranged living space with furnishings such as a writing desk and parlor style chairs, and a spacious bathroom provide a leisurely feel. Also, provides the executive facilities like breakfast,24-hours internet facilities.\r\nTh', 0, 21, '2018-04-23 16:18:20', 5),
(26, 'refreshing-godavari', 'Refreshing Godavari', 'Refreshing Godavari', '', 'a:1:{i:0;s:21:\"as6y5-untitled-24.jpg\";}', '', '4XzM8-combined-design-final.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	The Godavari the greenest, most perfect part of the valley is one of the popular hiking destinations in Nepal for its rich wildlife and natural splendor. The pleasant National Botanical Garden attracts people, nature lovers and researchers for its beauty and surrounding. The garden is an extravaganza of plants, trees, ferns, flowers and orchids and breathtaking butterflies. Avid bird watchers can be spotted in the garden, patiently waiting to view some of the rare and unique birds.</p>\r\n', '', '', '', 0, '', 'NPR', '', 0, '', '', '', '', '', 'Refreshing Godavari', 'godavari resort, godavari village resort, godavari village resort kathmandu, godavari village resort lalitpur, botanical garden, best resort in lalitpur, best resort in kathmandu, nearby place in godavari ', 'The Godavari the greenest, most perfect part of the valley is one of the popular hiking destinations in Nepal for its rich wildlife and natural splendor.', 0, 24, '2018-04-23 17:14:45', 7),
(27, 'the-sr-hotel-banquet-halls', 'The SR Hotel Banquet Halls', 'Achieve you fitness goal', 'For those magic moments                                                                           \r\n\r\nWe have total 4 halls to meet your requirements.', 'a:4:{i:0;s:16:\"9mRVN-hall-3.jpg\";i:1;s:15:\"YJk9V-hall4.jpg\";i:2;s:15:\"edQGj-hall1.jpg\";i:3;s:15:\"abIMU-hall2.jpg\";}', '', 'aRHsX-jamaicha.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	For those magic moments </p>\r\n<h3>We have total 4 halls to meet your requirements.</h3>\r\n', '', '', '', 0, '', 'NPR', '', 500, '', '', '', '', '', 'Return URL', 'We have total 4 halls to meet your requirements.', 'Stay fit and healthy.\r\n\r\n', 1, 21, '2018-04-23 17:21:46', 7),
(28, 'junior-suite', 'Junior Suite', 'Introducing our Junior Suite, where comfort and affordability harmonize beautifully.', 'Indulge in luxury and space with our Junior Suites, where comfort meets affordability. We offer 2 of these well-appointed sanctuaries, each generously sized at 300 sq ft. With a rate of just $55 for single and double occupancy, including breakfast (BB plan), you\'ll experience the perfect blend of elegance and value. Welcome to a world of comfort and sophistication at The SR Hotel.\r\n\r\n', 'a:3:{i:0;s:12:\"rxjRN-js.jpg\";i:1;s:13:\"g8ZUk-r11.jpg\";i:2;s:12:\"Ol6S1-r3.jpg\";}', '', 'Th6aI-suite-room.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31323a7b693a303b733a323a223135223b693a313b733a323a223132223b693a323b733a323a223434223b693a333b733a313a2233223b693a343b733a313a2234223b693a353b733a323a223136223b693a363b733a313a2238223b693a373b733a313a2239223b693a383b733a323a223138223b693a393b733a313a2235223b693a31303b733a323a223134223b693a31313b733a323a223233223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	Indulge in luxury and space with our Junior Suites, where comfort meets affordability. We offer 2 of these well-appointed sanctuaries, each generously sized at 300 sq ft. With a rate of just $55 for single and double occupancy, including breakfast (BB plan), you&#39;ll experience the perfect blend of elegance and value. Welcome to a world of comfort and sophistication at The SR Hotel.</p>\r\n<p style=\"text-align: justify;\">\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '2', 'Single on BB', 0, '', '$', '', 55, '', '', '', '', 'Mountain, City, Garden', 'Junior Suite', 'Indulge in luxury and space with our Junior Suites, where comfort meets affordability. We offer 2 of these well-appointed sanctuaries, each generously sized at 300 sq ft. With a rate of just $55 for single and double occupancy, including breakfast (BB pla', 'Indulge in luxury and space with our Junior Suites, where comfort meets affordability. We offer 2 of these well-appointed sanctuaries, each generously sized at 300 sq ft. With a rate of just $55 for single and double occupancy, including breakfast (BB pla', 1, 24, '2018-04-23 18:10:02', 5),
(29, 'standard-room', 'Standard Room', 'We have 10 well furnished spacious comfortable rooms', 'One of the best hotels in Nepal, The SR Hotel offers you 40 well furnished spacious comfortable rooms including 4 suites, with all modern day facilities beneficial for both the business travelers and the leisure tourists.', 'a:5:{i:0;s:14:\"lHgp2-std3.jpg\";i:1;s:14:\"nk2LB-std5.jpg\";i:2;s:14:\"kcQfQ-std2.jpg\";i:3;s:14:\"1GLVL-std1.jpg\";i:4;s:14:\"zS6k6-std4.jpg\";}', '', 'A85Ys-standard-room.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31323a7b693a303b733a323a223132223b693a313b733a313a2233223b693a323b733a323a223434223b693a333b733a313a2234223b693a343b733a313a2238223b693a353b733a323a223136223b693a363b733a323a223131223b693a373b733a313a2239223b693a383b733a323a223138223b693a393b733a313a2235223b693a31303b733a323a223134223b693a31313b733a323a223233223b7d7d7d, '<p style=\"text-align: justify;\">\r\n	One of the best hotels in Nepal, The SR Hotel offers you 40 well furnished spacious comfortable rooms including 4 suites, with all modern day facilities beneficial for both the business travelers and the leisure tourists.</p>\r\n', '', '10', 'Double Sharing on BB', 0, '', '$', '', 40, '', '', '', '', '', 'Standard Room', 'One of the best hotels in Nepal, The SR Hotel offers you 40 well furnished spacious comfortable rooms including 4 suites, with all modern day facilities beneficial for both the business travelers and the leisure tourists.', 'One of the best hotels in Nepal, The SR Hotel offers you 40 well furnished spacious comfortable rooms including 4 suites, with all modern day facilities beneficial for both the business travelers and the leisure tourists.', 0, 22, '2018-04-23 18:13:02', 5),
(30, 'conference-hall', 'Conference Hall', 'Unlock the potential of your meetings and events in our state-of-the-art Conference Hall.', 'Unlock the potential of your meetings and events in our state-of-the-art Conference Hall. Spanning 1100 sq. ft., it can comfortably accommodate up to 60 to 125 guests, with seating for 48. Equipped with modern amenities including a projector, PA system with a microphone, whiteboard, flip chart, soft (pin) board, and printing services, we provide everything you need for a successful gathering. Your event\'s success is our priority.', 'a:1:{i:0;s:13:\"0wQiT-e10.jpg\";}', '', 'wAvP6-rooftop-banquet.jpg', '', 0x613a303a7b7d, '<p style=\"text-align: justify;\">\r\n	Unlock the potential of your meetings and events in our state-of-the-art Conference Hall. Spanning 1100 sq. ft., it can comfortably accommodate up to 60 to 125 guests, with seating for 48. Equipped with modern amenities including a projector, PA system with a microphone, whiteboard, flip chart, soft (pin) board, and printing services, we provide everything you need for a successful gathering. Your event&#39;s success is our priority.</p>\r\n', '', '', '', 0, '', '$', '', 10, '60', '100', '48', '125', '', 'Conference Hall', 'Unlock the potential of your meetings and events in our state-of-the-art Conference Hall. Spanning 1100 sq. ft., it can comfortably accommodate up to 60 to 125 guests, with seating for 48. Equipped with modern amenities including a projector, PA system wi', 'Unlock the potential of your meetings and events in our state-of-the-art Conference Hall. Spanning 1100 sq. ft., it can comfortably accommodate up to 60 to 125 guests, with seating for 48. Equipped with modern amenities including a projector, PA system wi', 1, 4, '2023-09-12 08:31:19', 4),
(32, 'deluxe-room-double', 'Deluxe Room(Double)', 'Experience the charm of our Deluxe Double Rooms.', 'Experience the charm of our Deluxe Double Rooms, where comfort meets affordability. We offer 10 of these cozy retreats, each spanning 200 sq ft in size. With rates starting at just $30 for single and double occupancy, including breakfast (BB plan), you can enjoy a delightful stay without breaking the bank. Welcome to a world of comfort and convenience at The SR Hotel.', 'a:3:{i:0;s:13:\"Hg7zV-drd.jpg\";i:1;s:28:\"a13zv-deluxe-room-double.jpg\";i:2;s:30:\"GS6xf-deluxe-room-double-1.jpg\";}', '', 'ytTon-deluxe-double.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31303a7b693a303b733a323a223132223b693a313b733a323a223434223b693a323b733a313a2233223b693a333b733a313a2234223b693a343b733a323a223136223b693a353b733a313a2238223b693a363b733a323a223131223b693a373b733a323a223138223b693a383b733a323a223134223b693a393b733a323a223233223b7d7d7d, 'Experience the charm of our Deluxe Double Rooms, where comfort meets affordability. We offer 10 of these cozy retreats, each spanning 200 sq ft in size. With rates starting at just $30 for single and double occupancy, including breakfast (BB plan), you can enjoy a delightful stay without breaking the bank. Welcome to a world of comfort and convenience at The SR Hotel.', '', '10', '', 0, '200', '$', '', 30, '', '', '', '', 'Mountain, City, Garden', '', '', '', 1, 28, '2023-09-21 12:46:44', 5),
(33, 'deluxe-room-twin', 'Deluxe Room(Twin)', 'Discover the perfect harmony of comfort and affordability in our Deluxe Twin Rooms.', 'Discover the perfect harmony of comfort and affordability in our Deluxe Twin Rooms. We have 5 of these spacious retreats, each boasting 220 sq ft of living space. With a single and double occupancy rate of just $30, inclusive of breakfast (BB plan), you can enjoy a delightful stay without compromise. Experience exceptional value and relaxation at The SR Hotel.', 'a:3:{i:0;s:13:\"aokCH-drt.jpg\";i:1;s:26:\"aECEL-deluxe-room-twin.jpg\";i:2;s:28:\"zkvux-deluxe-room-twin-2.jpg\";}', '', 'FLpAn-dt-34.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a393a7b693a303b733a323a223132223b693a313b733a323a223434223b693a323b733a313a2233223b693a333b733a313a2234223b693a343b733a323a223136223b693a353b733a313a2238223b693a363b733a323a223138223b693a373b733a323a223134223b693a383b733a323a223233223b7d7d7d, 'Discover the perfect harmony of comfort and affordability in our Deluxe Twin Rooms. We have 5 of these spacious retreats, each boasting 220 sq ft of living space. With a single and double occupancy rate of just $30, inclusive of breakfast (BB plan), you can enjoy a delightful stay without compromise. Experience exceptional value and relaxation at The SR Hotel.', '', '5', '', 0, '220', '$', '', 30, '', '', '', '', 'Mountain, City, Garden', '', '', '', 1, 27, '2023-09-21 13:31:28', 5),
(34, 'deluxe-room-family', 'Deluxe Room(Family)', 'Embrace family comfort in our Deluxe Family Rooms.', 'Embrace family comfort in our Deluxe Family Rooms. We have 6 of these inviting spaces, each offering 220 sq ft of room to relax. With a rate of $45 for single and double occupancy, including breakfast (BB plan), it\'s the perfect choice for a cozy family getaway. Experience a harmonious blend of convenience and affordability at The SR Hotel.', 'a:0:{}', '', '', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31303a7b693a303b733a323a223132223b693a313b733a323a223434223b693a323b733a313a2233223b693a333b733a313a2234223b693a343b733a323a223136223b693a353b733a313a2238223b693a363b733a323a223138223b693a373b733a313a2235223b693a383b733a323a223134223b693a393b733a323a223233223b7d7d7d, 'Embrace family comfort in our Deluxe Family Rooms. We have 6 of these inviting spaces, each offering 220 sq ft of room to relax. With a rate of $45 for single and double occupancy, including breakfast (BB plan), it&#39;s the perfect choice for a cozy family getaway. Experience a harmonious blend of convenience and affordability at The SR Hotel.', '', '6', '', 0, '220', '$', '', 45, '', '', '', '', 'Mountain, City, Garden', '', '', '', 0, 26, '2023-09-21 14:27:10', 5),
(35, 'super-deluxe', 'Super Deluxe', 'Experience luxury redefined in our Super Deluxe Rooms.', 'Experience luxury redefined in our Super Deluxe Rooms. Discover comfort and style in one of our 8 spacious sanctuaries, each spanning 250 sq ft. With rates starting at just $45 for single and double occupancy, including breakfast (BB plan), you\'ll enjoy a lavish retreat without compromise. Welcome to a world of indulgence at The SR Hotel.', 'a:3:{i:0;s:12:\"ERDpw-sd.jpg\";i:1;s:24:\"6o47W-super-deluxe-1.jpg\";i:2;s:24:\"mlEGv-super-deluxe-2.jpg\";}', '', 'pGRQd-3.jpg', '', 0x613a323a7b693a32343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a313b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31313a7b693a303b733a323a223132223b693a313b733a323a223434223b693a323b733a313a2233223b693a333b733a313a2234223b693a343b733a323a223136223b693a353b733a313a2238223b693a363b733a323a223131223b693a373b733a313a2239223b693a383b733a323a223138223b693a393b733a323a223134223b693a31303b733a323a223233223b7d7d7d, 'Experience luxury redefined in our Super Deluxe Rooms. Discover comfort and style in one of our 8 spacious sanctuaries, each spanning 250 sq ft. With rates starting at just $45 for single and double occupancy, including breakfast (BB plan), you&#39;ll enjoy a lavish retreat without compromise. Welcome to a world of indulgence at The SR Hotel.', '', '8', '', 0, '250', '$', '', 45, '', '', '', '', 'Mountain, City, Garden', '', '', '', 1, 25, '2023-09-21 15:17:46', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) CHARACTER SET utf8 NOT NULL,
  `group_id` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_polloptions`
--

CREATE TABLE `tbl_polloptions` (
  `id` int(11) NOT NULL,
  `pollid` int(11) NOT NULL COMMENT 'foreign id for tbl_polls.id',
  `pollOption` varchar(100) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_polls`
--

CREATE TABLE `tbl_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(5, 'New Year Offer', '2024-04-09', '2024-04-14', 'a:1:{i:0;s:23:\"l96Rz-sr-pop-up-(1).jpg\";}', '', '0', '', 3, 1, 1, 1, 'new-year-offer'),
(6, 'New Year Offer 1', '2024-04-09', '2024-04-14', 'a:1:{i:0;s:47:\"KQQLw-0bbca152-19f2-4ba5-9a05-16d488594d90.jpeg\";}', '', '0', '', 1, 1, 2, 1, 'new-year-offer-1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`) VALUES
(18, 'Swimming Pool', 'bkRRE-aa.jpg', '', 0, '', 0, 0, '2018-05-24 17:07:39', 1, 1),
(17, 'Dining', 'EYR4e-dining.jpg', '', 0, '', 1, 0, '2018-05-24 16:54:04', 4, 1),
(16, 'Room', 'cHrWg-room.jpg', '', 0, '', 1, 0, '2018-05-24 16:49:18', 5, 1),
(19, 'Dining hall', 'j5eZI-dinings.jpg', '', 0, '<p color:=\"\" open=\"\" san=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: \" vertical-align:=\"\">\r\n	Food</p>\r\n<p color:=\"\" open=\"\" san=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: \" vertical-align:=\"\">\r\n	Taste the food at Godavari Village Resort Multi Cuisine Restaurant, be it , Continental, Indian, and you will never forget it again. Fresh, tasty and authentic, their delicious cuisines are highly popular locally as well as among travellers. You can find the&nbsp;<span class=\"moreelipses\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; letter-spacing: 0px;\">...</span></p>\r\n<p color:=\"\" open=\"\" san=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: \" vertical-align:=\"\">\r\n	Ambience</p>\r\n<p color:=\"\" open=\"\" san=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: \" vertical-align:=\"\">\r\n	If the food at Godavari Village Resort Multi- Cuisine Restaurant is worth a mention, our ambience is even better. The interiors are beautifully decorated and comfortable with cozy furniture and a pleasant atmosphere. It is great for a family outing as well as a get-together with friends alike.&nbsp;</p>\r\n', 1, 0, '2018-05-24 17:18:39', 3, 1),
(20, 'Hall', 'tuyHU-jalsa.jpg', '', 0, '', 1, 0, '2018-05-24 17:26:24', 2, 1),
(21, 'Aerial View', 'yJ8qk-drone-slide.jpg', '', 0, '', 1, 0, '2023-09-11 22:12:32', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(1, 'Facebook', 'fa-brands fa-facebook', 'https://www.facebook.com/thesrhotel', 1, 1, ''),
(2, 'youtube', 'fa fa-youtube-play', 'www.youtube.com', 0, 2, ''),
(3, 'Instagram', 'fa-brands fa-instagram', 'https://www.instagram.com/thesrhotel1/', 1, 3, ''),
(4, 'tripadvisor', 'fa-tripadvisor', 'https://www.tripadvisor.com/Hotel_Review-g17710100-d23147417-Reviews-The_SR_Hotel-Tilottama_Lumbini_Zone_Western_Region.html', 0, 4, ''),
(5, 'tiktok', 'fa-brands fa-tiktok', 'tiktok.com', 0, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(225) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `content` text NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `via_type` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(1, 0, 'Mr. Arjun S', '1uwLn-tripadvisor.png', 'https://www.tripadvisor.com/ShowUserReviews-g17710100-d23147417-r829663285-The_SR_Hotel-Tilottama_Lumbini_Zone_Western_Region.html', 'Second time visit , Awesome hospitality, nice and friendly staff, clean and fress room and the foods are so delicious , would like to thank all the SR hotels staff members for there great food and hospitality, Will visit surely next time Thankyou all SR team.', 1, 1, 'Nepal', 'Tripadvisor', 0),
(2, 0, 'Manzug2021', '5fiAG-tripadvisor.png', 'https://www.tripadvisor.com/ShowUserReviews-g17710100-d23147417-r785096397-The_SR_Hotel-Tilottama_Lumbini_Zone_Western_Region.html', 'Hmm, This is my 3rd time in sr hotel I like the most here comfortable and hygienic hotel located in inside manigram name called SRHOTEL I like the food there and lil disappointed with momo chutney and freanch fries I like the staff from f&amp;b Ashok sharma &amp; keshav bhusal they are very kind and good behaviour sr got the really good and polite staff such a friendly behaviour really impressed Thankyou for your service hope to get back soon again..', 2, 1, 'India', 'Tripadvisor', 2),
(3, 0, 'Ganga Gautam', 'jRN5E-facebook500.png', 'https://www.facebook.com/thesrhotel/reviews', 'Good hotel, friendly people and tasty food but for the last three days AC is not working. I have complained several time but no response. The management should be prompt and responsible to respond to the customers\' needs.', 3, 1, 'Kathmandu, Nepal', 'Facebook', 1),
(4, 0, 'Pashupati Pradhan', 'OFcRp-facebook500.png', 'https://www.facebook.com/thesrhotel/reviews', '3 star lodging & fooding service in the heart of butwal city. Enjoy fine dining with Thakali khana at Lete Vansa and Enjoy Food n beverages @ One square Lounge at Top floor with view of Northern hills.', 4, 1, 'Nepal', 'Facebook', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theaters`
--

CREATE TABLE `tbl_theaters` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` tinytext NOT NULL,
  `nserver_name` varchar(100) NOT NULL,
  `ndta_service` tinyint(1) NOT NULL DEFAULT 0,
  `cserver_name` varchar(100) NOT NULL,
  `cdta_service` tinyint(1) NOT NULL DEFAULT 0,
  `showing_date` varchar(20) NOT NULL,
  `coming_date` varchar(20) NOT NULL,
  `showing_movies` tinytext NOT NULL,
  `coming_movies` tinytext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `optional_email` mediumtext NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `facebook_uid` varchar(255) NOT NULL,
  `facebook_accesstoken` varchar(255) NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`) VALUES
(1, 'Teknath', '', 'Bashyal', '', 'info@thesrhotel.com', 'sunita@longtail.info', 'admin', '4ef961d430016feab913571a25818e97', 'vlTbJ16FJDUI9gctRagBN1Nxa', '', 1, 'jx3PtXqKso', '', '', '2015-04-08 17:45:04', 1, 1, '2014-03-26'),
(2, 'Super admin', '', '', '', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', '5BnuwlwbgTcJNtbymC8Kmq23e', '', 1, '', '', '', '2023-11-09 10:20:54', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_info`
--

CREATE TABLE `tbl_user_info` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `zodic_sign` varchar(100) NOT NULL,
  `current_city` tinytext NOT NULL,
  `education` tinytext NOT NULL,
  `home_town` tinytext NOT NULL,
  `phone_res` varchar(30) NOT NULL,
  `phone_office` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `mobile_no2` varchar(30) NOT NULL,
  `children_name` tinytext NOT NULL,
  `pet_name` tinytext NOT NULL,
  `nick_name` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `maritial_status` enum('married','single','divorced') NOT NULL,
  `spouse_name` varchar(100) NOT NULL,
  `publish_spoush_name` tinyint(1) NOT NULL,
  `publish_children_name` varchar(255) NOT NULL,
  `career_start_date` date NOT NULL,
  `facebook_link` varchar(255) NOT NULL,
  `facebook_page` tinytext NOT NULL,
  `twitter_link` tinytext NOT NULL,
  `google_plus` tinytext NOT NULL,
  `linkedin` tinytext NOT NULL,
  `skpye_address` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `other_profession` tinytext NOT NULL,
  `question_set` int(11) NOT NULL,
  `answer_status` tinyint(1) NOT NULL COMMENT '0=>Not finished,1=>finised,2=>ongoing review,3=>complete review,',
  `notification` varchar(50) NOT NULL COMMENT 'notification for answer status complete.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `title` mediumtext NOT NULL,
  `thumb_image` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `class` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitorcounter`
--

CREATE TABLE `tbl_visitorcounter` (
  `id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookinginfo`
--
ALTER TABLE `tbl_bookinginfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking_pkg`
--
ALTER TABLE `tbl_booking_pkg`
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_old`
--
ALTER TABLE `tbl_package_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_polloptions`
--
ALTER TABLE `tbl_polloptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_polls`
--
ALTER TABLE `tbl_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theaters`
--
ALTER TABLE `tbl_theaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visitorcounter`
--
ALTER TABLE `tbl_visitorcounter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bookinginfo`
--
ALTER TABLE `tbl_bookinginfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3115;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_package_old`
--
ALTER TABLE `tbl_package_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_polloptions`
--
ALTER TABLE `tbl_polloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_polls`
--
ALTER TABLE `tbl_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_theaters`
--
ALTER TABLE `tbl_theaters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_visitorcounter`
--
ALTER TABLE `tbl_visitorcounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking_pkg`
--
ALTER TABLE `tbl_booking_pkg`
  ADD CONSTRAINT `fk_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `tbl_bookinginfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
