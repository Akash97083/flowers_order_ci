-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 01:40 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `saesha_flower`
--

-- --------------------------------------------------------

--
-- Table structure for table `global_config`
--

CREATE TABLE IF NOT EXISTS `global_config` (
`id` int(10) NOT NULL,
  `field_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `field_value` text CHARACTER SET utf8 NOT NULL,
  `field_key` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_config`
--

INSERT INTO `global_config` (`id`, `field_name`, `field_value`, `field_key`) VALUES
(1, 'Site Name', 'Saesha Flower', 'global_site_name_en'),
(2, 'Meta Title', 'Saesha Flower', 'global_meta_title_en'),
(3, 'Meta Keywords', 'Saesha Flower', 'global_meta_keywords_en'),
(4, 'Meta Description', 'Saesha Flower', 'global_meta_description_en'),
(12, 'Webadmin Name', 'admin', 'global_web_admin_name'),
(13, 'Webadmin Email', 'vishal143.niit@gmail.com', 'global_webadmin_email'),
(14, 'Email Signature', 'Thanks & Regards,\r\nSaesha Flower', 'global_email_signature'),
(23, 'Paypal Business Email', 'priya_new_merchant_account@gmail.com', 'global_paypal_business_email'),
(24, 'Paypal Mode', 'sandbox', 'global_paypal_mode'),
(59, 'Phone Number', '415-992-8200', 'global_phone_number'),
(60, 'Address', 'Saesha Flower', 'global_site_address'),
(65, 'Site Email Address', 'vishal143.niit@gmail.com', 'global_site_email_address'),
(75, 'Kilometre', '', 'global_web_with_in'),
(76, 'Longitude', '', 'global_web_longitude'),
(77, 'Latitude', '', 'global_web_latitude'),
(78, 'Multipale Pin', '', 'global_web_with_in_pin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id` int(10) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_group` enum('0','1','2') NOT NULL COMMENT '0->Admin, 1->Insurance Company, 2-> User',
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8 NOT NULL DEFAULT 'Active',
  `online` enum('0','1') NOT NULL DEFAULT '0',
  `b_status` enum('0','1') DEFAULT '0' COMMENT '0=Inactive,1=active',
  `block_status` enum('Unblock','Block') NOT NULL DEFAULT 'Unblock',
  `block_date` date DEFAULT NULL,
  `registered_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `last_active_time` varchar(255) DEFAULT NULL,
  `date_added` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `parent_id`, `user_group`, `username`, `password`, `email_address`, `full_name`, `mobile_no`, `status`, `online`, `b_status`, `block_status`, `block_date`, `registered_date`, `end_date`, `last_active_time`, `date_added`) VALUES
(1, NULL, '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@admin.com', 'V!$H@L', '', 'Active', '1', '0', 'Block', '2017-11-06', 'MDUtMDgtMjAxOCAyMTowNDoyMg==', 'MjAtMDgtMjAxOCAyMjozMDo0Ng==', '1537774502', '2011-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_message`
--

CREATE TABLE IF NOT EXISTS `tbl_card_message` (
`id` int(11) NOT NULL,
  `short_name` varchar(250) NOT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `when_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_card_message`
--

INSERT INTO `tbl_card_message` (`id`, `short_name`, `description`, `status`, `user_id`, `when_added`) VALUES
(1, 'Birthday: To a special person', 'Happy birthday to a marvellous and special person. May your life be filled with beauty and laughter, today and every day.', 'Active', 0, '2019-11-20 10:40:02'),
(2, 'Birthday: A special place in my heart', 'You have a special place in my life and my heart, and I hope your birthday is every bit as wonderful as you are.', 'Active', 0, '2019-11-20 10:39:45'),
(3, 'Birthday: Celebrate', 'May this be your best birthday ever and the start of a fabulous year ahead. Enjoy and celebrate!', 'Active', 0, '2019-11-20 10:39:45'),
(4, 'Birthday: Birthday wishes', 'May every pleasure in life come your way, today and every day. Have a fantastic birthday.', 'Active', 0, '2019-11-20 10:39:45'),
(5, 'Anniversary: Happiness always', 'May the love you found together live on and grow stronger year after year. Wishing you joy and happiness always.', 'Active', 0, '2019-11-20 10:39:45'),
(6, 'Anniversary: Happiness always (spouse)', 'The love we found together has grown stronger year after year. Happy anniversary and love always.', 'Active', 0, '2019-11-20 10:39:45'),
(7, 'Anniversary: Sharing and caring', 'The love, hopes and dreams you share are the ties that will bind you ever closer. Congratulations and best wishes on your \r\n\r\nanniversary.', 'Active', 0, '2019-11-20 10:39:45'),
(8, 'Anniversary: Sharing and caring (spouse)', 'The love, hopes and dreams we share are the ties that bind us ever closer. Happy anniversary to my partner, my \r\n\r\nlove.', 'Active', 0, '2019-11-20 10:39:45'),
(9, 'Love: A wonderful gift', 'Your love is the most wonderful gift I?ve ever received. Thank you for being you.', 'Active', 0, '2019-11-20 10:39:45'),
(10, 'Love: Now and forever', 'You bring joy and happiness to my life. I love you deeply, now and forever.', 'Active', 0, '2019-11-20 10:39:45'),
(11, 'Love: Brighter and more beautiful', 'The world is shinier and brighter with you in it, and my life is more beautiful with your love.', 'Active', 0, '2019-11-20 10:39:45'),
(12, 'Love: You fill my life', 'How did I ever live without you? You have filled my life with your presence, and I love you with my entire being.', 'Active', 0, '2019-11-20 10:39:45'),
(13, 'Love: A dream come true', 'You?re a dream come true, everything I?ve ever wished for. You will always be in my heart.', 'Active', 0, '2019-11-20 10:39:45'),
(14, 'Love: Always on my mind', 'My day is filled with thoughts of you. You are always on my mind and in my heart.', 'Active', 0, '2019-11-20 10:39:45'),
(15, 'Love: You are my joy', 'You fill my life with joy and warmth. I love you more than words can express.', 'Active', 0, '2019-11-20 10:39:45'),
(16, 'Love: Closer every day', 'Side by side, hand in glove, we grow closer every day. Thank you for the love you have brought into my life.', 'Active', 0, '2019-11-20 10:39:45'),
(17, 'Love: Love of my life', 'You are the love of my life and the sunshine in my world.', 'Active', 0, '2019-11-20 10:39:45'),
(18, 'Love: Everything seems new', 'I love the way you make me feel, the way everything in life seems new. I love YOU!', 'Active', 0, '2019-11-20 10:39:45'),
(19, 'Love: Deeper and stronger', 'My love for you grows deeper and stronger with every passing day. I thank God for bringing you into my life.', 'Active', 0, '2019-11-20 10:39:45'),
(20, 'Love: You are everything to me', 'The love in your eyes is a reflection of the feeling in my heart. You are everything to me.', 'Active', 0, '2019-11-20 10:39:45'),
(21, 'Funeral: Condolences (male deceased)', 'He will live on in our hearts and memories forever. Condolences on your loss.', 'Active', 0, '2019-11-20 10:39:45'),
(22, 'Funeral: Condolences (female deceased)', 'She will live on in our hearts and memories forever. Condolences on your loss.', 'Active', 0, '2019-11-20 10:39:45'),
(23, 'Funeral: God bless you', 'May God bless you in your sorrow and bring you comfort.', 'Active', 0, '2019-11-20 10:39:45'),
(24, 'Funeral: Fond memories', 'Wishing you peace and healing. May your fond memories help you through your sorrow.', 'Active', 0, '2019-11-20 10:39:45'),
(25, 'Mother: My mother, my friend', 'I celebrate your love and the special friendship I enjoy with you. Happy Mother?s Day.', 'Active', 0, '2019-11-20 10:39:45'),
(26, 'Mother: To the best mother', 'If I had been given the chance to choose, I would still have chosen you from among all the mothers on earth.', 'Active', 0, '2019-11-20 10:39:45'),
(27, 'Mother: You brighten my life', 'You make the world a better place and my life warmer and brighter with your love and caring. Happy Mother?s Day.', 'Active', 0, '2019-11-20 10:39:45'),
(28, 'Mother: A mother?s love', 'No love can equal a mother?s love. Thank you for always being there for me.', 'Active', 0, '2019-11-20 10:39:45'),
(29, 'New Baby: Babies are a blessing', 'Babies bring joy, promise and sunshine. Congratulations on your new arrival.', 'Active', 0, '2019-11-20 10:39:45'),
(30, 'New Baby: Cherish these moments', 'Blessings on you and your baby. Enjoy and cherish every memory as it?s made.', 'Active', 0, '2019-11-20 10:39:45'),
(31, 'New Baby: A gift from heaven', 'May your home and hearts be filled with dreams, hopes and happiness. Congratulations on your new baby.', 'Active', 0, '2019-11-20 10:39:45'),
(32, 'New Baby: The wonder of a new life', 'Savour the wonder and magic of your new baby. May God bless your family, now and always', 'Active', 1, '2019-11-20 11:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`id` int(11) NOT NULL,
  `category_slug` varchar(200) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `when_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_slug`, `category_name`, `description`, `status`, `user_id`, `when_added`) VALUES
(1, 'flowers-indonesia', 'Flowers', 'Flowers Content Coming Soon...!!!', 'Active', 1, '2019-11-14 08:22:32'),
(2, 'flower-types-indonesia', 'Flower Types', 'Flower Types Content Coming soon...!!!', 'Active', 1, '2019-11-14 08:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
`id` int(11) NOT NULL,
  `city_name` varchar(250) NOT NULL,
  `midnight_delivery` enum('Yes','No') NOT NULL DEFAULT 'No',
  `delivery_frequency` enum('same_day','next_day','day_after') NOT NULL DEFAULT 'same_day',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `city_name`, `midnight_delivery`, `delivery_frequency`, `status`) VALUES
(1, 'Bali', 'Yes', 'same_day', 'Active'),
(2, 'Balikpapan', 'No', 'same_day', 'Active'),
(3, 'Banda Aceh', 'No', 'same_day', 'Active'),
(4, 'Bandar Lampung', 'No', 'same_day', 'Active'),
(5, 'Bandung', 'No', 'same_day', 'Active'),
(6, 'Bangka', 'No', 'same_day', 'Active'),
(7, 'Banjarbaru', 'No', 'same_day', 'Active'),
(8, 'Banjarmasin', 'No', 'same_day', 'Active'),
(9, 'Batam', 'No', 'same_day', 'Active'),
(10, 'Bekasi', 'No', 'same_day', 'Active'),
(11, 'Bintan', 'No', 'same_day', 'Active'),
(12, 'Blitar', 'No', 'same_day', 'Active'),
(13, 'Blora', 'No', 'same_day', 'Active'),
(14, 'Bogor', 'No', 'same_day', 'Active'),
(15, 'Bojonegoro', 'No', 'same_day', 'Active'),
(16, 'Cimahi', 'No', 'same_day', 'Active'),
(18, 'Cirebon', 'No', 'same_day', 'Active'),
(19, 'Depok', 'No', 'same_day', 'Active'),
(20, 'Jakarta', 'No', 'same_day', 'Active'),
(21, 'Kediri', 'No', 'same_day', 'Active'),
(22, 'Lombok', 'No', 'same_day', 'Active'),
(23, 'Madiun', 'No', 'same_day', 'Active'),
(24, 'Makassar', 'No', 'same_day', 'Active'),
(25, 'Malang', 'No', 'same_day', 'Active'),
(26, 'Manado', 'No', 'same_day', 'Active'),
(27, 'Medan', 'No', 'same_day', 'Active'),
(28, 'Padang', 'No', 'same_day', 'Active'),
(29, 'Palembang', 'No', 'same_day', 'Active'),
(30, 'Pekanbaru', 'No', 'same_day', 'Active'),
(31, 'Pematang Siantar', 'No', 'same_day', 'Active'),
(32, 'Pontianak', 'No', 'same_day', 'Active'),
(33, 'Purwokerto', 'No', 'same_day', 'Active'),
(34, 'Salatiga', 'No', 'same_day', 'Active'),
(35, 'Samarinda', 'No', 'same_day', 'Active'),
(36, 'Semarang', 'No', 'same_day', 'Active'),
(37, 'Sukabumi', 'No', 'same_day', 'Active'),
(38, 'Surabaya', 'No', 'same_day', 'Active'),
(39, 'Surakarta', 'No', 'same_day', 'Active'),
(40, 'Tangerang', 'No', 'same_day', 'Active'),
(41, 'Tasikmalaya', 'No', 'same_day', 'Active'),
(42, 'Tegal', 'No', 'same_day', 'Active'),
(43, 'Yogyakarta', 'No', 'same_day', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE IF NOT EXISTS `tbl_cms` (
`id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `heading` varchar(250) NOT NULL,
  `description` text NOT NULL COMMENT 'For English Description',
  `arabic_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `is_delete` enum('0','1') DEFAULT '0',
  `post_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `alias`, `heading`, `description`, `arabic_description`, `image`, `status`, `is_delete`, `post_date`) VALUES
(1, 'about-us', 'About Us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-22 15:51:40'),
(2, 'the-founder', 'the-founder', '<div class="row">\r\n<div class="col-md-4 founder-left"><img alt="The Founder" class="fr-fic fr-dii" src="http://econstrademosite.com/the-fashion-mentor/webadmin/front/images/the-founder.jpg" style="width: 960px;" /></div>\r\n\r\n<div class="col-md-8 founder-right">\r\n<div class="about-txt">\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p><span class="style-italic">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '<div class="row">\r\n<div class="col-md-4 founder-left"><img alt="The Founder" class="fr-fic fr-dii" src="http://econstrademosite.com/the-fashion-mentor/webadmin/front/images/the-founder.jpg" style="width: 960px;" /></div>\r\n\r\n<div class="col-md-8 founder-right">أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p>\r\n</div>\r\n</div>\r\n', '', 'Active', '0', '2019-10-31 12:30:24'),
(3, 'contact-us', 'Contact us', '<p>Contact us Coming Soon.</p>', '<p>dsdssd</p>', '', 'Active', '0', '2019-10-22 09:32:12'),
(4, 'home', 'Coming Soon!!!!', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable.</p>\r\n', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum. هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من تغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Active', '0', '2019-10-31 12:24:25'),
(5, 'courses', 'courses', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-22 15:53:48'),
(6, 'workshops', 'workshops', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:00:03'),
(7, 'supplier-directory', 'supplier-directory', '<p><strong>Lorem Ipsum&nbsp;</strong>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard <span style="color: rgb(0, 168, 133);">dummy text ever since the 1500s</span>, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong><span style="color: rgb(250, 197, 28);">Contrary&nbsp;</span></strong>to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:06:55'),
(8, 'fashion-aptitude-test', 'fashion-aptitude-test', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:08:46');
INSERT INTO `tbl_cms` (`id`, `alias`, `heading`, `description`, `arabic_description`, `image`, `status`, `is_delete`, `post_date`) VALUES
(9, 'pay-as-you-go-consultations', 'pay-as-you-go-consultations', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:10:45'),
(10, 'coaching', 'coaching', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-23 07:13:41'),
(11, 'garment-production-unit', 'garment-production-unit', '<p>Initial editor content.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p><strong>Lorem Ipsum is simply dummy text of the printing and</strong> typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في هذه الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من نوعه وتدافعت عليه لصنع كتاب نموذج للعينات. لقد نجا ليس فقط خمسة قرون ، ولكن أيضا قفزة في التنضيد الإلكتروني ، تبقى دون تغيير أساسي. تم الترويج لها في الستينيات من القرن الماضي من خلال إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخراً مع برنامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.</p><p><br></p><p>إنها حقيقة ثابتة منذ فترة طويلة وهي أن القارئ سيشتت انتباهه إلى المحتوى المقروء للصفحة عند النظر في تصميمه. الهدف من استخدام Lorem Ipsum هو أنه يحتوي على توزيع طبيعي أكثر أو أقل من الحروف ، بدلاً من استخدام &quot;المحتوى هنا ، المحتوى هنا&quot; ، مما يجعله يبدو مقروءًا باللغة الإنجليزية. تستخدم الآن العديد من حزم نشر سطح المكتب ومحرري صفحات الويب Lorem Ipsum كنص نموذجهم الافتراضي ، وسيكشف البحث عن &quot;lorem ipsum&quot; عن العديد من المواقع التي لا تزال في بدايتها. تطورت الإصدارات المختلفة على مر السنين ، وأحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه ذلك).</p><p><br></p><p>هناك العديد من أشكال مقاطع Lorem Ipsum المتاحة ، لكن الغالبية عانوا من التغيير في شكل ما ، عن طريق الفكاهة المحقونة ، أو الكلمات العشوائية التي لا تبدو حتى معقولة بعض الشيء. إذا كنت ستستخدم مقطعًا من Lorem Ipsum ، فعليك أن تتأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعلها أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يضم أكثر من 200 كلمة لاتينية ، بالإضافة إلى حفنة من هياكل الجملة النموذجية ، لإنشاء Lorem Ipsum الذي يبدو معقولًا. لذلك فإن أبجد أبجد هوز هو دائما خالية من التكرار ، والفكاهة عن طريق الحقن ، أو الكلمات غير المميزة الخ.</p><p><br></p><p>خلافًا للاعتقاد السائد ، فإن Lorem Ipsum ليس مجرد نص عشوائي. لها جذور في قطعة من الأدب اللاتيني الكلاسيكي من 45 قبل الميلاد ، مما يجعلها أكثر من 2000 سنة. بحث ريتشارد مكلينتوك ، وهو أستاذ لاتيني في كلية هامبدن سيدني في فرجينيا ، عن واحدة من أكثر الكلمات اللاتينية غموضًا ، كونسيتيتور ، من ممر لوريم إبسوم ، وتمر عبر الاستشهادات للكلمة في الأدب الكلاسيكي ، واكتشف المصدر الذي لا شك فيه. يأتي Lorem Ipsum من القسمين 1.10.32 و 1.10.33 من كتاب &quot;Finibus Bonorum et Malorum&quot; (قصور الخير والشر) للكاتب شيشرون ، الذي كتب عام 45 قبل الميلاد. هذا الكتاب هو أطروحة عن نظرية الأخلاق ، وشعبية للغاية خلال عصر النهضة. يأتي السطر الأول من Lorem Ipsum ، &quot;Lorem ipsum dolor sit amet ..&quot; ، من سطر في القسم 1.10.32.</p>', '', 'Active', '0', '2019-10-31 08:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE IF NOT EXISTS `tbl_coupon` (
`id` int(11) NOT NULL,
  `coupon_code` varchar(250) NOT NULL,
  `coupon_type` enum('percentage','flat') NOT NULL DEFAULT 'percentage',
  `coupon_value` decimal(15,2) NOT NULL,
  `decription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `when_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `decription`, `user_id`, `status`, `when_added`) VALUES
(1, 'XXX', 'percentage', '10.00', 'Coming soon..!!!', 1, 'Active', '2019-11-19 14:13:06'),
(4, 'C1', 'flat', '20.00', 'ASADSAD', 1, 'Active', '2019-11-19 14:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery_charges`
--

CREATE TABLE IF NOT EXISTS `tbl_delivery_charges` (
`id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `from_time` varchar(100) NOT NULL,
  `to_time` varchar(100) NOT NULL,
  `delivert_charge` double(15,2) NOT NULL,
  `delivery_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_delivery_charges`
--

INSERT INTO `tbl_delivery_charges` (`id`, `city_id`, `from_time`, `to_time`, `delivert_charge`, `delivery_status`) VALUES
(1, 1, '09:00', '21:00', 12.00, 'Active'),
(2, 1, '12:05', '10:00', 10.00, 'Active'),
(5, 2, '09:00', '21:00', 200.00, 'Active'),
(6, 1, '09:00', '21:00', 10.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE IF NOT EXISTS `tbl_gallery` (
`id` int(11) NOT NULL,
  `name_english` varchar(200) NOT NULL,
  `name_arabic` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `name_english`, `name_arabic`, `image`, `status`, `added_date`) VALUES
(1, 'Fashion Album', 'البوم الموضة', '1_5.jpg', 'Active', '2019-10-24 08:14:54'),
(2, 'Fashion Album', 'البوم الموضة', '2_img-01.jpg', 'Active', '2019-10-24 11:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hike_price`
--

CREATE TABLE IF NOT EXISTS `tbl_hike_price` (
`id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `hike_value` int(11) NOT NULL,
  `hike_varient` enum('High','Low') NOT NULL DEFAULT 'High',
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `is_delete` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1= Not Deleted, 0= Deleted'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hike_price`
--

INSERT INTO `tbl_hike_price` (`id`, `title`, `hike_value`, `hike_varient`, `start_date`, `end_date`, `status`, `is_delete`) VALUES
(1, 'Valentine day', 15, 'High', '2019-11-20 00:00:00', '2019-11-20 23:59:59', 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
`id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_price` decimal(15,2) NOT NULL,
  `secial_price` decimal(15,2) DEFAULT '0.00',
  `price_percentage` int(11) DEFAULT '0',
  `price_percentage_variant` enum('High','Low') DEFAULT NULL,
  `item_code` varchar(250) NOT NULL,
  `packs_slot` int(11) DEFAULT '1',
  `item_image` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `item_slug` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `double_the_quantity_price` double(15,2) DEFAULT '0.00',
  `double_qty_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `shown_short_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `upgrade_option_price` double(15,2) DEFAULT '0.00',
  `upgrade_option_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_tilte` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sequence_order` int(11) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active' COMMENT '1=Active,0=Inactive',
  `is_delete` int(11) NOT NULL DEFAULT '1' COMMENT '1=Not Deleted,0=Deleted',
  `add_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`id`, `category_id`, `sub_cat_id`, `item_name`, `item_price`, `secial_price`, `price_percentage`, `price_percentage_variant`, `item_code`, `packs_slot`, `item_image`, `description`, `item_slug`, `stock`, `double_the_quantity_price`, `double_qty_description`, `shown_short_description`, `upgrade_option_price`, `upgrade_option_description`, `meta_tilte`, `meta_description`, `sequence_order`, `added_by`, `status`, `is_delete`, `add_timestamp`) VALUES
(1, 1, 1, 'Simple Beauty', '16.70', '0.00', 0, '', '787987', 1, '1_1505197156_432.jpg', '6 Pcs Red Rose', 'simple-beauty-1', 8, 30.00, '12 Pcs Red Rose', 'asdasd', 10.00, 'aaaaaaaaaa', 'Meta Title', 'Meta Description', 3, 1, 'Active', 1, '2019-11-21 15:39:28'),
(2, 2, 4, 'Viberant Love', '17.50', '0.00', 0, '', '145519', 1, '2_1508942002_437.jpg', 'Vibrant Love Coming Soon..!!', 'viberant-love-2', 5, 0.00, '', '', 0.00, '', NULL, NULL, 1, 1, 'Active', 1, '2019-11-18 18:46:02'),
(3, 1, 1, 'Perfect Love', '26.60', '0.00', 0, NULL, '141622', 1, '3_large_ph_30059.jpg', 'A splendid arrangement of 1 dozen mixed colored roses. Blooming gift for your loved one.', 'perfect-love-3', 10, 46.55, 'Bunch of 24 Mixed Roses', 'Bunch of 12 Mixed Roses', 8.40, '', 'coming Soon.!!', 'Coming soon...1', 1, 1, 'Active', 1, '2019-11-21 15:39:38'),
(4, 1, 1, 'Only Love', '15.23', '0.00', 0, NULL, '145824', 1, '4_large_ph_30123.jpg', 'Sometimes love is simple. With this gift, it can be elegant and beautiful as well. Send this 1 stem Ecuadorian roses to the one who stands out in your life. This single red rose is arranged with eucalyptus, fern, and ophiopogon grass.', 'only-love-4', 10, 0.00, '', '', 0.00, '', 'Coming Soon...!!', 'Coming Soon...!!', 2, 1, 'Active', 1, '2019-11-21 15:39:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
`id` bigint(20) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `txn_id` varchar(250) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `oder_no` varchar(250) NOT NULL,
  `invoice_no` varchar(250) NOT NULL,
  `delivery_date` date NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `delivery_charged_id` int(11) DEFAULT NULL COMMENT 'tbl_delivery_charges',
  `shipping_id` bigint(20) DEFAULT NULL COMMENT 'tbl_shipping,Receiver Detail',
  `sender_id` int(11) DEFAULT NULL,
  `payment_mode` enum('cod','online') NOT NULL DEFAULT 'online',
  `coupon` varchar(250) DEFAULT NULL,
  `discount_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(15,2) NOT NULL,
  `order_status` enum('pending','confirm','canceled','delivered','payment_due') NOT NULL DEFAULT 'payment_due',
  `payment_method_name` varchar(250) DEFAULT NULL,
  `payment_status` enum('received','not_received') DEFAULT 'not_received',
  `order_date_time` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `payment_id`, `txn_id`, `currency_code`, `oder_no`, `invoice_no`, `delivery_date`, `city_id`, `delivery_charged_id`, `shipping_id`, `sender_id`, `payment_mode`, `coupon`, `discount_amount`, `order_amount`, `order_status`, `payment_method_name`, `payment_status`, `order_date_time`) VALUES
(1, NULL, NULL, NULL, 'FR-8325208052019182117', 'FR-000004', '2019-11-28', 1, 2, 1, 1, 'online', NULL, '0.00', '26.70', 'pending', 'paypal', 'received', '2019-11-18 10:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_order_detail` (
`id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_cat_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `item_name` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `item_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total_amount` decimal(20,2) NOT NULL,
  `qty_type` enum('single','double') NOT NULL DEFAULT 'single' COMMENT 'when admin forward the mail of vendor',
  `qty_type_description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci COMMENT 'when admin forward the mail of vendor',
  `glass_vase` enum('with','without') NOT NULL DEFAULT 'without' COMMENT 'when admin forward the mail of vendor',
  `order_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `category_id`, `sub_cat_id`, `item_id`, `city_id`, `item_name`, `quantity`, `item_price`, `sub_total_amount`, `qty_type`, `qty_type_description`, `glass_vase`, `order_date_time`) VALUES
(1, 1, 1, 1, 1, 0, 'Simple Beauty', 1, '16.70', '16.70', 'single', '6 Pcs Red Rose', 'without', '2019-11-21 14:53:57'),
(2, 1, NULL, NULL, NULL, 1, 'delivery charge', 1, '10.00', '10.00', 'single', '', 'without', '2019-11-21 14:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sender`
--

CREATE TABLE IF NOT EXISTS `tbl_sender` (
`id` int(11) NOT NULL,
  `sender_name` varchar(250) DEFAULT NULL,
  `sender_address` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `state_name` varchar(250) DEFAULT NULL,
  `city_name` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `gstin` varchar(250) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `email_id` varchar(250) DEFAULT NULL,
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sender`
--

INSERT INTO `tbl_sender` (`id`, `sender_name`, `sender_address`, `state_name`, `city_name`, `country`, `gstin`, `phone_no`, `email_id`, `added_date`) VALUES
(1, 'Brijesh Tiwari', 'Asansol', 'West Bengal', 'Asansol', 'Indonesia', '343434343', '9851438800', 'brijesh@gmail.com', '2019-11-19 15:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE IF NOT EXISTS `tbl_shipping` (
`id` bigint(20) NOT NULL,
  `receiver_name` varchar(250) NOT NULL,
  `receiver_address` text,
  `receiver_mobile` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `zip_code` varchar(250) DEFAULT NULL,
  `country_name` varchar(200) DEFAULT NULL,
  `state_name` varchar(250) DEFAULT NULL,
  `city_name` varchar(250) DEFAULT NULL,
  `location_type` enum('Office','Home','Hospital','School','Other') DEFAULT NULL,
  `message_on_card` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `signature` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id`, `receiver_name`, `receiver_address`, `receiver_mobile`, `email`, `zip_code`, `country_name`, `state_name`, `city_name`, `location_type`, `message_on_card`, `signature`) VALUES
(1, 'Vishal Gupta', 'Kolkata Sector 5', '7501553047', 'vishalkenda@gmail.com', NULL, 'Bali', 'Bali', 'Bali', 'Office', 'Happy Birth day Bro.', 'Vishal Gupta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_categoery`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_categoery` (
`id` bigint(20) NOT NULL,
  `cat_id` bigint(20) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `sub_cat_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_delete` enum('0','1') DEFAULT '1',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_by` int(11) NOT NULL,
  `add_timestamp` datetime NOT NULL,
  `when_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_categoery`
--

INSERT INTO `tbl_sub_categoery` (`id`, `cat_id`, `slug`, `sub_cat_name`, `description`, `is_delete`, `status`, `added_by`, `add_timestamp`, `when_update`) VALUES
(1, 1, 'rose-indonesia', 'Rose', 'Rose Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:41:29', '2019-11-14 12:55:04'),
(2, 1, 'lilies-indonesia', 'lilies', 'lilies Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:45:14', '2019-11-14 12:55:15'),
(3, 1, 'gerberas-indonesia', 'Gerberas', 'Gerberas Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:55:29', '2019-11-14 12:55:25'),
(4, 2, 'hand-bouquet-indonesia', 'Hand Bouquet', 'Hand Bouquet  Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:57:35', '2019-11-14 12:55:30'),
(5, 2, 'flowers-in-glass-vase-indonesia', 'Flowers In Glass Vase', 'Flowers In Glass Vase Content Coming soon...!!!', '1', 'Active', 1, '2019-11-13 09:58:36', '2019-11-14 12:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE IF NOT EXISTS `tbl_testimonial` (
`id` int(11) NOT NULL,
  `name_english` varchar(200) DEFAULT NULL,
  `name_arabic` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `arabic_description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name_english`, `name_arabic`, `image`, `description`, `arabic_description`, `status`, `added_date`) VALUES
(9, 'John Brown', 'جون براون', '9_3.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard.</p>', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان أبجد هوز معيار الصناعة.</p>', 'Active', '2019-10-24 10:32:27'),
(11, 'Vishal gupta', 'فيشال غوبتا', '11_2.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard.</p>\r\n', '<p>أبجد هوز هو مجرد دمية النص لصناعة الطباعة والتنضيد. كان أبجد هوز معيار الصناعة.</p>\r\n', 'Active', '2019-11-01 10:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(11) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) NOT NULL DEFAULT 'others',
  `city` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `zip_code` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `contact_no` varchar(250) DEFAULT NULL,
  `alternative_contact_no` varchar(250) DEFAULT NULL,
  `alternative_email_id` varchar(250) DEFAULT NULL,
  `vat_number` varchar(250) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `when_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email_id`, `password`, `company_name`, `full_name`, `address`, `city`, `state`, `zip_code`, `country`, `contact_no`, `alternative_contact_no`, `alternative_email_id`, `vat_number`, `status`, `when_added`) VALUES
(1, 'vishal143.niit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Vishal Gupta', 'others', NULL, NULL, NULL, NULL, '7501553047', NULL, NULL, NULL, 'Active', '2019-11-20 09:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE IF NOT EXISTS `user_permission` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `is_view` int(11) NOT NULL,
  `is_add` int(11) NOT NULL,
  `is_edit` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2521 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`id`, `user_id`, `menu_id`, `is_view`, `is_add`, `is_edit`, `is_delete`, `added_by`, `post_date`) VALUES
(2147, 4, 1, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2148, 4, 2, 0, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2149, 4, 46, 0, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2150, 4, 3, 1, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2151, 4, 4, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2152, 4, 5, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2153, 4, 14, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2154, 4, 15, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2155, 4, 16, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2156, 4, 6, 1, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2157, 4, 7, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2158, 4, 17, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2159, 4, 18, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2160, 4, 8, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2161, 4, 9, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2162, 4, 10, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2163, 4, 23, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2164, 4, 24, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2165, 4, 25, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2166, 4, 26, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2167, 4, 27, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2168, 4, 45, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2169, 4, 28, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2170, 4, 29, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2171, 4, 30, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2172, 4, 31, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2173, 4, 32, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2174, 4, 53, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2175, 4, 48, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2176, 4, 33, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2177, 4, 34, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2178, 4, 35, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2179, 4, 36, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2180, 4, 11, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2181, 4, 37, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2182, 4, 38, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2183, 4, 43, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2184, 4, 39, 1, 1, 1, 1, 1, '2017-04-06 10:21:20'),
(2185, 4, 40, 0, 0, 1, 0, 1, '2017-04-06 10:21:20'),
(2186, 4, 49, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2187, 4, 50, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2188, 4, 51, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2189, 4, 52, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2190, 4, 12, 0, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2191, 4, 41, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2192, 4, 42, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2193, 4, 54, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2194, 4, 47, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2195, 4, 13, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2196, 4, 44, 1, 0, 0, 0, 1, '2017-04-06 10:21:20'),
(2352, 5, 1, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2353, 5, 2, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2354, 5, 46, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2355, 5, 3, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2356, 5, 55, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2357, 5, 56, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2358, 5, 4, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2359, 5, 5, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2360, 5, 14, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2361, 5, 15, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2362, 5, 16, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2363, 5, 6, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2364, 5, 7, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2365, 5, 17, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2366, 5, 18, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2367, 5, 8, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2368, 5, 9, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2369, 5, 10, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2370, 5, 23, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2371, 5, 24, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2372, 5, 25, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2373, 5, 26, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2374, 5, 27, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2375, 5, 45, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2376, 5, 28, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2377, 5, 29, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2378, 5, 30, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2379, 5, 31, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2380, 5, 32, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2381, 5, 53, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2382, 5, 48, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2383, 5, 33, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2384, 5, 34, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2385, 5, 35, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2386, 5, 36, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2387, 5, 11, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2388, 5, 37, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2389, 5, 38, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2390, 5, 43, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2391, 5, 39, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2392, 5, 40, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2393, 5, 49, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2394, 5, 50, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2395, 5, 51, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2396, 5, 52, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2397, 5, 12, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2398, 5, 41, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2399, 5, 42, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2400, 5, 54, 0, 0, 0, 0, 1, '2017-04-28 09:59:04'),
(2401, 5, 47, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2402, 5, 13, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2403, 5, 44, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2404, 5, 57, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2405, 5, 58, 0, 0, 0, 0, 1, '2017-04-28 09:59:05'),
(2406, 5, 59, 1, 1, 1, 1, 1, '2017-04-28 09:59:05'),
(2407, 5, 60, 0, 1, 0, 0, 1, '2017-04-28 09:59:05'),
(2464, 1, 1, 1, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2465, 1, 2, 0, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2466, 1, 46, 0, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2467, 1, 3, 0, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2468, 1, 55, 1, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2469, 1, 56, 1, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2470, 1, 4, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2471, 1, 5, 0, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2472, 1, 14, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2473, 1, 15, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2474, 1, 16, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2475, 1, 6, 1, 0, 1, 0, 1, '2017-05-16 08:48:57'),
(2476, 1, 7, 0, 0, 0, 0, 1, '2017-05-16 08:48:57'),
(2477, 1, 17, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2478, 1, 18, 1, 1, 1, 1, 1, '2017-05-16 08:48:57'),
(2479, 1, 8, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2480, 1, 9, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2481, 1, 10, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2482, 1, 23, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2483, 1, 24, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2484, 1, 25, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2485, 1, 26, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2486, 1, 27, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2487, 1, 45, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2488, 1, 28, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2489, 1, 29, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2490, 1, 30, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2491, 1, 31, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2492, 1, 32, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2493, 1, 53, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2494, 1, 48, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2495, 1, 33, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2496, 1, 34, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2497, 1, 35, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2498, 1, 36, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2499, 1, 11, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2500, 1, 37, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2501, 1, 38, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2502, 1, 43, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2503, 1, 39, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2504, 1, 40, 0, 0, 1, 0, 1, '2017-05-16 08:48:58'),
(2505, 1, 49, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2506, 1, 50, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2507, 1, 51, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2508, 1, 52, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2509, 1, 12, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2510, 1, 41, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2511, 1, 42, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2512, 1, 54, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2513, 1, 47, 1, 0, 1, 0, 1, '2017-05-16 08:48:58'),
(2514, 1, 13, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2515, 1, 44, 1, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2516, 1, 57, 1, 0, 1, 0, 1, '2017-05-16 08:48:58'),
(2517, 1, 58, 0, 0, 0, 0, 1, '2017-05-16 08:48:58'),
(2518, 1, 59, 1, 1, 1, 1, 1, '2017-05-16 08:48:58'),
(2519, 1, 60, 0, 1, 0, 0, 1, '2017-05-16 08:48:58'),
(2520, 1, 61, 0, 1, 0, 0, 1, '2017-05-16 08:48:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `global_config`
--
ALTER TABLE `global_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_card_message`
--
ALTER TABLE `tbl_card_message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivery_charges`
--
ALTER TABLE `tbl_delivery_charges`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hike_price`
--
ALTER TABLE `tbl_hike_price`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_categoery`
--
ALTER TABLE `tbl_sub_categoery`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `global_config`
--
ALTER TABLE `global_config`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_card_message`
--
ALTER TABLE `tbl_card_message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_delivery_charges`
--
ALTER TABLE `tbl_delivery_charges`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_hike_price`
--
ALTER TABLE `tbl_hike_price`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sender`
--
ALTER TABLE `tbl_sender`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sub_categoery`
--
ALTER TABLE `tbl_sub_categoery`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2521;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
