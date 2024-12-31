-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 03:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dizardxy_digi`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `primary_image` varchar(255) DEFAULT NULL,
  `contents` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `heading`, `slug`, `primary_image`, `contents`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top 10 Benefits of Digital Marketing for Businesses & Students', 'top-10-benefits-of-digital-marketing-for-businesses-students', 'front/blogs/images/01JENRF5RNF10GRK9551QHE6HR.png', '<h2>Plan ahead with Zomato’s Order Scheduling feature: Convenience at your fingertips</h2><p>At Zomato, our endeavor is to make the food ordering experience seamless and hassle-free. While we strive to consistently have your food delivered as quickly as possible, we understand that sometimes, you may want to plan your order in advance. Whether it’s for a special occasion, a group lunch at the office, or your daily caffeine fix, planning when your food arrives just got easier.</p><p>We’re excited to introduce Order Scheduling – a feature that gives you full control over when your food is delivered. You can now schedule deliveries from 2 hours to 2 days in advance. This feature is now available at 35,000+ restaurants across 30 cities – Delhi, Bengaluru, Mumbai, Pune, Raipur, Ahmedabad, and others.</p><h2>So how does it work?</h2><p>With Order Scheduling, you can plan your meals to arrive exactly when you need them. Here’s how:</p><ol><li>Schedule your order at your preferred time whether it’s a few hours or a few days later.</li><li>If your preferred time slot is full, you will be prompted to choose an alternative time slot during checkout</li><li>Your food will be freshly prepared and delivered with the same quality and care.</li><li>Plans changed? No problem – you can cancel your order up to three hours before the scheduled delivery time.</li></ol><p><br></p><h2>Benefits for restaurant partners: incremental orders</h2><p>This feature isn’t just a win for customers; it also opens up new opportunities for restaurants. Key benefits for restaurant partners include:</p><ul><li><strong>Maximize capacity:</strong> Advance orders help restaurants fill gaps during slower periods, which could translate into a steady stream of additional orders.</li><li><strong>No extra training required:</strong> Scheduling seamlessly integrates with the restaurant’s current operations, meaning no new processes or tools need to be learned.</li></ul><h2>Built-in safeguards: Ensuring a smooth experience for all</h2><p>We’ve also implemented several checks and balances to make sure everything runs smoothly.</p><ul><li>Curated selection of restaurant that have consistently adhered to kitchen preparation time, and have high availability</li><li>Proactive notifications for restaurants ahead of scheduled orders, ensuring they have ample time to prepare and deliver on time</li><li>Restaurants can control which items/categories are available for scheduled orders. This helps avoid any unpleasant surprises when certain dishes or ingredients run out</li></ul><p>Hear from our customers on their experience:</p><ul><li><em>“The cake I ordered for my friend’s surprise party arrived right on time and was just perfect!”</em></li><li><em>“Scheduling our team lunch was so easy – it saved us from the usual last-minute rush.”</em></li><li><em>“Having my coffee break perfectly timed to my desk made my day!”</em></li></ul><p>A big shout out to the team that made this possible: Aditya Singh, Akshat Goel, Amber Sharma, Archit Agarwal, Avinash Ruchandani, Avneek Kaur, Ayush Kumar, Bhavya Rustgi, Kashyap Panchani, Kaustubh Kumar Singh, Manuj Grover, Mayank Dhillon, Pratik Singh, Puli Karthik Reddy, Sadhna Nayak, Samarth Gupta, Sanjay Kumar, Sauduzzaman, Sudhanshu Tiwari, Sumegha Khilnani, Sumit Taneja, Sunny Kumar, Vivek Arora, Vikram Kumar, Yash Maheshwari, Yameni Dhankar.</p><p><br><br></p>', 1, '2024-12-09 07:36:50', '2024-12-09 08:33:04'),
(2, 'Plan ahead with Zomato’s Order Scheduling feature: Convenience at your fingertips', 'plan-ahead-with-zomatos-order-scheduling-feature-convenience-at-your-fingertips', 'front/blogs/images/01JENRFXQ99PZJ46ESY9Q6SF7J.png', '<h2>Plan ahead with Zomato’s Order Scheduling feature: Convenience at your fingertips</h2><p>At Zomato, our endeavor is to make the food ordering experience seamless and hassle-free. While we strive to consistently have your food delivered as quickly as possible, we understand that sometimes, you may want to plan your order in advance. Whether it’s for a special occasion, a group lunch at the office, or your daily caffeine fix, planning when your food arrives just got easier.</p><p>We’re excited to introduce Order Scheduling – a feature that gives you full control over when your food is delivered. You can now schedule deliveries from 2 hours to 2 days in advance. This feature is now available at 35,000+ restaurants across 30 cities – Delhi, Bengaluru, Mumbai, Pune, Raipur, Ahmedabad, and others.</p><h2>So how does it work?</h2><p>With Order Scheduling, you can plan your meals to arrive exactly when you need them. Here’s how:</p><ol><li>Schedule your order at your preferred time whether it’s a few hours or a few days later.</li><li>If your preferred time slot is full, you will be prompted to choose an alternative time slot during checkout</li><li>Your food will be freshly prepared and delivered with the same quality and care.</li><li>Plans changed? No problem – you can cancel your order up to three hours before the scheduled delivery time.</li></ol><p><br></p><h2>Benefits for restaurant partners: incremental orders</h2><p>This feature isn’t just a win for customers; it also opens up new opportunities for restaurants. Key benefits for restaurant partners include:</p><ul><li><strong>Maximize capacity:</strong> Advance orders help restaurants fill gaps during slower periods, which could translate into a steady stream of additional orders.</li><li><strong>No extra training required:</strong> Scheduling seamlessly integrates with the restaurant’s current operations, meaning no new processes or tools need to be learned.</li></ul><h2>Built-in safeguards: Ensuring a smooth experience for all</h2><p>We’ve also implemented several checks and balances to make sure everything runs smoothly.</p><ul><li>Curated selection of restaurant that have consistently adhered to kitchen preparation time, and have high availability</li><li>Proactive notifications for restaurants ahead of scheduled orders, ensuring they have ample time to prepare and deliver on time</li><li>Restaurants can control which items/categories are available for scheduled orders. This helps avoid any unpleasant surprises when certain dishes or ingredients run out</li></ul><p>Hear from our customers on their experience:</p><ul><li><em>“The cake I ordered for my friend’s surprise party arrived right on time and was just perfect!”</em></li><li><em>“Scheduling our team lunch was so easy – it saved us from the usual last-minute rush.”</em></li><li><em>“Having my coffee break perfectly timed to my desk made my day!”</em></li></ul><p>A big shout out to the team that made this possible: Aditya Singh, Akshat Goel, Amber Sharma, Archit Agarwal, Avinash Ruchandani, Avneek Kaur, Ayush Kumar, Bhavya Rustgi, Kashyap Panchani, Kaustubh Kumar Singh, Manuj Grover, Mayank Dhillon, Pratik Singh, Puli Karthik Reddy, Sadhna Nayak, Samarth Gupta, Sanjay Kumar, Sauduzzaman, Sudhanshu Tiwari, Sumegha Khilnani, Sumit Taneja, Sunny Kumar, Vivek Arora, Vikram Kumar, Yash Maheshwari, Yameni Dhankar.</p><p><br></p><p><br></p>', 1, '2024-12-09 07:37:14', '2024-12-09 08:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1733749685),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1733749685;', 1733749685),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1731848440),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1731848440;', 1731848440);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_counsellings`
--

CREATE TABLE `career_counsellings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `selected_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `career_counsellings`
--

INSERT INTO `career_counsellings` (`id`, `first_name`, `last_name`, `email`, `mobile`, `city`, `selected_time`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mattt', 'abhi', 'admin@admin.com', '9249279847', NULL, '2024-12-13T20:20', '33333333', '2024-12-06 09:20:33', '2024-12-06 09:20:33'),
(2, 'Mattt', 'abhi', 'admin@admin.com', '8888888888', '31ghjg', '2024-12-18T20:22', '3244', '2024-12-06 09:22:10', '2024-12-06 09:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `students_trained` int(11) DEFAULT NULL,
  `students_placed` int(11) DEFAULT NULL,
  `expert_mentors` int(11) DEFAULT NULL,
  `years_in_industry` int(11) DEFAULT NULL,
  `cta_link_1` varchar(255) DEFAULT NULL,
  `cta_name_1` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading1` text DEFAULT NULL,
  `paragraph1` text DEFAULT NULL,
  `cta_link_2` varchar(255) DEFAULT NULL,
  `cta_name_2` varchar(255) DEFAULT NULL,
  `cta_link_3` varchar(255) DEFAULT NULL,
  `cta_name_3` varchar(255) DEFAULT NULL,
  `sub_heading2` text DEFAULT NULL,
  `sub_heading3` text DEFAULT NULL,
  `paragraph2` text DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `cta_link_4` varchar(255) DEFAULT NULL,
  `cta_name_4` varchar(255) DEFAULT NULL,
  `sub_heading4` text DEFAULT NULL,
  `paragraph3` text DEFAULT NULL,
  `sub_heading5` text DEFAULT NULL,
  `paragraph4` text DEFAULT NULL,
  `repeater1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`repeater1`)),
  `repeater2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`repeater2`)),
  `cta_link_5` varchar(255) DEFAULT NULL,
  `cta_name_5` varchar(255) DEFAULT NULL,
  `cta_link_6` varchar(255) DEFAULT NULL,
  `cta_name_6` varchar(255) DEFAULT NULL,
  `faq` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`faq`)),
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `name`, `students_trained`, `students_placed`, `expert_mentors`, `years_in_industry`, `cta_link_1`, `cta_name_1`, `heading`, `sub_heading1`, `paragraph1`, `cta_link_2`, `cta_name_2`, `cta_link_3`, `cta_name_3`, `sub_heading2`, `sub_heading3`, `paragraph2`, `image1`, `cta_link_4`, `cta_name_4`, `sub_heading4`, `paragraph3`, `sub_heading5`, `paragraph4`, `repeater1`, `repeater2`, `cta_link_5`, `cta_name_5`, `cta_link_6`, `cta_name_6`, `faq`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Digital Marketing Institute In Shivalik, South Delhi ', 80000, 80, 200, 8, '#', 'Get 100% Job Guarantee', 'Digital Marketing Institute In Shivalik, South Delhi', '40+ Centers', 'Our digital marketing course in South Delhi, Malviya Nagar is specifically designed to cater to the needs of South Delhi residents. This course offers practical training with real-world applications, ensuring that you gain the skills needed to excel in the digital marketing field. If you’re looking for options in other parts of Delhi, consider our courses in other regions. For instance, our digital marketing course in Pitampura is perfect for those in North Delhi, offering localized training and insights. Similarly, our digital marketing course in Preet Vihar caters to East Delhi residents, providing comprehensive training suited to the local market. For West Delhi, our digital marketing course in Rajouri Garden offers tailored content to help you thrive in the digital marketing landscape. If you live in Delhi NCR, specifically in Gurgaon or Noida, you can visit our centers for digital marketing courses.', '#', ' Register for Free Demo', '#', 'Call Us Now: +91-9123456789', 'Asia’s Most Trusted Brand', 'Why Choose Digi4shastri?', 'With more than 40 locations and 45,000+ professionally educated digital marketers, Digiperform is the industry leader in digital marketing education and the only business to receive recognition in three Asian nations (India, Thailand, and Singapore) for the caliber of its curriculum and technology. You’ll pick a qualification that is valued & required by hiring managers in the sector. After 10+2 in India, we also provide an annual certificate program in digital marketing. Digiperform is already a reputable company in the media and marketing sector because it is an HT Media Partner Company. Also, if you’re searching for additional locations in Delhi, we also have a number of centers that you can choose from on our page Digital Marketing Course in Delhi.', '01JENCWWAXAQDJ7PAZBR972Y99.png', '#', 'Attend Demo Session', 'Benefits of Learning Digital Marketing In South Delhi, Shivalik', 'South Delhi, particularly the locality of Shivalik, is swiftly gaining recognition as a burgeoning center for digital marketing professionals. Nestled within the heart of the National Capital Region (NCR), Shivalik presents a multitude of prospects for adept digital marketers. Despite the prominence of neighboring areas such as Gurgaon and Noida, Shivalik possesses its own unique charm and is experiencing a remarkable rise in the demand for digital marketing talent.', 'Key Advantages: Digital Marketing as a Career', 'Skill Over Degree: In Shivalik, digital marketing roles prioritize practical skills and demonstrated expertise over formal degrees. Employers value candidates who possess hands-on experience with digital marketing tools and platforms, such as SEO, SEM, social media management, and content creation. Creative Career: Digital marketing in Shivalik offers a playground for creativity, where professionals are constantly challenged to devise innovative solutions to modern marketing dilemmas. The diverse range of tasks, from crafting compelling content to designing engaging campaigns, ensures that professionals never experience monotony in their work. Creativity flourishes in Shivalik’s digital marketing landscape, fostering a dynamic and inspiring environment for professionals to thrive.', '[{\"text\":\"9 Key Factors: How to Pick the Best Digital Marketing Institute in South Delhi, Shivalik\"},{\"text\":\"So, take the time to consider your options carefully, evaluate the parameters that matter most to you, and embark on your digital marketing certification journey with confidence.\"}]', '[{\"heading\":\"Factor 1: Skills Vs. Degree\",\"text1\":\"Digital Marketing Skills provide hands-on expertise, and          industry alignment, making them paramount for success. A Digital Marketing Degree, while valuable, may not          offer the same practical benefits.\",\"text2\":\"Seeking skilled Digital Marketing Courses will emphasize          practical exposure allows you to apply digital marketing techniques in real-world scenarios, and readiness          for the job market.\"},{\"heading\":\"Factor 2: Skills Vs. Degree\",\"text1\":\"Digital Marketing Skills provide hands-on expertise, and          industry alignment, making them paramount for success. A Digital Marketing Degree, while valuable, may not          offer the same practical benefits.\",\"text2\":\"Seeking skilled Digital Marketing Courses will emphasize          practical exposure allows you to apply digital marketing techniques in real-world scenarios, and readiness          for the job market.\"},{\"heading\":\"Factor 3: Skills Vs. Degree\",\"text1\":\"Digital Marketing Skills provide hands-on expertise, and          industry alignment, making them paramount for success. A Digital Marketing Degree, while valuable, may not          offer the same practical benefits.\",\"text2\":\"Seeking skilled Digital Marketing Courses will emphasize          practical exposure allows you to apply digital marketing techniques in real-world scenarios, and readiness          for the job market.\"}]', '#', 'Talk to Advisory', '#', 'Apply Now', '[{\"question\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit.\",\"answer\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat deleniti iste facere molestias in soluta sapiente maxime accusamus aliquam rerum facilis itaque consequatur reprehenderit odit quis laborum eveniet, ex earum!\"},{\"question\":\"Lorem ipsum dolor sit amet,\",\"answer\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat deleniti iste facere molestias in soluta sapiente maxime accusamus aliquam rerum facilis itaque consequatur reprehenderit odit quis laborum eveniet, ex earum!\"}]', 1, '2024-12-09 04:14:36', '2024-12-09 04:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'abhi', 'admin@admin.com', '33333', '2024-12-06 02:07:30', '2024-12-06 02:07:30'),
(2, NULL, 'admin@admin.com', '22222222222', '2024-12-06 09:19:52', '2024-12-06 09:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `city`, `message`, `created_at`, `updated_at`) VALUES
(1, 'abhi', 'admin@admin.com', '31ghjg', '333', '2024-12-06 01:29:03', '2024-12-06 01:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price_inr` int(11) DEFAULT NULL,
  `course_total_user` int(11) DEFAULT NULL,
  `additional_user_inr` int(11) DEFAULT NULL,
  `total_enrolled` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) DEFAULT NULL,
  `total_users` int(11) DEFAULT NULL,
  `faqs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`faqs`)),
  `heading1` varchar(255) DEFAULT NULL,
  `p1` text DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `cards` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cards`)),
  `curriculum_tab_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`curriculum_tab_1`)),
  `curriculum_tab_2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`curriculum_tab_2`)),
  `tools_learn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tools_learn`)),
  `heading2` varchar(255) DEFAULT NULL,
  `heading3` varchar(255) DEFAULT NULL,
  `p2` text DEFAULT NULL,
  `brochure` text DEFAULT NULL,
  `key_skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`key_skills`)),
  `assignments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`assignments`)),
  `projects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`projects`)),
  `case_studies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`case_studies`)),
  `career_supports` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`career_supports`)),
  `bonus_modules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bonus_modules`)),
  `success_stories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`success_stories`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `thumbnail_image`, `rating`, `short_description`, `description`, `price_inr`, `course_total_user`, `additional_user_inr`, `total_enrolled`, `status`, `price`, `total_users`, `faqs`, `heading1`, `p1`, `duration`, `cards`, `curriculum_tab_1`, `curriculum_tab_2`, `tools_learn`, `heading2`, `heading3`, `p2`, `brochure`, `key_skills`, `assignments`, `projects`, `case_studies`, `career_supports`, `bonus_modules`, `success_stories`, `created_at`, `updated_at`) VALUES
(1, 'dDMFC', 'Digital Marketing Foundation Course', 'front/course/01JEE82VY097ST1K4YZBC1579C.png', 4.7, 'Master keyword research, on-page optimization, link building, content marketing, and analytics to boost website rankings and drive organic traffic.', 'Master keyword research, on-page optimization, link building, content marketing, and analytics to boost website rankings and drive organic traffic.', 2500, 5, 699, 483, 1, NULL, NULL, '[{\"question\":\"Where is digital marketing course?\",\"answer\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.\"},{\"question\":\"Where is digital marketing course?\",\"answer\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.\"}]', '8 Live Assignments', 'Due to global digitalization any organization or industry today needs resources to manage their social media profiles, create logos, posts & WhatsApp messages, Shoot & edit videos, Manage client messages, Optimize online presence, and boost search engine rankings. With AI taking away Data entry & Basic MIS jobs this course comes as a boon for individuals who want to start their careers in the IT & Digital industry but struggling due to a lack of exposure & strong skill.', '2 Months/Weekdays', '[{\"heading\":\"Duration\",\"texts\":\"2 Month\",\"icon_code\":\"fa-regular fa-calendar-days\"},{\"heading\":\"Duration\",\"texts\":\"2 Month\",\"icon_code\":\"fa-regular fa-calendar-days\"},{\"heading\":\"Duration\",\"texts\":\"2 Month\",\"icon_code\":\"fa-regular fa-calendar-days\"}]', '[{\"module\":\"Module 1: Communicative\",\"activities\":[{\"activity\":\"The Current Opportunity\"},{\"activity\":\"The Current Opportunity\"}]},{\"module\":\"Module 2: Communicative\",\"activities\":[{\"activity\":\"The Current Opportunity\"},{\"activity\":\"The Current Opportunity\"}]}]', '[{\"module\":\"Module 3: Communication activities & Role Plays\",\"activities\":[{\"activity\":\"The Current Opportunity\"}]},{\"module\":\"Module 4: Communication activities & Role Plays\",\"activities\":[{\"activity\":\"The Current Opportunity\"},{\"activity\":\"The Current Opportunity\"}]}]', '[{\"heading\":\"CANVA\",\"image\":\"front\\/course\\/01JDSQBR0672PTX0MG4431YPXR.png\"},{\"heading\":\"SHEMRUSH\",\"image\":\"front\\/course\\/01JDSQBR14K2F87SAA8KYC0WZ0.png\"},{\"heading\":\"CANVA\",\"image\":\"front\\/course\\/01JDSQBR1MJKFCE3SEQ5PYXST2.png\"}]', 'Theory, Live Practical & Implementation', 'Who Can Attend', 'Non-IT & Non-English Speaking Beginner candidates from various backgrounds who are looking to join entry-level positions in Digital Marketing World', 'front/course/01JDSVWBF0TP9ABNNG8SYJ602T.pdf', '[{\"heading\":\"GMail- Sheets, Docs, Forms\",\"image\":\"front\\/course\\/01JDSQBR262V6866NJRY7JP7JY.png\"},{\"heading\":\"GMail- Sheets, Docs, Forms\",\"image\":\"front\\/course\\/01JDSQBR2N6GGEGBXQZ2P03WY8.png\"}]', '[{\"heading\":\"1 Quizzes:\",\"texts\":\"Computer Systems, MS Office, Web Research, English Communication, SEO, Digital Marketing Job Roles, DM Opportunities, Channels\"}]', '[{\"heading\":\"2 Quizzes:\",\"texts\":\"Computer Systems, MS Office, Web Research, English Communication, SEO, Digital Marketing Job Roles, DM Opportunities, Channels\"}]', '[{\"heading\":\"3 Quizzes:\",\"texts\":\"Computer Systems, MS Office, Web Research, English Communication, SEO, Digital Marketing Job Roles, DM Opportunities, Channels\"}]', '[{\"icon\":\"front\\/course\\/01JDSQBR3JJQ9QSWH9PCQHM8YX.png\",\"heading\":\"IN-COURSE INTERNSHIP\",\"texts\":\"Paid internships to learn from professionals and gain meaningful, hands-on experience.\"},{\"icon\":\"front\\/course\\/01JDSQBR45JB1P3QBX7MCWESHK.png\",\"heading\":\"MOCK INTERVIEW\",\"texts\":\"Mock interview sessions from experts to help you prepared for the final interview.\"},{\"icon\":\"front\\/course\\/01JDSS3NVPRJ334T3PN74PDB6B.png\",\"heading\":\"CAMPUS DRIVE\",\"texts\":\"Campus Drive Placements by partnering with the 1200+ hiring partners across the nation.\\n\\n\"}]', '[{\"icon\":\"front\\/course\\/01JDSQBR4MAKMGJMHMRYNFPHVC.png\",\"heading\":\"English Speaking Course\"}]', '[{\"icon\":\"front\\/course\\/01JDSQBR53P1C421GGG59RQCGF.png\",\"name\":\"Kimz Hnamte\",\"texts\":\"Best Digital Marketing Career Academy among all! I suggest all my friends about\\n                        DigishastriShastri . They provide depth course module both technically and strategically. Happy to\\n                        be a part\\n                        of Digishastri.\"}]', '2024-11-28 09:09:39', '2024-12-09 02:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `free_counselings`
--

CREATE TABLE `free_counselings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `choose_center` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_counselings`
--

INSERT INTO `free_counselings` (`id`, `name`, `email`, `mobile`, `choose_center`, `created_at`, `updated_at`) VALUES
(1, 'abhi', 'admin@admin.com', '8888888888', 'test', '2024-12-06 01:44:26', '2024-12-06 01:44:26'),
(2, 'abhi', 'admin@admin.com', '9999999999', 'test', '2024-12-06 01:55:57', '2024-12-06 01:55:57'),
(3, 'abhi', 'admin@admin.com', NULL, NULL, '2024-12-06 02:04:12', '2024-12-06 02:04:12'),
(4, 'abhi', 'admin@admin.com', NULL, NULL, '2024-12-06 02:05:22', '2024-12-06 02:05:22'),
(5, 'abhi', 'admin@admin.com', '333', '333', '2024-12-06 05:34:01', '2024-12-06 05:34:01'),
(6, 'abhi', 'admin@admin.com', '9999999999', 'test', '2024-12-06 05:39:18', '2024-12-06 05:39:18'),
(7, 'abhi', 'admin@admin.com', '9999999999', '333333', '2024-12-09 02:20:39', '2024-12-09 02:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `generals`
--

CREATE TABLE `generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_1` varchar(255) DEFAULT NULL,
  `mobile_2` varchar(255) DEFAULT NULL,
  `email_1` varchar(255) DEFAULT NULL,
  `email_2` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `repeater_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`repeater_1`)),
  `repeater_2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`repeater_2`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generals`
--

INSERT INTO `generals` (`id`, `mobile_1`, `mobile_2`, `email_1`, `email_2`, `description`, `short_description`, `repeater_1`, `repeater_2`, `created_at`, `updated_at`) VALUES
(1, '9999999999', NULL, 'info@digishashtri.com', NULL, NULL, NULL, '[{\"field_1\":\"Digital Marketing Programs\",\"field_2\":\"Post Graduation in Digital Marketing | Online Digital Marketing Courses in India\"},{\"field_1\":\"Short Term Certifications\",\"field_2\":\"All Digital Marketing Certifications | Social Media Marketing Course | SEO Course Online | Performance Marketing Course Online | Content Writing Course | E-Commerce Course | Website Development Course | Email Marketing Course | Instagram Marketing Course | Conversion Rate Optimisation Course | Interview Preparation Course\"}]', NULL, '2024-12-09 08:54:58', '2024-12-09 08:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_15_183928_create_sliders_table', 2),
(7, '2024_11_17_140550_create_pages_table', 4),
(14, '2024_11_28_094440_create_courses_table', 6),
(16, '2024_11_16_170005_create_sections_table', 7),
(17, '2024_11_29_134135_modify_columns_in_sections_table', 8),
(18, '2024_12_06_061821_create_contacts_table', 9),
(20, '2024_12_06_063743_create_consultations_table', 11),
(21, '2024_12_06_062808_create_free_counselings_table', 12),
(22, '2024_12_06_143022_create_career_counsellings_table', 13),
(23, '2024_12_06_145808_add_columns_to_courses_table', 14),
(24, '2024_12_06_151737_add_columns_to_courses_table', 15),
(25, '2024_12_06_152504_create_suggestions_table', 16),
(26, '2024_12_06_163048_add_columns_to_courses_table', 17),
(29, '2024_12_09_090716_create_centers_table', 18),
(31, '2024_12_09_125601_create_blogs_table', 19),
(32, '2024_12_09_131410_add_status_to_blogs_table', 20),
(33, '2024_12_09_133620_add_slug_to_blogs_table', 21),
(35, '2024_12_09_141825_create_generals_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `icon` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `order`, `status`, `icon`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, 1, NULL, NULL, NULL, NULL, '2024-11-17 08:59:02', '2024-11-30 09:26:20'),
(2, 'About', 2, 1, NULL, NULL, NULL, NULL, '2024-11-17 08:59:20', '2024-11-17 08:59:20'),
(3, 'Corporate', 3, 1, NULL, NULL, NULL, NULL, '2024-12-06 05:51:47', '2024-12-06 05:51:47'),
(4, 'Workshop', 4, 1, NULL, NULL, NULL, NULL, '2024-12-06 05:52:00', '2024-12-06 09:22:50'),
(5, 'Student Corner', 5, 1, NULL, NULL, NULL, NULL, '2024-12-06 05:52:22', '2024-12-06 05:52:22'),
(6, 'Blogs', 6, 1, NULL, NULL, NULL, NULL, '2024-12-06 05:53:00', '2024-12-06 05:53:00'),
(7, 'Contact Us', 7, 1, NULL, NULL, NULL, NULL, '2024-12-06 05:53:12', '2024-12-09 02:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading1` text DEFAULT NULL,
  `sub_heading2` text DEFAULT NULL,
  `sub_heading3` text DEFAULT NULL,
  `sub_heading4` text DEFAULT NULL,
  `sub_heading5` text DEFAULT NULL,
  `other1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`other1`)),
  `other2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`other2`)),
  `other3` text DEFAULT NULL,
  `other4` text DEFAULT NULL,
  `other5` text DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `button_link1` varchar(255) DEFAULT NULL,
  `button_name1` varchar(255) DEFAULT NULL,
  `button_name2` varchar(255) DEFAULT NULL,
  `button_link2` varchar(255) DEFAULT NULL,
  `button_name3` varchar(255) DEFAULT NULL,
  `button_link3` varchar(255) DEFAULT NULL,
  `button_name4` varchar(255) DEFAULT NULL,
  `button_link4` varchar(255) DEFAULT NULL,
  `button_name5` varchar(255) DEFAULT NULL,
  `button_link5` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `page_id`, `section_name`, `order`, `status`, `image`, `image1`, `image2`, `heading`, `sub_heading1`, `sub_heading2`, `sub_heading3`, `sub_heading4`, `sub_heading5`, `other1`, `other2`, `other3`, `other4`, `other5`, `button_link`, `button_name`, `image3`, `image4`, `image5`, `image6`, `button_link1`, `button_name1`, `button_name2`, `button_link2`, `button_name3`, `button_link3`, `button_name4`, `button_link4`, `button_name5`, `button_link5`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hero', 1, 1, NULL, NULL, NULL, 'Asia\'s Leading Brand In Digital Career Training', '40+ Centers', 'Advance your career In Data Science and Digital Marketing with Most trusted brand in Digital Education.', 'DIGI4SHASTRI Alumni Work At', NULL, NULL, '[{\"image\":null,\"text1\":null,\"text3\":null}]', NULL, NULL, NULL, NULL, '#', 'Explore Courses', NULL, NULL, NULL, NULL, '#', ' Watch Now', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 05:12:56', '2024-11-29 05:18:58'),
(2, 1, 'Why Choose Digi4shastri?', 2, 1, '01JDVS86XWJ6GFYKFH2DESSY1A.png', NULL, NULL, 'Why Choose Digi4shastri?', 'Asia’s Most Trusted Brand', 'Digi4shastri is awarded as the “Most Trusted Brand in Digital Education” by WCRC (Leading Marketing Research Firm and Magazine).', NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text3\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 05:30:15', '2024-11-29 05:30:15'),
(3, 1, 'GET CERTIFIED', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JDVSTFW4C8N15FBP8N8ZG8Y7.png\",\"text1\":\"GET CERTIFIED\",\"text2\":\"Our curriculum is built on suggestions from over 450 corporates across Asia, Get certified to add an edge to your CV.\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JDVSTFWRZX3BDYGZF2FPZEAB.png\",\"text1\":\"AWARD-WINNIN\",\"text2\":\"Learn through 24*7 interactive LMS with PPTs, Videos, Assignments, Case Studies & Quizzes along with a progress tracker.\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JDVSTFX9K6RZAFDXEWC2BBZT.png\",\"text1\":\"MOST IN-DEPTH PROGRAM\",\"text2\":\"50+ Modules, 321+ learning hours, followed by 2 online certification tests. A training program that sets a benchmark.\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 05:40:14', '2024-11-29 06:20:35'),
(4, 1, 'Still Confused', 4, 1, '01JDVT4ET2CSKGVY9FRRMHADTQ.png', NULL, NULL, 'Still Confused?', NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null}]', NULL, NULL, NULL, NULL, '#', 'Take the Next Step With Free Demo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 05:45:41', '2024-11-29 05:45:41'),
(5, 1, 'DIGI4SHASTRI ADVANTAGE', 5, 1, NULL, NULL, NULL, 'Student Life at Digi4shastri', 'Life at Digishastri is full of energy and culture. Digishastri students not only learn but also make lasting networks through events, surprise pizza parties and celebrations. Learn more about how we jazz up our learning experience.', NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JDVTY2NHM92XA9T8AGA9SD83.png\",\"text1\":\"Game night\'23\",\"text2\":\"Level up your fun\",\"text3\":\"17 April 2023\",\"btn_name\":\"View Event\",\"button_link\":\"#\"},{\"image\":\"front\\/course\\/01JDVTY2P4S2SVQ4N5NSNMRXVJ.png\",\"text1\":\"Game night\'23\",\"text2\":\"Level up your fun\",\"text3\":\"17 April 2023\",\"btn_name\":\"View Event\",\"button_link\":\"#\"},{\"image\":\"front\\/course\\/01JDVTY2PHS5EANJX05SKJAB9N.png\",\"text1\":\"Game night\'23\",\"text2\":\"Level up your fun\",\"text3\":\"17 April 2023\",\"btn_name\":\"View Event\",\"button_link\":\"#\"},{\"image\":\"front\\/course\\/01JDVTY2PWEFTE3N1VWVYD2R76.png\",\"text1\":\"Game night\'23\",\"text2\":\"Level up your fun\",\"text3\":\"17 April 2023\",\"btn_name\":\"View Event\",\"button_link\":\"#\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 05:57:47', '2024-11-29 06:04:42'),
(6, 1, 'Enquiry Now', 6, 1, NULL, NULL, NULL, 'Enquiry Now', 'Seeking guidance on choosing your path? Schedule a consultation for personalized assistance.', '+911234567890', 'info@digi4shastri.com', 'India', NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 05:57:55', '2024-11-29 06:23:49'),
(7, 1, 'Testimonial', 0, 1, NULL, NULL, NULL, 'What Our Trainees Have To Say', 'Our Courses have Been Receiving an average rating of 9.4/10 from our course participants. Till date, Digiperform has trained more than 75,000+ individuals.', NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JDVWDRYDXT8CVVACSMXAHHN8.png\",\"text1\":\"Kimz Hnamte\",\"text2\":\"If you are looking for an institute which helps you learn digital marketing, then you must consider Digishastri. They are the best in this field.\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JDVWDRYZE5PJHWW1AZBBKX7Z.png\",\"text1\":\"Kimz Hnamte\",\"text2\":\"If you are looking for an institute which helps you learn digital marketing, then you must consider Digishastri. They are the best in this field.\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 06:25:43', '2024-11-29 06:33:43'),
(8, 2, 'Who are we?', 1, 1, NULL, NULL, NULL, 'Who are we?', 'IIDE is Asia’s most trusted digital marketing institute with students from 10+ countries. We pride ourselves on being a one-of-a-kind institute that aims to equip learners with the skills, knowledge and mindset needed to compete successfully in the digital landscape.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.', NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:13:55', '2024-11-29 08:13:55'),
(9, 2, 'Our Vision', 2, 1, '01JDW3CAG5MK77PXH7J04NHHQP.png', NULL, NULL, 'Our Vision', 'Making a socio-economic impact globally by becoming the world’s largest contributor to digital marketing talent.', 'To accelerate this vision, we have joined hands with the National Skills Development Corporation (N.S.D.C), an initiative by the Gov. to skill India. Our courses have been recognized by the NSDC as providing valuable skills.', NULL, NULL, NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:27:15', '2024-11-29 08:27:15'),
(10, 2, 'Digi4shastri impact', 3, 1, NULL, NULL, NULL, 'Digi4shastri impact', NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":\"5,00,000+\",\"text2\":\"Learners Community\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:28:01', '2024-11-29 08:49:32'),
(11, 2, 'Our Story', 4, 1, NULL, NULL, NULL, 'Our Story', NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":\"2016\",\"text2\":\"Our Humble Start\",\"text3\":\"Laid the cornerstone of IIDE on 13th March with a view to revolutionize the education industry digitally\",\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"2017\",\"text2\":\"Our Humble Start2\",\"text3\":\"Laid the cornerstone of IIDE on 13th March with a view to revolutionize the education industry digitally\",\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:52:04', '2024-11-29 08:59:51'),
(12, 2, 'Student Experience Team', 5, 1, NULL, NULL, NULL, 'Student Experience Team', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JEDTGWSVPR05F6EHKZ9NXB7K.png\",\"text1\":\"Manali Bhattacharya\",\"text2\":\"Head of student success\",\"text3\":\"15+ years of Experience\",\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JEDTGWTSH5ARS1556MDDTQVF.png\",\"text1\":\"Manali Bhattacharya\",\"text2\":\"Head of student success\",\"text3\":\"15+ years of Experience\",\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:32:40', '2024-12-06 05:38:48'),
(13, 2, 'Awards & Recognition', 6, 1, NULL, NULL, NULL, 'Awards & Recognition', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JDW3ST89KJM9S7XC42P8E9VK.png\",\"text1\":\"2023 Winner\",\"text2\":\"Leading Professional Certification Programs in Digital Marketing at World Education Summit.\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:34:38', '2024-11-29 08:34:38'),
(14, 2, 'Media Spotlight', 7, 1, NULL, NULL, NULL, 'Media Spotlight', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JDW3VVR3B9K9B5Q9VC470RXR.png\",\"text1\":\"\'IIDE strives to become a prominent facilitator for the entire digital marketing ecosystem\'\",\"text2\":\"Sep 15, 2024\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-29 08:35:45', '2024-11-29 08:35:45'),
(17, 7, 'Contact', 0, 1, NULL, NULL, NULL, 'We’re here to help you!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing. Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elitsed do eiusmod tempororem ipsum dolor sit am econsect ametconsectetetur adipiscing.', NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":\"1234567890\",\"text2\":\"1234567890\",\"text3\":\"fa-phone-volume\",\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"info@digi4shastri.com\",\"text2\":\"support@digi4shastri.com\",\"text3\":\"fa-envelope\",\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"121 King Street Melbourne, 3000, Australia\",\"text2\":null,\"text3\":\"fa-location-dot\",\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 06:01:56', '2024-12-06 06:01:56'),
(18, 3, 'Hero', 1, 1, NULL, NULL, NULL, 'Future-proof your company with IIDEPRO corporate training program', 'Latest technologies and innovative techniques to transform employee\'s learning and accelerate your business growth', 'Customized Content | Online & Offline | Professional Certification', NULL, NULL, NULL, '[{\"image\":null,\"text1\":\"5+\",\"text2\":\"Years of Corporate Training\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"5000+\",\"text2\":\"Professionals Trained\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"100+\",\"text2\":\"Corporate Partnerships Globally\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 07:05:27', '2024-12-06 07:10:00'),
(19, 3, 'Corporate Clients', 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JEE06SXB9HKNXQFD9BNNGS42.png\",\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 07:18:09', '2024-12-06 07:18:09'),
(20, 3, 'Client Stories', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":\"Client Logo\",\"text2\":\"Cipla was looking for specialists to diagnose their digital marketing needs. What did we prescribe for Cipla\'s digital bug?\",\"text3\":null,\"btn_name\":\"Read More\",\"button_link\":\"#\"},{\"image\":null,\"text1\":\"Client Logo\",\"text2\":\"Cipla was looking for specialists to diagnose their digital marketing needs. What did we prescribe for Cipla\'s digital bug?\",\"text3\":null,\"btn_name\":\"Read More\",\"button_link\":\"#\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 07:29:45', '2024-12-06 07:29:45'),
(21, 3, 'CTA 1', 4, 1, '01JEE12FGBHWKB0ZAKW815970Y.pdf', NULL, NULL, 'Digi4shastri Signature can boost your on-boarding', NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 07:30:49', '2024-12-06 07:35:11'),
(22, 3, 'Training Offerings', 5, 1, NULL, NULL, NULL, 'Our Corporate Training Offerings', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JEE24VC06QEA5P4CJ41GF178.png\",\"text1\":\"Learning Management Ecosystem\",\"text2\":\"A-la-carte Learning Solution\",\"text3\":\"Ideal for skilling teams | Curriculum delivered LIVE by content experts | Online or Offline Interaction\",\"btn_name\":\"Learn More\",\"button_link\":\"#\"},{\"image\":\"front\\/course\\/01JEE24VCFXWWAZPWBQMK5M9TF.png\",\"text1\":\"Learning Management Ecosystem\",\"text2\":\"A-la-carte Learning Solution\",\"text3\":\"Ideal for skilling teams | Curriculum delivered LIVE by content experts | Online or Offline Interaction\",\"btn_name\":\"Learn more\",\"button_link\":\"#\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 07:52:02', '2024-12-06 07:55:12'),
(23, 3, 'Corporate Trainers', 6, 1, NULL, NULL, NULL, 'Our Panel Of Corporate Trainers', 'Our team of content experts - empanelled with IIDE or hand-picked from the industry based on your learning outcome.', NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JEE2FPE9704DM188E3K1TM2H.png\",\"text1\":\"Reshma Shaikh\",\"text2\":\"Associate Team Lead, Digi4shastri\",\"text3\":\"Reshma is obsessed with identifying business problems, strategically fixing them & fueling growth.   She is level Pro in SEO, Google Ads & WordPress and has trained 5000 learners to harness the power of digital in driving business success.\",\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JEE2FPEY7QSEGMQ0WW8DQZW9.png\",\"text1\":\"Reshma Shaikh\",\"text2\":\"Associate Team Lead, Digi4shastri\",\"text3\":\"Reshma is obsessed with identifying business problems, strategically fixing them & fueling growth.   She is level Pro in SEO, Google Ads & WordPress and has trained 5000 learners to harness the power of digital in driving business success.\",\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 07:57:57', '2024-12-06 07:57:57'),
(24, 3, 'CTA 2', 7, 1, '01JEE32MNZ9Q7W0PXDG8DZ0ETR.pdf', NULL, NULL, 'IIDEPRO Select can upskill employees in just 1 day.', NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 08:08:18', '2024-12-06 08:08:18'),
(25, 3, 'Words Of Praise', 0, 1, NULL, NULL, NULL, 'Words Of Praise From Leading Corporates', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JEE37D7AWNACVTREWJHR92A3.png\",\"text1\":\"Kimz Hnamte\",\"text2\":\"Best Digital Marketing Career Academy among all! I suggest all my friends about                             DigishastriShastri . They provide depth course module both technically and strategically. Happy                             to be a part of Digishastri\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"Kimz Hnamte\",\"text2\":\"Best Digital Marketing Career Academy among all! I suggest all my friends about                             DigishastriShastri . They provide depth course module both technically and strategically. Happy                             to be a part of Digishastri\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 08:10:54', '2024-12-06 08:10:54'),
(26, 3, 'Past Trainings', 9, 1, NULL, NULL, NULL, 'Glimpse of past trainings', NULL, NULL, NULL, NULL, NULL, '[{\"image\":\"front\\/course\\/01JEE3NG308DB0EYAK5M2X5YR4.png\",\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JEE3NG3MPVJFX7VEJBX39ZAB.png\",\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":\"front\\/course\\/01JEE3NG4BTME3FST1N4GQPQRP.png\",\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 08:18:36', '2024-12-06 08:18:36'),
(27, 3, 'FaQs', 10, 1, NULL, NULL, NULL, 'Frequently Asked Questions', NULL, NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit.\",\"text2\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat deleniti iste facere molestias in soluta sapiente maxime accusamus aliquam rerum facilis itaque consequatur reprehenderit odit quis laborum eveniet, ex earum!\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit.\",\"text2\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat deleniti iste facere molestias in soluta sapiente maxime accusamus aliquam rerum facilis itaque consequatur reprehenderit odit quis laborum eveniet, ex earum!\",\"text3\":null,\"btn_name\":null,\"button_link\":null},{\"image\":null,\"text1\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit.\",\"text2\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat deleniti iste facere molestias in soluta sapiente maxime accusamus aliquam rerum facilis itaque consequatur reprehenderit odit quis laborum eveniet, ex earum!\",\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 08:21:31', '2024-12-06 08:25:14'),
(28, 4, 'main', 1, 1, NULL, NULL, NULL, 'Our Highest Rated Workshops', 'Our workshops are an excellent way for you to learn the most in-demand skills from industry experts.', NULL, NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-06 09:42:40', '2024-12-06 09:42:40'),
(29, 5, 'Main', 1, 1, '01JEN8BGQ3EF5APATTC1G9E3WR.png', NULL, NULL, 'Learn Courses Now', 'Explore Digital Marketing courses that cover skills in SEO, social media strategy, and content marketing. Prepare for careers in digital advertising, brand management, and online marketing strategy.', 'Get started in the high-growth fields of digital marketing and get professional certificate from Digi4shastri. Learn to manage digital marketing campaigns, attract and engage customers, and sell products online.', NULL, NULL, NULL, '[{\"image\":null,\"text1\":null,\"text2\":null,\"text3\":null,\"btn_name\":null,\"button_link\":null}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-09 02:55:13', '2024-12-09 02:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lpajThh2BQKg2G2S0JLPlL88epT4Au5pTIi4Ovl6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMDBWRUg2UGw5MHh3eFdnbGNNdTdFSktiWTNvYUNpSWN2UkFXemdMRiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDZMWGhOb1V6NGdQMzhVLzFYN3RRYi5FMExqalhxLi80VzhMU0wxMWY4MW8xNVBJN3ZaSGNhIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAxL2FkbWluIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxOToiY291bnNlbGxpbmdGb3JtU2VudCI7YjoxO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1733756149);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `experience` text DEFAULT NULL,
  `page` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `experience`, `page`, `created_at`, `updated_at`) VALUES
(1, 'test test test', 'Blog', '2024-12-06 10:08:28', '2024-12-06 10:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abhishek', 'admin@admin.com', NULL, '$2y$12$6LXhNoUz4gP38U/1X7tQb.E0LjjXq./4W8LSL11f81o15PI7vZHca', 'sbCEPBPjY2yzhpu3B9jM7hLqr9PzC9NkbEai8jfKN6xOkqjegXWOmeDGmU8Y', '2024-11-15 12:58:49', '2024-11-15 12:58:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `career_counsellings`
--
ALTER TABLE `career_counsellings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `free_counselings`
--
ALTER TABLE `free_counselings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_page_id_foreign` (`page_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `career_counsellings`
--
ALTER TABLE `career_counsellings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `free_counselings`
--
ALTER TABLE `free_counselings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
