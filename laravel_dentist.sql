-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 12:48 PM
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
-- Database: `laravel_dentist`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_headers`
--

CREATE TABLE `account_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('Debit','Credit') NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

CREATE TABLE `application_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_short_name` varchar(255) NOT NULL,
  `item_version` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `developed_by` varchar(255) DEFAULT NULL,
  `developed_by_href` varchar(255) DEFAULT NULL,
  `developed_by_title` varchar(255) DEFAULT NULL,
  `developed_by_prefix` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `is_demo` enum('0','1') NOT NULL DEFAULT '0',
  `time_zone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_settings`
--

INSERT INTO `application_settings` (`id`, `item_name`, `item_short_name`, `item_version`, `company_name`, `company_email`, `company_address`, `developed_by`, `developed_by_href`, `developed_by_title`, `developed_by_prefix`, `support_email`, `logo`, `favicon`, `language`, `is_demo`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'SP-DentSoft', 'SP-DentSoft', '2.0', 'SPREINVENTS', 'admin@spreinvents.in', '<p>Patna, Bihar, India</p>', 'Ambitiousit', 'http://ambitiousit.net/', 'Your hope our goal', 'Developed by', 'bd.ambitiousit@gmail.com', NULL, 'favicon.png', 'en', '0', 'Asia/Kolkata', '2024-12-21 05:58:00', '2024-12-21 06:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `domain`, `enabled`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'spdentsoft.spreinvents.in', 1, '2024-12-21 05:58:00', '2024-12-21 06:11:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `rate` double(15,8) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `precision` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `symbol_first` varchar(255) DEFAULT NULL,
  `decimal_mark` varchar(255) DEFAULT NULL,
  `thousands_separator` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `company_id`, `name`, `code`, `rate`, `enabled`, `precision`, `symbol`, `symbol_first`, `decimal_mark`, `thousands_separator`, `created_at`, `updated_at`) VALUES
(5, 1, 'Indian Rupees', 'INR', 1.00000000, 1, '1', '₹', '1', '.', ',', '2024-12-21 06:01:06', '2024-12-21 06:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_department_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `specialist` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedules`
--

CREATE TABLE `doctor_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `weekday` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `avg_appointment_duration` int(11) NOT NULL DEFAULT 5,
  `serial_type` enum('Sequential','Timestamp') NOT NULL DEFAULT 'Sequential',
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_campaigns`
--

CREATE TABLE `email_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `email_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `schedule_time` datetime NOT NULL,
  `contact_type` varchar(255) NOT NULL,
  `status` enum('Pending','Processing','Completed','Failed') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_campaign_logs`
--

CREATE TABLE `email_campaign_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `email_campaign_id` bigint(20) UNSIGNED NOT NULL,
  `smtp_configuration_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `front_ends`
--

CREATE TABLE `front_ends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_ends`
--

INSERT INTO `front_ends` (`id`, `page`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', '{\"_token\": \"7msBu459N5WsBCQ2jvd7VI1b67ah2wBCaXMbeOhq\", \"caring\": \"Caring Technologies For Your Health\", \"google\": \"https://myaccount.google.com/profile\", \"images\": [\"storage/front-end/bdTShfdTVlZSKVTGa5yVjlfMUKVJU3EdT5r6HmcG.png\", \"storage/front-end/MD3p8FxVuC8infeYvM96ICanJL51ExhDG0hA80vo.png\", \"storage/front-end/F2CYTyTe9tmGw13a6PXjMJ4v7W9hp8foGGUHVeze.png\"], \"review\": [\"Phillip Hunt\", \"Sara Grant\", \"Luke Jacobs\"], \"_method\": \"PUT\", \"company\": [\"Example Company\", \"Example Company\", \"Example Company\"], \"tagline\": \"Lorem ipsum dolor sit amet consectetur adipisicing elit sunt in culpa qui officia sed deserunt mollit anim id est laborum mollit anim id est nulla.\", \"twitter\": \"https://twitter.com/?lang=en\", \"welCol1\": \"Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi consequatur saepe blanditiis.Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elit. Fuga, suscipit totam animi consequatur saepe blanditiis.\", \"welCol2\": \"Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi consequatur saepe blanditiis.Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elit. Fuga, suscipit totam animi consequatur saepe blanditiis.\", \"welcome\": \"Welcome To Our Clinic\", \"facebook\": \"https://www.facebook.com/\", \"friday_s\": \"09:00 – 17:00\", \"headline\": \"Creating The Healthy Smile You Want Through Science And Artistry.\", \"monday_s\": \"09:00 – 17:00\", \"services\": [\"Family & general dentistry\", \"Implant dentistry\", \"Cosmetic dentistry\", \"Using Best Quality tools.\", \"\"], \"sunday_s\": \"Closed\", \"topEmail\": \"mail@company.com\", \"tuesday_s\": \"09:00 – 17:00\", \"caringText\": \"Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi consequatur saepe blanditiis.Lorem ipsum dolor sit amet\", \"clientText\": \"Lorem ipsum dolor sit amet consectetur adipisicing elit\", \"reviewText\": [\" Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea sit id accusantium officia quod quasi necessitatibus perspiciatis.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat\", \" Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea sit id accusantium officia quod quasi necessitatibus perspiciatis.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat\", \" Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea sit id accusantium officia quod quasi necessitatibus perspiciatis.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat\"], \"saturday_s\": \"Closed\", \"thursday_s\": \"09:00 – 17:00\", \"topAddress\": \" Dolor sit, #PTH, 55080, 4300 Honey Street\", \"clientCount\": \"563\", \"wednesday_s\": \"09:00 – 17:00\", \"questionCall\": \"121-345-64369\", \"bottomTagLine\": \"Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\", \"appointmentText\": \"Lorem ipsum dolor sit amet consectetur adipisicing elit\", \"appointmentCount\": \"165\"}', '1', '2022-01-04 07:24:46', '2022-01-04 07:24:46'),
(2, 'about', '{\"teams\": [\"Theresa Cruz\", \"Scott Colon\", \"Bertha Sherman\", \"\"], \"_token\": \"7msBu459N5WsBCQ2jvd7VI1b67ah2wBCaXMbeOhq\", \"images\": [\"storage/front-end/EiEYayKsz2eSgLjwwIjNVpsb8FrdRszj1eSDN1DN.png\", \"storage/front-end/D0tjlYRpRPrwlOVByAl6QisgUXD4TL9eMXA52zRm.png\", \"storage/front-end/ZGZllUYFTDJTQlJgPpK6EmjUIZBnkq1UDXHh3yNA.png\", \"storage/front-end/WB8qs5iwzlkdXSLmGyHQ5r1kEdrtUTwRDJg69NbN.png\", \"storage/front-end/0psE1Ii058UnVKXqNuDnV1gZOCTR4CbysjPz5qkd.png\", \"storage/front-end/UpX7UOaCgIRZryGePHjrhsHAEHPQuKyllWpIwDzV.png\", \"storage/front-end/S3rAwz9bG5u1713RWhfCjznt0kQeMXyxMusxFsAN.png\"], \"_method\": \"PUT\", \"services\": [\"Cosmetic Dentistry\", \"Dental Implants\", \"Pediatric Dentistry\", \"Periodontal Therapy\"], \"teamPost\": [\"President & CEO\", \"Doctor\", \"Doctor\", \"\"], \"aboutOurTeam\": \"Lorem ipsum dolor sit amet consectetur adipisicing elit sunt in culpa qui officia sed deserunt mollit anim id est laborum mollit anim id est nulla.\", \"aboutHelpHand\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elit.\", \"aboutWorkHeart\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elit.\", \"aboutAnnualCheck\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam sequi optio consectetur adipisicing elit.\", \"aboutWhyChooseUs\": \"Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat eu ullamcorper. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia\"}', '1', '2022-01-04 07:24:46', '2022-01-05 03:30:05'),
(3, 'services', '{\"open\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere.\", \"work\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere.\", \"check\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere.\", \"smile\": \"Lorem ipsum dolor sit amet,Ea consequuntur illum facere.\", \"_token\": \"7msBu459N5WsBCQ2jvd7VI1b67ah2wBCaXMbeOhq\", \"images\": [\"storage/front-end/CwDwjKlWjZTdClJIOEA1IDWeYBeaKF6PgqBqdZeG.png\", \"storage/front-end/nfpiaOHKdIUBRZgEYHVcHhtPOBDz64i3jDDB0LmD.png\", \"storage/front-end/gBX6w1woQtoacyB8BMvNtTfM8ZvmdcqXE5blsMOn.png\", \"storage/front-end/Np6z6FY7kGv1BCafEQIdmopJYQ3Axtu4lvdywD0C.png\", \"storage/front-end/ue7E5yXYblngXOXr5kIN5xNMAsOKS2nuZbfIsvac.png\", \"storage/front-end/dnqypvqByTZ9YiyVM1hIyk768FevOOO1GWnXjJzB.png\"], \"_method\": \"PUT\", \"feature\": \"mmmmm facere aperiam consectetur adipisicing elit\", \"serviceName\": [\"Cosmetic Dentistry\", \"Pediatric Dentistry\", \"Dental Implants\", \"Preventive Dentistry\", \"Periodontal Therapy\", \"Teeth Whitening\"], \"serviceText\": \"Lorem illum facere aperiam consectetur adipisicing elit\", \"serviceDescription\": [\"Maecenas sodales eu velit in varius. vitae sem vitae urna tempus commodo.\", \"Maecenas sodales eu velit in varius. vitae sem vitae urna tempus commodo.\", \"Maecenas sodales eu velit in varius. vitae sem vitae urna tempus commodo.\", \"Maecenas sodales eu velit in varius. vitae sem vitae urna tempus commodo.\", \"Maecenas sodales eu velit in varius. vitae sem vitae urna tempus commodo.\", \"Maecenas sodales eu velit in varius. vitae sem vitae urna tempus commodo.\"]}', '1', '2022-01-04 07:24:46', '2022-01-05 06:20:23'),
(4, 'contact', '{\"_token\": \"qvooAwV2jsm4WUW5MPPlWlVW8sgUZuoqcwSRXQ0X\", \"_method\": \"PUT\", \"contactMail\": \"mail@example.com\", \"contactPhone\": \"+44 7834 857829\", \"contactAddress\": \"4885 Pretty View Lane, New York, USA\", \"contactGoogleMap\": \"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.1841333896177!2d-73.98773128504497!3d40.75797467932691!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25855c6480299%3A0x55194ec5a1ae072e!2sTimes%20Square!5e0!3m2!1sen!2sin!4v1641384795502!5m2!1sen!2sin\"}', '1', '2022-01-04 07:24:46', '2022-01-05 06:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_departments`
--

CREATE TABLE `hospital_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `service_tax` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `description` text DEFAULT NULL,
  `insurance_no` varchar(255) DEFAULT NULL,
  `insurance_code` varchar(255) DEFAULT NULL,
  `disease_charge` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`disease_charge`)),
  `hospital_rate` double DEFAULT 0,
  `insurance_rate` double DEFAULT 0,
  `total` double DEFAULT 0,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `insurance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_date` date NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `vat_percentage` double NOT NULL DEFAULT 0,
  `total_vat` double NOT NULL DEFAULT 0,
  `discount_percentage` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `grand_total` double NOT NULL DEFAULT 0,
  `paid` double NOT NULL DEFAULT 0,
  `due` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `account_type` enum('Debit','Credit') NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_job_ids` text NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lab_report_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `report` text NOT NULL,
  `photo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`photo`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_report_templates`
--

CREATE TABLE `lab_report_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_05_085144_create_application_settings_table', 1),
(4, '2019_09_30_063819_create_smtp_configurations_table', 1),
(5, '2020_02_05_062638_create_permission_tables', 1),
(6, '2020_02_12_092736_create_companies_table', 1),
(7, '2020_02_12_092955_create_settings_table', 1),
(8, '2020_02_12_093220_create_currencies_table', 1),
(9, '2020_02_12_093436_create_taxes_table', 1),
(10, '2020_02_13_060212_create_user_companies_table', 1),
(11, '2021_10_05_114751_create_doctor_details_table', 1),
(12, '2021_10_05_114802_create_hospital_departments_table', 1),
(13, '2021_10_05_120426_create_patient_case_studies_table', 1),
(14, '2021_10_14_124949_create_doctor_schedules_table', 1),
(15, '2021_10_17_084944_create_patient_appointments_table', 1),
(16, '2021_10_18_112558_create_lab_reports_table', 1),
(17, '2021_10_18_112856_create_lab_report_templates_table', 1),
(18, '2021_10_25_070421_create_prescriptions_table', 1),
(19, '2021_10_26_092119_create_insurances_table', 1),
(20, '2021_10_31_064744_create_account_headers_table', 1),
(21, '2021_10_31_122553_create_sms_apis_table', 1),
(22, '2021_11_01_065738_create_payments_table', 1),
(23, '2021_11_01_143907_create_sms_templates_table', 1),
(24, '2021_11_02_144014_create_invoices_table', 1),
(25, '2021_11_03_055549_create_invoice_items_table', 1),
(26, '2021_11_07_101030_create_sms_campaigns_table', 1),
(27, '2021_11_14_090009_create_job_batches_table', 1),
(28, '2021_11_14_090406_create_jobs_table', 1),
(29, '2021_11_14_130648_create_failed_jobs_table', 1),
(30, '2021_11_15_105421_create_sms_campaign_logs_table', 1),
(31, '2021_11_20_060744_create_email_templates_table', 1),
(32, '2021_11_20_062213_create_email_campaigns_table', 1),
(33, '2021_11_27_063831_create_email_campaign_logs_table', 1),
(34, '2022_01_03_120906_create_front_ends_table', 1),
(35, '2022_01_05_121719_create_contact_us_table', 1),
(36, '2022_08_31_160521_add_file_to_patient_case_studies', 1),
(37, '2023_04_10_094814_add_company_id_to_patient_appointments_table', 1),
(38, '2023_04_10_112126_create_updates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointments`
--

CREATE TABLE `patient_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `sequence` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `problem` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_case_studies`
--

CREATE TABLE `patient_case_studies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `food_allergy` varchar(255) DEFAULT NULL,
  `heart_disease` varchar(255) DEFAULT NULL,
  `high_blood_pressure` varchar(255) DEFAULT NULL,
  `diabetic` varchar(255) DEFAULT NULL,
  `surgery` varchar(255) DEFAULT NULL,
  `accident` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `family_medical_history` varchar(255) DEFAULT NULL,
  `current_medication` varchar(255) DEFAULT NULL,
  `pregnancy` varchar(255) DEFAULT NULL,
  `breastfeeding` varchar(255) DEFAULT NULL,
  `health_insurance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` enum('Credit','Debit') NOT NULL,
  `payment_date` date NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-read', 'Role', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(2, 'role-create', 'Role', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(3, 'role-update', 'Role', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(4, 'role-delete', 'Role', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(5, 'user-read', 'User', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(6, 'user-create', 'User', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(7, 'user-update', 'User', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(8, 'user-delete', 'User', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(9, 'smtp-read', 'SMTP', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(10, 'smtp-create', 'SMTP', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(11, 'smtp-update', 'SMTP', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(12, 'smtp-delete', 'SMTP', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(13, 'company-read', 'Company', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(14, 'company-create', 'Company', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(15, 'company-update', 'Company', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(16, 'company-delete', 'Company', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(17, 'currencies-read', 'Currencies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(18, 'currencies-create', 'Currencies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(19, 'currencies-update', 'Currencies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(20, 'currencies-delete', 'Currencies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(21, 'tax-rate-read', 'Tax Rate', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(22, 'tax-rate-create', 'Tax Rate', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(23, 'tax-rate-update', 'Tax Rate', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(24, 'tax-rate-delete', 'Tax Rate', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(25, 'profile-read', 'Profile', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(26, 'profile-update', 'Profile', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(27, 'hospital-department-read', 'Hospital Department', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(28, 'hospital-department-create', 'Hospital Department', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(29, 'hospital-department-update', 'Hospital Department', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(30, 'hospital-department-delete', 'Hospital Department', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(31, 'doctor-detail-read', 'Doctor Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(32, 'doctor-detail-create', 'Doctor Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(33, 'doctor-detail-update', 'Doctor Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(34, 'doctor-detail-delete', 'Doctor Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(35, 'patient-detail-read', 'Patient Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(36, 'patient-detail-create', 'Patient Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(37, 'patient-detail-update', 'Patient Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(38, 'patient-detail-delete', 'Patient Detail', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(39, 'patient-case-studies-read', 'Patient Case Studies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(40, 'patient-case-studies-create', 'Patient Case Studies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(41, 'patient-case-studies-update', 'Patient Case Studies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(42, 'patient-case-studies-delete', 'Patient Case Studies', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(43, 'insurance-read', 'Insurance', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(44, 'insurance-create', 'Insurance', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(45, 'insurance-update', 'Insurance', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(46, 'insurance-delete', 'Insurance', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(47, 'lab-report-read', 'Lab Report', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(48, 'lab-report-create', 'Lab Report', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(49, 'lab-report-update', 'Lab Report', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(50, 'lab-report-delete', 'Lab Report', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(51, 'lab-report-template-read', 'Lab Report Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(52, 'lab-report-template-create', 'Lab Report Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(53, 'lab-report-template-update', 'Lab Report Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(54, 'lab-report-template-delete', 'Lab Report Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(55, 'sms-template-read', 'SMS Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(56, 'sms-template-create', 'SMS Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(57, 'sms-template-update', 'SMS Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(58, 'sms-template-delete', 'SMS Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(59, 'email-template-read', 'Email Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(60, 'email-template-create', 'Email Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(61, 'email-template-update', 'Email Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(62, 'email-template-delete', 'Email Template', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(63, 'email-campaign-read', 'Email Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(64, 'email-campaign-create', 'Email Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(65, 'email-campaign-update', 'Email Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(66, 'email-campaign-delete', 'Email Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(67, 'doctor-schedule-read', 'Doctor Schedule', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(68, 'doctor-schedule-create', 'Doctor Schedule', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(69, 'doctor-schedule-update', 'Doctor Schedule', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(70, 'doctor-schedule-delete', 'Doctor Schedule', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(71, 'patient-appointment-read', 'Patient Appointment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(72, 'patient-appointment-create', 'Patient Appointment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(73, 'patient-appointment-update', 'Patient Appointment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(74, 'patient-appointment-delete', 'Patient Appointment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(75, 'prescription-read', 'Prescription', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(76, 'prescription-create', 'Prescription', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(77, 'prescription-update', 'Prescription', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(78, 'prescription-delete', 'Prescription', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(79, 'sms-api-read', 'SMS Api', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(80, 'sms-api-update', 'SMS Api', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(81, 'sms-campaign-read', 'SMS Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(82, 'sms-campaign-create', 'SMS Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(83, 'sms-campaign-update', 'SMS Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(84, 'sms-campaign-delete', 'SMS Campaign', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(85, 'account-header-read', 'Account Header', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(86, 'account-header-create', 'Account Header', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(87, 'account-header-update', 'Account Header', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(88, 'account-header-delete', 'Account Header', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(89, 'invoice-read', 'Invoice', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(90, 'invoice-create', 'Invoice', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(91, 'invoice-update', 'Invoice', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(92, 'invoice-delete', 'Invoice', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(93, 'payment-read', 'Payment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(94, 'payment-create', 'Payment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(95, 'payment-update', 'Payment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(96, 'payment-delete', 'Payment', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(97, 'financial-report-read', 'Financial Report', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(98, 'front-end-read', 'Front End', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(99, 'front-end-create', 'Front End', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(100, 'front-end-update', 'Front End', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(101, 'front-end-delete', 'Front End', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(102, 'contact-us-read', 'Contact Us', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(103, 'contact-us-delete', 'Contact Us', 'web', '2024-12-21 05:58:00', '2024-12-21 05:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `weight` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `chief_complaint` text DEFAULT NULL,
  `medicine_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`medicine_info`)),
  `diagnosis_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`diagnosis_info`)),
  `note` text DEFAULT NULL,
  `prescription_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `validity` varchar(255) DEFAULT NULL,
  `is_default` enum('0','1') NOT NULL DEFAULT '0',
  `role_for` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `price`, `validity`, `is_default`, `role_for`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', NULL, NULL, '1', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(2, 'Doctor', 'web', NULL, NULL, '1', '1', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(3, 'Patient', 'web', NULL, NULL, '1', '1', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(4, 'Accountant', 'web', NULL, NULL, '1', '1', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(5, 'Laboratorist', 'web', NULL, NULL, '1', '1', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(6, 'Receptionist', 'web', NULL, NULL, '1', '1', '2024-12-21 05:58:01', '2024-12-21 05:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(31, 5),
(31, 6),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 3),
(35, 5),
(35, 6),
(36, 1),
(36, 6),
(37, 1),
(37, 6),
(38, 1),
(38, 6),
(39, 1),
(39, 2),
(39, 3),
(39, 5),
(39, 6),
(40, 1),
(40, 2),
(40, 6),
(41, 1),
(41, 2),
(41, 6),
(42, 1),
(42, 2),
(42, 6),
(43, 1),
(43, 3),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 2),
(47, 3),
(47, 5),
(47, 6),
(48, 1),
(48, 5),
(49, 1),
(49, 5),
(50, 1),
(50, 5),
(51, 1),
(51, 5),
(52, 1),
(52, 5),
(53, 1),
(53, 5),
(54, 1),
(54, 5),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 2),
(67, 3),
(67, 6),
(68, 1),
(68, 6),
(69, 1),
(69, 6),
(70, 1),
(70, 6),
(71, 1),
(71, 2),
(71, 3),
(71, 6),
(72, 1),
(72, 6),
(73, 1),
(73, 6),
(74, 1),
(74, 6),
(75, 1),
(75, 2),
(75, 3),
(75, 6),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(85, 4),
(86, 1),
(86, 4),
(87, 1),
(87, 4),
(88, 1),
(88, 4),
(89, 1),
(89, 3),
(89, 4),
(90, 1),
(90, 4),
(91, 1),
(91, 4),
(92, 1),
(92, 4),
(93, 1),
(93, 4),
(94, 1),
(94, 4),
(95, 1),
(95, 4),
(96, 1),
(96, 4),
(97, 1),
(97, 4),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'general.company_name', 'SPREINVENTS', '2024-12-21 05:58:00', '2024-12-21 06:02:28'),
(2, 1, 'general.company_email', 'admin@spreinvents.in', '2024-12-21 05:58:00', '2024-12-21 06:02:28'),
(3, 1, 'general.default_locale', 'en-GB', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(4, 1, 'general.financial_start', '21-12', '2024-12-21 05:58:00', '2024-12-21 06:09:21'),
(5, 1, 'general.timezone', 'Asia/Kolkata', '2024-12-21 05:58:00', '2024-12-21 06:09:21'),
(6, 1, 'general.date_format', 'd M Y', '2024-12-21 05:58:00', '2024-12-21 06:09:21'),
(7, 1, 'general.date_separator', 'space', '2024-12-21 05:58:00', '2024-12-21 06:09:21'),
(8, 1, 'general.percent_position', 'after', '2024-12-21 05:58:00', '2024-12-21 06:09:21'),
(9, 1, 'general.default_payment_method', 'offlinepayment.cash.1', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(10, 1, 'general.email_protocol', 'mail', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(11, 1, 'general.email_sendmail_path', '/usr/sbin/sendmail -bs', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(12, 1, 'general.send_item_reminder', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(13, 1, 'general.schedule_time', '09:00', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(14, 1, 'general.admin_theme', 'skin-green-light', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(15, 1, 'general.list_limit', '25', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(16, 1, 'general.use_gravatar', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(17, 1, 'general.session_handler', 'file', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(18, 1, 'general.session_lifetime', '30', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(19, 1, 'general.file_size', '2', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(20, 1, 'general.file_types', 'pdf,jpeg,jpg,png', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(21, 1, 'general.wizard', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(22, 1, 'general.company_address', '<p>Patna, Bihar</p>', '2024-12-21 05:58:00', '2024-12-21 06:02:28'),
(23, 1, 'general.company_logo', '', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(24, 1, 'general.company_tax_number', NULL, '2024-12-21 06:02:28', '2024-12-21 06:02:28'),
(25, 1, 'general.company_phone', NULL, '2024-12-21 06:02:28', '2024-12-21 06:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `sms_apis`
--

CREATE TABLE `sms_apis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `gateway` enum('twilio','nexmo','plivo','clickatell') NOT NULL,
  `auth_id` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `sender_number` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_apis`
--

INSERT INTO `sms_apis` (`id`, `company_id`, `gateway`, `auth_id`, `auth_token`, `api_id`, `sender_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'twilio', '', '', '', '', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(2, 1, 'nexmo', '', '', '', '', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(3, 1, 'plivo', '', '', '', '', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00'),
(4, 1, 'clickatell', '', '', '', '', '0', '2024-12-21 05:58:00', '2024-12-21 05:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_campaigns`
--

CREATE TABLE `sms_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `sms_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `schedule_time` datetime NOT NULL,
  `contact_type` varchar(255) NOT NULL,
  `status` enum('Pending','Processing','Completed','Failed') NOT NULL DEFAULT 'Pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_campaign_logs`
--

CREATE TABLE `sms_campaign_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sms_campaign_id` bigint(20) UNSIGNED NOT NULL,
  `sms_api_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtp_configurations`
--

CREATE TABLE `smtp_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` varchar(255) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_type` enum('default','tls','ssl') NOT NULL DEFAULT 'default',
  `smtp_password` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` double(15,4) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `company_id`, `name`, `rate`, `enabled`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, '18% GST', 18.0000, 1, 'exclusive', '2024-12-21 06:07:56', '2024-12-21 06:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `launched` varchar(255) NOT NULL,
  `old_version` varchar(255) DEFAULT NULL,
  `new_version` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `name`, `launched`, `old_version`, `new_version`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'V 1.0', '1 February 2022', 'Not Available', 'V 1.0', 'Initial Release', '1', '2024-12-21 05:58:01', '2024-12-21 05:58:01'),
(2, 'V 1.1', '24 February 2022', 'V 1.0', 'V 1.1', 'RTL Support, Arabic Support, Front-end Language Support', '1', '2024-12-21 05:58:01', '2024-12-21 05:58:01'),
(3, 'V 1.2', '1 September 2022', 'V 1.1', 'V 1.2', 'Add file or image file on patient case study, Role Change for doctor, Invoice select problem solved', '1', '2024-12-21 05:58:01', '2024-12-21 05:58:01'),
(4, 'V 2.0', '1 April 2023', 'V 1.2', 'V 2.0', 'Install problem solved, image & file upload issue solved, Add Role Base Permission, Add Calender Appointment view for Doctor & Patient', '1', '2024-12-21 05:58:01', '2024-12-21 05:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `photo`, `locale`, `date_of_birth`, `gender`, `blood_group`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'admin', 'admin@admin.com', NULL, '$2y$10$dkhv0/ZRXA64PoKfKtQq/O2e6jtCtTCwHvwGtl8WAYyfao9ba.P0m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'cxTK2yJHkdqOc9QdPlT69So9H2h7MndliE6hR3IlUzsJIb51ZeNYKY5gSHsD', '2024-12-21 05:58:01', '2024-12-21 05:58:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_companies`
--

CREATE TABLE `user_companies` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_companies`
--

INSERT INTO `user_companies` (`user_id`, `company_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_headers`
--
ALTER TABLE `account_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_settings`
--
ALTER TABLE `application_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_company_id_code_unique` (`company_id`,`code`),
  ADD KEY `currencies_company_id_index` (`company_id`);

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_schedules`
--
ALTER TABLE `doctor_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_campaign_logs`
--
ALTER TABLE `email_campaign_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `front_ends`
--
ALTER TABLE `front_ends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `front_ends_page_unique` (`page`);

--
-- Indexes for table `hospital_departments`
--
ALTER TABLE `hospital_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hospital_departments_name_unique` (`name`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `insurances_name_unique` (`name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
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
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_report_templates`
--
ALTER TABLE `lab_report_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_report_templates_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_company_id_key_unique` (`company_id`,`key`),
  ADD KEY `settings_company_id_index` (`company_id`);

--
-- Indexes for table `sms_apis`
--
ALTER TABLE `sms_apis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_campaigns`
--
ALTER TABLE `sms_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_campaign_logs`
--
ALTER TABLE `sms_campaign_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sms_templates_name_unique` (`name`);

--
-- Indexes for table `smtp_configurations`
--
ALTER TABLE `smtp_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_company_id_index` (`company_id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_companies`
--
ALTER TABLE `user_companies`
  ADD PRIMARY KEY (`user_id`,`company_id`,`user_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_headers`
--
ALTER TABLE `account_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `application_settings`
--
ALTER TABLE `application_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_schedules`
--
ALTER TABLE `doctor_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_campaigns`
--
ALTER TABLE `email_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_campaign_logs`
--
ALTER TABLE `email_campaign_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_ends`
--
ALTER TABLE `front_ends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hospital_departments`
--
ALTER TABLE `hospital_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_report_templates`
--
ALTER TABLE `lab_report_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `patient_appointments`
--
ALTER TABLE `patient_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient_case_studies`
--
ALTER TABLE `patient_case_studies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sms_apis`
--
ALTER TABLE `sms_apis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_campaigns`
--
ALTER TABLE `sms_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_campaign_logs`
--
ALTER TABLE `sms_campaign_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smtp_configurations`
--
ALTER TABLE `smtp_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
