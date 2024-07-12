-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 12 juil. 2024 à 15:49
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `erp_sez`
--

-- --------------------------------------------------------

--
-- Structure de la table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `agents`
--

INSERT INTO `agents` (`id`, `name`, `country_id`, `contact`, `s_contact`, `address`, `code`, `percent`, `type`, `account_group`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ag 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-07-06 09:51:31', '2024-07-06 09:51:36');

-- --------------------------------------------------------

--
-- Structure de la table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `banks`
--

INSERT INTO `banks` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `beam_receive_from_weavers`
--

CREATE TABLE `beam_receive_from_weavers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `blends`
--

CREATE TABLE `blends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `blends`
--

INSERT INTO `blends` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blend 2', 1, '2024-07-05 10:00:45', '2024-07-07 08:45:30'),
(2, 'Blend 1', 1, '2024-07-07 08:45:21', '2024-07-07 08:45:21');

-- --------------------------------------------------------

--
-- Structure de la table `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `address_1` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_3` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_pincode` int(11) DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_no` int(11) DEFAULT NULL,
  `buyer_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_country_id` int(11) DEFAULT NULL,
  `bank_state_id` int(11) DEFAULT NULL,
  `state_code` int(11) DEFAULT NULL,
  `bank_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `bank_city_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `credit_limit` double DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `gst_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consignee_as_buyer` tinyint(1) DEFAULT NULL,
  `account_group` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_group_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `pan` int(11) DEFAULT NULL,
  `port_landing` int(11) DEFAULT NULL,
  `port_destination` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_self` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `buyers`
--

INSERT INTO `buyers` (`id`, `name`, `gst`, `country_id`, `state_id`, `address_1`, `address_2`, `address_3`, `city_id`, `phone`, `buyer_pincode`, `email`, `buyer_no`, `buyer_code`, `bank`, `bank_country_id`, `bank_state_id`, `state_code`, `bank_address`, `pincode`, `bank_city_id`, `is_active`, `credit_limit`, `interest`, `gst_type`, `consignee_as_buyer`, `account_group`, `vendor_group_id`, `tax_id`, `pan`, `port_landing`, `port_destination`, `currency`, `is_self`, `created_at`, `updated_at`) VALUES
(1, 'buyer 111', 11, 1, 1, '111', '111', '111', 1, '11', 11, '111@11.11', 11, '11', '11', 1, 1, 11, '11', 11, 1, 1, 11, 11, 'registered_b2b', 1, 'land', 1, 11, 11, 1, 'bangalore', 'usd', 1, '2024-07-07 10:02:22', '2024-07-11 15:32:21');

-- --------------------------------------------------------

--
-- Structure de la table `buyer_representatives`
--

CREATE TABLE `buyer_representatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `representative_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `buyer_representatives`
--

INSERT INTO `buyer_representatives` (`id`, `buyer_id`, `representative_name`, `representative_phone`, `created_at`, `updated_at`) VALUES
(5, 1, '333', '333', '2024-07-11 15:32:21', '2024-07-11 15:32:21');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'city A', 1, '2024-07-02 10:55:34', '2024-07-02 10:55:34');

-- --------------------------------------------------------

--
-- Structure de la table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `colors`
--

INSERT INTO `colors` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'red', '', 1, '2024-07-06 15:49:05', '2024-07-06 15:49:05'),
(2, 'green', '', 1, '2024-07-06 15:49:12', '2024-07-06 15:49:12'),
(3, 'yellow', '', 1, '2024-07-06 15:49:20', '2024-07-06 15:49:20');

-- --------------------------------------------------------

--
-- Structure de la table `consignees`
--

CREATE TABLE `consignees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gstn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `container_sizes`
--

CREATE TABLE `container_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `container_sizes`
--

INSERT INTO `container_sizes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `contracts`
--

INSERT INTO `contracts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'contract 1', NULL, NULL),
(2, 'contract 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `coparts`
--

CREATE TABLE `coparts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `costings`
--

CREATE TABLE `costings` (
  `id` int(11) NOT NULL,
  `costing_number` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sourcing_id` int(11) DEFAULT NULL,
  `weave_factor_id` int(11) DEFAULT NULL,
  `quality` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shafts` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marketing_executive` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buyer_reference` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_warp_butta` tinyint(1) DEFAULT NULL,
  `is_weft_butta` tinyint(1) DEFAULT NULL,
  `is_warp2_sizing_count` tinyint(1) DEFAULT NULL,
  `is_seersucker` tinyint(1) DEFAULT NULL,
  `grey_width` double DEFAULT NULL,
  `epi_difference` double DEFAULT NULL,
  `meters_per_120yards` double DEFAULT NULL,
  `warp_crimp` double DEFAULT NULL,
  `total_ends` double DEFAULT NULL,
  `margin_percent` double DEFAULT NULL,
  `target_price` double DEFAULT NULL,
  `order_quantity` double DEFAULT NULL,
  `sizing_per_kg` double DEFAULT NULL,
  `weaving_charges` double DEFAULT NULL,
  `fabric_processing_cost` double DEFAULT NULL,
  `freight_per_kg_mtr` double DEFAULT NULL,
  `packaging_charges` double DEFAULT NULL,
  `butta_cutting_per_mtr` double DEFAULT NULL,
  `yarn_wastage` double DEFAULT NULL,
  `value_loss` double DEFAULT NULL,
  `interest_etc` double DEFAULT NULL,
  `payment_term` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commission_cd` double DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_cost_rate` tinyint(1) DEFAULT NULL,
  `other_cost_remarks` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_remarks` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'india', 'ind', 1, '2024-07-07 08:51:19', '2024-07-07 08:51:19'),
(2, 'Morocco', 'Mrc', 1, '2024-07-07 08:51:29', '2024-07-07 08:51:29');

-- --------------------------------------------------------

--
-- Structure de la table `counts`
--

CREATE TABLE `counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `counts`
--

INSERT INTO `counts` (`id`, `count`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COUNT1', 1, '2024-07-06 14:59:15', '2024-07-06 14:59:15'),
(2, 'COUNT2', 1, '2024-07-06 14:59:22', '2024-07-06 14:59:22'),
(3, '1', 1, '2024-07-06 15:22:31', '2024-07-06 15:22:31');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'custom', 1, '2024-07-05 10:00:45', '2024-07-06 09:52:57');

-- --------------------------------------------------------

--
-- Structure de la table `delivery_terms`
--

CREATE TABLE `delivery_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `domestic_buyers`
--

CREATE TABLE `domestic_buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_state_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `credit_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consignee_as_buyer` tinyint(1) NOT NULL DEFAULT 1,
  `account_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tcs_applied` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tcs_declaration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collectee_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `market` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_self` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `domestic_buyer_representatives`
--

CREATE TABLE `domestic_buyer_representatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `representative_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `filaments`
--

CREATE TABLE `filaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `filaments`
--

INSERT INTO `filaments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fil 1', 1, '2024-07-05 10:00:45', '2024-07-07 08:44:47'),
(2, 'Fil 2', 1, '2024-07-07 08:44:52', '2024-07-07 08:44:52');

-- --------------------------------------------------------

--
-- Structure de la table `godown_locations`
--

CREATE TABLE `godown_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `g_s_t_s`
--

CREATE TABLE `g_s_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gst_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `igst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `g_s_t_s`
--

INSERT INTO `g_s_t_s` (`id`, `gst_type`, `igst`, `sgst`, `cgst`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '0.00', '0.00', 1, '2024-07-02 10:58:04', '2024-07-02 10:58:04'),
(2, '2', '0.00', '2', '3', 1, '2024-07-02 10:58:17', '2024-07-02 10:58:17');

-- --------------------------------------------------------

--
-- Structure de la table `inspection_types`
--

CREATE TABLE `inspection_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `inspection_types`
--

INSERT INTO `inspection_types` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'insp1', 'inspection 1', 1, NULL, NULL),
(2, 'insp 2', 'inspection 2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `invoice_settings`
--

CREATE TABLE `invoice_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `invoice_settings`
--

INSERT INTO `invoice_settings` (`id`, `key`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tes', 'test', 1, '2024-06-24 06:47:04', '2024-06-24 06:47:04');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `jobwork_fabric_receives`
--

CREATE TABLE `jobwork_fabric_receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `jobwork_finished_fabric_receives`
--

CREATE TABLE `jobwork_finished_fabric_receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `jobwork_process_contracts`
--

CREATE TABLE `jobwork_process_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `jobwork_process_contract_issues`
--

CREATE TABLE `jobwork_process_contract_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `jobwork_weaving_weft_issues`
--

CREATE TABLE `jobwork_weaving_weft_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `loom_types`
--

CREATE TABLE `loom_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `loom_types`
--

INSERT INTO `loom_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'loom type 4', 1, '2024-07-05 15:20:36', '2024-07-05 15:20:36'),
(3, '111', 1, '2024-07-05 15:41:30', '2024-07-05 15:41:35');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_10_063601_create_invoice_settings_table', 1),
(5, '2024_05_10_110520_create_buyers_table', 1),
(6, '2024_05_23_144727_create_certifications_table', 1),
(7, '2024_05_23_145328_create_consignees_table', 1),
(8, '2024_05_23_145341_create_shades_table', 1),
(9, '2024_05_23_145350_create_vendors_table', 1),
(10, '2024_05_23_145609_create_vendor_groups_table', 1),
(11, '2024_05_23_145708_create_godown_locations_table', 1),
(12, '2024_05_23_145733_create_sales_types_table', 1),
(13, '2024_05_23_145744_create_g_s_t_s_table', 1),
(14, '2024_05_23_145754_create_coparts_table', 1),
(15, '2024_05_23_145804_create_contracts_table', 1),
(16, '2024_05_23_145814_create_agents_table', 1),
(17, '2024_05_23_145823_create_transportations_table', 1),
(18, '2024_05_23_145834_create_weave_types_table', 1),
(19, '2024_05_23_145846_create_loom_types_table', 1),
(20, '2024_05_23_145900_create_delivery_terms_table', 1),
(21, '2024_05_23_145911_create_inspection_types_table', 1),
(22, '2024_05_23_145919_create_packing_types_table', 1),
(23, '2024_05_23_145939_create_mills_table', 1),
(24, '2024_05_23_150037_create_qualities_table', 1),
(25, '2024_05_23_150048_create_countries_table', 1),
(26, '2024_05_23_150055_create_payment_terms_table', 1),
(27, '2024_06_04_223330_create_jobwork_weaving_weft_issues_table', 1),
(28, '2024_06_05_103810_create_beam_receive_from_weavers_table', 1),
(29, '2024_06_05_104013_create_jobwork_process_contracts_table', 1),
(30, '2024_06_05_104031_create_jobwork_process_contract_issues_table', 1),
(31, '2024_06_05_104054_create_jobwork_finished_fabric_receives_table', 1),
(32, '2024_06_05_124644_create_sizing_plans_table', 1),
(33, '2024_06_05_132702_create_yarn_processing_contracts_table', 1),
(34, '2024_06_05_132723_create_yarn_processing_contract_issues_table', 1),
(35, '2024_06_05_132747_create_yarn_processing_receives_table', 1),
(36, '2024_06_05_132806_create_yarn_processing_returns_table', 1),
(37, '2024_06_05_151144_create_jobwork_fabric_receives_table', 1),
(38, '2024_06_05_151258_create_sale_returns_table', 1),
(39, '2024_06_05_151323_create_process_returns_table', 1),
(40, '2024_06_05_151344_create_purchase_returns_table', 1),
(41, '2024_06_09_201227_create_count_table', 1),
(42, '2024_06_19_182149_create_states_table', 1),
(43, '2024_06_21_044253_create_cities_table', 1),
(44, '2024_06_21_185653_create_pre_carriage_table', 1),
(45, '2024_06_21_192203_create_weave_table', 1),
(46, '2024_06_22_190001_create_packings_table', 1),
(47, '2024_06_22_230124_create_ply_table', 1),
(48, '2024_06_22_230606_create_uom_table', 1),
(49, '2024_06_22_231521_create_variety_table', 1),
(50, '2024_06_22_232459_create_ports_table', 1),
(51, '2024_06_22_234252_create_yarn_types_table', 1),
(52, '2024_06_23_013627_create_yarns_table', 1),
(53, '2024_06_23_161848_create_selvedge_table', 2),
(54, '2024_06_24_162043_create_buyer_representive_table', 3),
(55, '2024_06_25_161018_create_domestic_buyers_table', 3),
(56, '2024_06_25_161659_create_domestic_buyer_representatives_table', 3),
(57, '2024_06_25_222524_create_colors_table', 3),
(58, '2024_06_27_002229_create_sorts_table', 4),
(59, '2024_06_27_002240_create_sort_warp_table', 4),
(60, '2024_06_27_002247_create_sort_weft_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `mills`
--

CREATE TABLE `mills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `mills`
--

INSERT INTO `mills` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MILL1', 1, '2024-07-06 15:00:59', '2024-07-06 15:00:59'),
(2, 'MILL2', 1, '2024-07-06 15:01:07', '2024-07-06 15:01:07');

-- --------------------------------------------------------

--
-- Structure de la table `packings`
--

CREATE TABLE `packings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `packing_types`
--

CREATE TABLE `packing_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `paper_tube_sizes`
--

CREATE TABLE `paper_tube_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `paper_tube_sizes`
--

INSERT INTO `paper_tube_sizes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'size 35/25', 1, '2024-07-05 10:00:45', '2024-07-07 08:43:40'),
(2, 'size 25/15', 1, '2024-07-07 08:43:50', '2024-07-07 08:43:50');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms_for` int(11) DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `interest` double NOT NULL DEFAULT 0,
  `advance` double NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `name`, `description`, `payment_terms_for`, `days`, `interest`, `advance`, `status`, `created_at`, `updated_at`) VALUES
(2, 'term 122', 'term\r\nterm 1', 1, 2, 10, 10, 1, '2024-07-05 15:10:37', '2024-07-09 11:21:31');

-- --------------------------------------------------------

--
-- Structure de la table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `ply`
--

CREATE TABLE `ply` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `ply`
--

INSERT INTO `ply` (`id`, `ply`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PLY1', 1, '2024-07-06 14:59:41', '2024-07-06 14:59:41'),
(2, 'PLY2', 1, '2024-07-06 14:59:47', '2024-07-06 14:59:47'),
(3, '8', 1, '2024-07-06 15:23:32', '2024-07-06 15:23:32');

-- --------------------------------------------------------

--
-- Structure de la table `ports`
--

CREATE TABLE `ports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `ports`
--

INSERT INTO `ports` (`id`, `name`, `code`, `pin`, `description`, `city`, `state`, `status`, `created_at`, `updated_at`) VALUES
(1, '12154', 'aaa', '1254', 'azaz', 1, 1, 1, '2024-07-07 09:00:01', '2024-07-07 09:00:01');

-- --------------------------------------------------------

--
-- Structure de la table `pre_carriage`
--

CREATE TABLE `pre_carriage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `process_returns`
--

CREATE TABLE `process_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `qualities`
--

CREATE TABLE `qualities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `sales_co_ordinators`
--

CREATE TABLE `sales_co_ordinators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sales_co_ordinators`
--

INSERT INTO `sales_co_ordinators` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_type_id` int(11) DEFAULT NULL,
  `contract_type_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `sourcing_executive_id` int(11) DEFAULT NULL,
  `ship_to_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `shipping_terms_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `container_size_id` int(11) DEFAULT NULL,
  `payment_terms_id` int(11) DEFAULT NULL,
  `terms_conditions_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sales_co_ordinator_id` int(11) DEFAULT NULL,
  `so_type_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `confirmation_date` date DEFAULT NULL,
  `pi_date` date DEFAULT NULL,
  `po_no` double DEFAULT NULL,
  `adress` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_adress` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_contract_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_percent` double DEFAULT NULL,
  `port_loading` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port_destination` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `shipping_terms_det` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval` int(1) DEFAULT NULL COMMENT '-1: canceled, 0: Hold or 1: Approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sales_orders`
--

INSERT INTO `sales_orders` (`id`, `order_no`, `invoice_type_id`, `contract_type_id`, `buyer_id`, `tax_id`, `sourcing_executive_id`, `ship_to_id`, `agent_id`, `city_id`, `shipping_terms_id`, `bank_id`, `container_size_id`, `payment_terms_id`, `terms_conditions_id`, `user_id`, `sales_co_ordinator_id`, `so_type_id`, `order_date`, `po_date`, `confirmation_date`, `pi_date`, `po_no`, `adress`, `ship_adress`, `sale_contract_no`, `agent_percent`, `port_loading`, `port_destination`, `insurance`, `shipping_terms_det`, `shipping_method`, `remark`, `approval`, `created_at`, `updated_at`) VALUES
(13, 'HST/EX01/13', 1, 2, 1, 11, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, NULL, '2024-07-11', '2024-07-04', '2024-07-13', '2024-07-11', 11, '1111', '1111', '11', 1, '1', '1', 1, '1', 'sea', '', NULL, '2024-07-10 08:40:31', '2024-07-12 08:01:38');

-- --------------------------------------------------------

--
-- Structure de la table `sales_order_details`
--

CREATE TABLE `sales_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_order_id` int(11) DEFAULT NULL,
  `finished_quality_id` int(11) DEFAULT NULL,
  `weave_type_id` int(11) DEFAULT NULL,
  `first_quality_id` int(11) DEFAULT NULL,
  `selvedge_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `inspection_type_id` int(11) DEFAULT NULL,
  `paper_tube_size_id` int(11) DEFAULT NULL,
  `costing_number` int(11) DEFAULT NULL,
  `hsn_code` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `rate_per_unit` double DEFAULT NULL,
  `val` double DEFAULT NULL,
  `frieght_charge` double DEFAULT NULL,
  `surcharge` double DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `inr_rate` double DEFAULT NULL,
  `piece_length` double DEFAULT NULL,
  `variation` double DEFAULT NULL,
  `fold` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yarn_det` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_sort` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction_factory` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fabric_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval` int(1) DEFAULT NULL COMMENT '-1: canceled, 0: Hold or 1: Approved	',
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sales_order_details`
--

INSERT INTO `sales_order_details` (`id`, `sales_order_id`, `finished_quality_id`, `weave_type_id`, `first_quality_id`, `selvedge_id`, `unit_id`, `inspection_type_id`, `paper_tube_size_id`, `costing_number`, `hsn_code`, `quantity`, `rate_per_unit`, `val`, `frieght_charge`, `surcharge`, `exchange_rate`, `inr_rate`, `piece_length`, `variation`, `fold`, `yarn_det`, `packing_type`, `buyer_sort`, `sort_code`, `instruction_factory`, `description`, `fabric_type`, `approval`, `comment`, `currency`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-05 10:00:45', '2024-07-05 13:26:19'),
(2, 6, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, '1', 'finished', NULL, NULL, 'usd', '2024-07-09 15:36:41', '2024-07-09 15:36:41'),
(3, 7, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, '1', 'finished', NULL, NULL, 'usd', '2024-07-09 15:38:21', '2024-07-09 15:38:21'),
(4, 8, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, '1', 'finished', NULL, NULL, 'usd', '2024-07-09 15:39:06', '2024-07-09 15:39:06'),
(5, 9, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, '1', 'finished', NULL, NULL, 'usd', '2024-07-09 15:42:38', '2024-07-09 15:42:38'),
(6, 10, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, NULL, '1', 'finished', NULL, NULL, 'usd', '2024-07-09 15:44:52', '2024-07-09 15:44:52'),
(7, 11, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, '', '1', 'finished', 0, '', 'usd', '2024-07-09 15:53:58', '2024-07-12 07:59:07'),
(8, 12, 1, 1, 7, 1, 1, NULL, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '1', NULL, '1', NULL, '', '1', 'finished', 1, '', 'usd', '2024-07-09 15:55:01', '2024-07-12 07:55:17'),
(9, 13, 1, 1, 1, NULL, 1, NULL, 1, 1, 1, 79, 1, 2, 1, 1, 1, 1, 1, 1, '1', '1', NULL, '1', NULL, '', '1', 'finished', 0, '', 'usd', '2024-07-10 08:40:31', '2024-07-12 08:01:38');

-- --------------------------------------------------------

--
-- Structure de la table `sales_order_sub_details`
--

CREATE TABLE `sales_order_sub_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_order_detail_id` int(11) DEFAULT NULL,
  `fcl` int(11) DEFAULT NULL,
  `po_lds` date DEFAULT NULL,
  `ex_factory_date` date DEFAULT NULL,
  `actual_ex_factory_date` date DEFAULT NULL,
  `lc_expire_date` date DEFAULT NULL,
  `lds_date` date DEFAULT NULL,
  `lc_no` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(150) DEFAULT NULL,
  `etd` date DEFAULT NULL,
  `eta` date DEFAULT NULL,
  `office_remark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factory_remark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sales_order_sub_details`
--

INSERT INTO `sales_order_sub_details` (`id`, `created_at`, `updated_at`, `sales_order_detail_id`, `fcl`, `po_lds`, `ex_factory_date`, `actual_ex_factory_date`, `lc_expire_date`, `lds_date`, `lc_no`, `line`, `etd`, `eta`, `office_remark`, `factory_remark`) VALUES
(1, '2024-07-05 10:00:45', '2024-07-05 13:26:19', NULL, NULL, '2024-07-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2024-07-09 15:38:21', '2024-07-09 15:38:21', 3, 1, NULL, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, '1', NULL),
(3, '2024-07-09 15:39:06', '2024-07-09 15:39:06', 4, 1, NULL, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, '1', NULL),
(4, '2024-07-09 15:44:52', '2024-07-09 15:44:52', 6, 1, NULL, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, '1', NULL),
(5, '2024-07-09 15:53:58', '2024-07-09 15:53:58', 7, 1, '2024-07-04', NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, '1', NULL),
(6, '2024-07-09 15:55:01', '2024-07-09 15:55:01', 8, 1, '2024-07-04', '2024-07-13', '2024-07-14', '2024-07-25', '2024-07-06', '1', 1, '2024-08-02', '2024-07-17', '1', NULL),
(7, '2024-07-10 08:40:31', '2024-07-11 15:33:01', 9, 5, '2024-07-10', '2024-07-10', '2024-07-10', '2024-07-10', '2024-07-10', '1', 1, '2024-07-10', '2024-07-10', '1', '1'),
(8, '2024-07-10 08:51:26', '2024-07-11 15:33:01', 9, 9, '2024-07-11', '2024-07-11', '2024-07-11', '2024-07-11', '2024-07-11', '2', 2, '2024-07-11', '2024-07-11', '2', '2');

-- --------------------------------------------------------

--
-- Structure de la table `sales_order_yarn_certifications`
--

CREATE TABLE `sales_order_yarn_certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_order_detail_id` int(11) DEFAULT NULL,
  `yarn_certification_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sales_order_yarn_certifications`
--

INSERT INTO `sales_order_yarn_certifications` (`id`, `sales_order_detail_id`, `yarn_certification_type_id`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19'),
(2, 4, 1, '2024-07-09 15:39:06', '2024-07-09 15:39:06'),
(3, 4, 1, '2024-07-09 15:39:06', '2024-07-09 15:39:06'),
(4, 6, 1, '2024-07-09 15:44:52', '2024-07-09 15:44:52'),
(5, 6, NULL, '2024-07-09 15:44:52', '2024-07-09 15:44:52'),
(6, 7, 1, '2024-07-09 15:53:58', '2024-07-09 15:53:58'),
(7, 7, NULL, '2024-07-09 15:53:58', '2024-07-09 15:53:58'),
(8, 8, 1, '2024-07-09 15:55:01', '2024-07-09 15:55:01'),
(9, 8, 1, '2024-07-09 15:55:01', '2024-07-09 15:55:01'),
(16, 9, 1, '2024-07-11 15:36:12', '2024-07-11 15:36:12'),
(17, 9, 1, '2024-07-11 15:36:12', '2024-07-11 15:36:12');

-- --------------------------------------------------------

--
-- Structure de la table `sales_types`
--

CREATE TABLE `sales_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `sale_returns`
--

CREATE TABLE `sale_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `selvedge`
--

CREATE TABLE `selvedge` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catch_cord_ends` double NOT NULL,
  `reed_count` double NOT NULL,
  `selvedge_width` double NOT NULL,
  `dents` double DEFAULT NULL,
  `ends_per_dent` double NOT NULL,
  `extra_ends` double DEFAULT NULL,
  `selvedge_ends` double DEFAULT NULL,
  `weave_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ends_per_heild` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ends_per_wire` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `selvedge`
--

INSERT INTO `selvedge` (`id`, `name`, `catch_cord_ends`, `reed_count`, `selvedge_width`, `dents`, `ends_per_dent`, `extra_ends`, `selvedge_ends`, `weave_id`, `ends_per_heild`, `status`, `ends_per_wire`, `created_at`, `updated_at`) VALUES
(1, 'selvedge1', 1, 2, 3, 0.12, 5, 6, 1.6, '2', 6, 1, 8, '2024-07-06 16:11:47', '2024-07-06 16:11:47');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ZxuU2xt4nI9ANg4l0s72BS7EW1zBcKAi4dI6VUmj', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRkNyU3IxYkZsOTk2UFg5aFdNMDlpd1AxQmYzdU14d21UTExEVzF4biI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovL2xvY2FsaG9zdC9leHBvcnRfc29fYWN0aW9ucy85L2VkaXQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cDovL2xvY2FsaG9zdC9hcHByb3ZhbC9leHBvcnRfc28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NzoiY29tcGFueSI7czozOiJzZXoiO30=', 1720774908);

-- --------------------------------------------------------

--
-- Structure de la table `set_single_doubles`
--

CREATE TABLE `set_single_doubles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `set_single_doubles`
--

INSERT INTO `set_single_doubles` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aa', 1, '2024-07-02 11:15:42', '2024-07-02 11:15:42'),
(2, 's 2', 1, '2024-07-02 11:36:07', '2024-07-02 11:36:07'),
(3, 's 3', 1, '2024-07-02 11:40:50', '2024-07-02 11:40:50');

-- --------------------------------------------------------

--
-- Structure de la table `shades`
--

CREATE TABLE `shades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_sort_id` int(11) DEFAULT NULL,
  `actual_sort_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `shades`
--

INSERT INTO `shades` (`id`, `name`, `parent_sort_id`, `actual_sort_id`, `created_at`, `updated_at`) VALUES
(1, 'red', 1, 8, '2024-07-07 13:52:49', '2024-07-10 14:58:27'),
(2, 'aaaaa', 1, 0, '2024-07-07 13:54:00', '2024-07-07 13:54:00'),
(3, 'green', 1, 0, '2024-07-07 13:57:25', '2024-07-07 13:57:25'),
(4, 'green', 1, 0, '2024-07-07 13:59:19', '2024-07-07 13:59:19'),
(5, 'green', 1, 0, '2024-07-07 13:59:36', '2024-07-07 13:59:36'),
(6, 'green aaaa', 1, 0, '2024-07-07 14:00:02', '2024-07-07 14:43:46'),
(7, 'aaaa', 7, 10, '2024-07-10 15:09:50', '2024-07-10 15:18:12');

-- --------------------------------------------------------

--
-- Structure de la table `shade_warps`
--

CREATE TABLE `shade_warps` (
  `id` int(11) NOT NULL,
  `shade_id` int(11) DEFAULT NULL,
  `warp_id` int(11) DEFAULT NULL,
  `actual_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `shade_warps`
--

INSERT INTO `shade_warps` (`id`, `shade_id`, `warp_id`, `actual_id`, `material_id`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 1, 1, '2024-07-07 13:59:36', '2024-07-07 13:59:36'),
(3, 6, NULL, 1, 1, '2024-07-07 14:44:32', '2024-07-07 14:44:32'),
(4, 1, NULL, 1, 1, '2024-07-07 14:44:55', '2024-07-07 14:44:55'),
(5, 7, 2, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(6, 7, 3, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(7, 7, 4, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(8, 7, 5, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(9, 7, 6, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(10, 7, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(11, 7, 8, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50');

-- --------------------------------------------------------

--
-- Structure de la table `shade_wefts`
--

CREATE TABLE `shade_wefts` (
  `id` int(11) NOT NULL,
  `shade_id` int(11) DEFAULT NULL,
  `actual_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `shade_wefts`
--

INSERT INTO `shade_wefts` (`id`, `shade_id`, `actual_id`, `material_id`, `created_at`, `updated_at`) VALUES
(2, 6, 1, 1, '2024-07-07 14:44:32', '2024-07-07 14:44:32'),
(3, 1, 1, 1, '2024-07-07 14:44:55', '2024-07-07 14:44:55'),
(4, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(5, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(6, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(7, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(8, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50'),
(9, 7, 1, 1, '2024-07-10 15:09:50', '2024-07-10 15:09:50');

-- --------------------------------------------------------

--
-- Structure de la table `shipping_terms`
--

CREATE TABLE `shipping_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `shipping_terms`
--

INSERT INTO `shipping_terms` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `sizing_plans`
--

CREATE TABLE `sizing_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `sorts`
--

CREATE TABLE `sorts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yarn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reed_space` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_ends` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pick_insert` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width_cm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `composition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loom_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selvedge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ends_per_dent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selvedge_ends` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ends_with_selvedge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beam_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selvedge_drawing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tube_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_warp_patterns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weft_patterns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_warp_grams` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weft_grams` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cal_glm_shrinkage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cal_gsm_shrinkage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cal_glm_wihtout_shrinkage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cal_gsm_without_shrinkage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act_glm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `act_gsm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_loom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peg_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_paper_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fabric_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thread_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fabric_cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fabric_cover_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `hsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `igst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cgst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sgst` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsn_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sorts`
--

INSERT INTO `sorts` (`id`, `fabric`, `sort_no`, `details`, `weave`, `create_for`, `code`, `company`, `numeric`, `yarn`, `reed`, `denting`, `epi`, `width`, `e_width`, `reed_space`, `total_ends`, `picks`, `pick_insert`, `width_cm`, `composition`, `size`, `loom_type`, `selvedge`, `dents`, `s_width`, `ends_per_dent`, `selvedge_ends`, `ends_with_selvedge`, `beam_type`, `selvedge_drawing`, `tube_size`, `total_warp_patterns`, `total_weft_patterns`, `total_warp_grams`, `total_weft_grams`, `cal_glm_shrinkage`, `cal_gsm_shrinkage`, `cal_glm_wihtout_shrinkage`, `cal_gsm_without_shrinkage`, `master_quality`, `act_glm`, `act_gsm`, `on_loom`, `drawing`, `peg_plan`, `display_quality`, `design_paper_image`, `fabric_image`, `thread_count`, `fabric_cover`, `fabric_cover_range`, `remarks`, `is_master`, `status`, `hsn`, `igst`, `cgst`, `sgst`, `cess`, `hsn_description`, `created_at`, `updated_at`) VALUES
(1, 'grey', '1', '1', '2', 'export', '11', NULL, '11', '11', '11', '11', '60.5', '11', '11', '22', '1331', '1', '11', NULL, '11', '11', '3', '1', '0.12', '3', '5', '1.6', '1336.12', NULL, '111', NULL, '112', '22', '222', '22', '22', '22', '22', '22', NULL, '22', '22', '22', '22', '22', '22', NULL, NULL, NULL, '22', '22', '22', 0, 1, '66', '1', '2', '3', '22', '66', '2024-07-06 16:32:22', '2024-07-07 17:13:22'),
(2, 'grey', '333', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', '83.82000000000001', '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', '1', '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-07 16:37:17', '2024-07-07 16:37:17'),
(3, 'grey', '333', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', '83.82000000000001', '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', '1', '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-07 16:37:38', '2024-07-07 16:37:38'),
(4, 'grey', '333', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', '83.82000000000001', '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', '1', '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-07 16:37:51', '2024-07-07 16:37:51'),
(5, 'grey', '333', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', '83.82000000000001', '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', '1', '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-07 16:38:06', '2024-07-07 16:38:06'),
(6, 'grey', '333', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', '83.82000000000001', '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', '1', '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-07 16:39:00', '2024-07-07 16:39:00'),
(7, 'grey', '333', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', NULL, '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', NULL, '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-07 16:40:59', '2024-07-07 17:05:00'),
(8, 'grey', '1-red', '1', '2', 'export', '11', NULL, '11', '11', '11', '11', '60.5', '11', '11', '22', '1331', '1', '11', NULL, '11', '11', '3', '1', '0.12', '3', '5', '1.6', '1336.12', NULL, '111', NULL, '112', '22', '222', '22', '22', '22', '22', '22', NULL, '22', '22', '22', '22', '22', '22', NULL, NULL, NULL, '22', '22', '22', 0, 1, '66', '1', '2', '3', '22', '66', '2024-07-10 14:58:27', '2024-07-10 14:58:27'),
(9, 'grey', '333-aaaa', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', NULL, '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', NULL, '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(10, 'grey', '333-aaaa', '333', '1', 'domestic', '33', NULL, '33', '33', '33', '33', '544.5', '33', '33', '66', '35937', '33', '33', NULL, '33', '33', '3', '1', '0.12', '3', '5', '1.6', '35942.12', NULL, '33', '1', '333', '33', '33', '33', '33', '33', '33', '33', '1', '33', '33', '33', '33', '33', '33', NULL, NULL, '33', '33', '33', '33', 1, 1, '3', '1', '2', '3', '3', '3', '2024-07-10 15:18:12', '2024-07-10 15:18:12');

-- --------------------------------------------------------

--
-- Structure de la table `sort_warp`
--

CREATE TABLE `sort_warp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `warp_pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warp_material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warp_shrinkage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warp_total_ends` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warp_grams_meters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sort_warp`
--

INSERT INTO `sort_warp` (`id`, `sort`, `warp_pattern`, `warp_material`, `warp_shrinkage`, `warp_total_ends`, `warp_grams_meters`, `created_at`, `updated_at`) VALUES
(1, 1, '25555', '1', '22', '1336.12', '0.0005', '2024-07-06 16:32:22', '2024-07-06 16:32:22'),
(2, 7, '21', '1', '3', NULL, '0.0121', '2024-07-07 16:40:59', '2024-07-07 17:07:23'),
(3, 7, '22', '1', '4', NULL, '0.0123', '2024-07-07 16:40:59', '2024-07-07 17:07:23'),
(4, 7, '23', '1', '5', NULL, '0.0124', '2024-07-07 16:40:59', '2024-07-07 17:07:23'),
(5, 7, '24', '1', '3', NULL, '0.0121', '2024-07-07 17:05:00', '2024-07-07 17:07:23'),
(6, 7, '25', '1', '4', NULL, '0.0123', '2024-07-07 17:05:00', '2024-07-07 17:07:23'),
(7, 7, '26', '1', '5', NULL, '0.0124', '2024-07-07 17:05:00', '2024-07-07 17:07:23'),
(8, 7, '27', '1', '27', '27', '0.0150', '2024-07-07 17:07:23', '2024-07-07 17:07:23'),
(9, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(10, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(11, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(12, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(13, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(14, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(15, 9, '25555', '1', '22', '1336.12', '0.0005', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(16, 10, '21', '1', '3', NULL, '0.0121', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(17, 10, '22', '1', '4', NULL, '0.0123', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(18, 10, '23', '1', '5', NULL, '0.0124', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(19, 10, '24', '1', '3', NULL, '0.0121', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(20, 10, '25', '1', '4', NULL, '0.0123', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(21, 10, '26', '1', '5', NULL, '0.0124', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(22, 10, '27', '1', '27', '27', '0.0150', '2024-07-10 15:18:12', '2024-07-10 15:18:12');

-- --------------------------------------------------------

--
-- Structure de la table `sort_weft`
--

CREATE TABLE `sort_weft` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `weft_pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weft_material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weft_shrinkage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weft_picks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weft_grams_meters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sort_weft`
--

INSERT INTO `sort_weft` (`id`, `sort`, `weft_pattern`, `weft_material`, `weft_shrinkage`, `weft_picks`, `weft_grams_meters`, `created_at`, `updated_at`) VALUES
(1, 1, '22', '1', '33', '1', '0.0273', '2024-07-06 16:32:22', '2024-07-06 16:32:22'),
(2, 7, '66', '1', '6', '33', '2.1567', '2024-07-07 16:40:59', '2024-07-07 16:40:59'),
(3, 7, '77', '1', '7', '33', '2.1771', '2024-07-07 16:40:59', '2024-07-07 16:40:59'),
(4, 7, '88', '1', '8', '33', '2.1974', '2024-07-07 16:40:59', '2024-07-07 16:40:59'),
(5, 7, '66', '1', '6', '33', '2.1567', '2024-07-07 17:05:00', '2024-07-07 17:05:00'),
(6, 7, '77', '1', '7', '33', '2.1771', '2024-07-07 17:05:00', '2024-07-07 17:05:00'),
(7, 7, '88', '1', '8', '33', '2.1974', '2024-07-07 17:05:00', '2024-07-07 17:05:00'),
(8, 9, '22', '1', '33', '1', '0.0273', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(9, 9, '22', '1', '33', '1', '0.0273', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(10, 9, '22', '1', '33', '1', '0.0273', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(11, 9, '22', '1', '33', '1', '0.0273', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(12, 9, '22', '1', '33', '1', '0.0273', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(13, 9, '22', '1', '33', '1', '0.0273', '2024-07-10 15:09:59', '2024-07-10 15:09:59'),
(14, 10, '66', '1', '6', '33', '2.1567', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(15, 10, '77', '1', '7', '33', '2.1771', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(16, 10, '88', '1', '8', '33', '2.1974', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(17, 10, '66', '1', '6', '33', '2.1567', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(18, 10, '77', '1', '7', '33', '2.1771', '2024-07-10 15:18:12', '2024-07-10 15:18:12'),
(19, 10, '88', '1', '8', '33', '2.1974', '2024-07-10 15:18:12', '2024-07-10 15:18:12');

-- --------------------------------------------------------

--
-- Structure de la table `sourcing_executives`
--

CREATE TABLE `sourcing_executives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `sourcing_executives`
--

INSERT INTO `sourcing_executives` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sourc', 1, '2024-07-05 10:00:45', '2024-07-06 10:02:51');

-- --------------------------------------------------------

--
-- Structure de la table `so_types`
--

CREATE TABLE `so_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `so_types`
--

INSERT INTO `so_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `states`
--

INSERT INTO `states` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'state1', 1, '2024-07-07 08:52:05', '2024-07-07 08:52:05'),
(2, 'state2', 1, '2024-07-07 08:52:14', '2024-07-07 08:52:14');

-- --------------------------------------------------------

--
-- Structure de la table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `tpms`
--

CREATE TABLE `tpms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `tpms`
--

INSERT INTO `tpms` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TPm 1', 1, '2024-07-05 10:00:45', '2024-07-07 08:45:05'),
(2, 'TPM 2', 1, '2024-07-07 08:45:10', '2024-07-07 08:45:10');

-- --------------------------------------------------------

--
-- Structure de la table `transportations`
--

CREATE TABLE `transportations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `uom`
--

CREATE TABLE `uom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_meter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `uom`
--

INSERT INTO `uom` (`id`, `code`, `description`, `to_meter`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'YOM1', '', '5', 'fabric', 1, '2024-07-06 15:00:29', '2024-07-06 15:00:29'),
(2, 'UOM2', '', '10', 'yarn_unit', 1, '2024-07-06 15:00:42', '2024-07-06 15:00:42'),
(3, 'UOM3', '', '5', 'other_item', 1, '2024-07-06 15:08:44', '2024-07-06 15:08:44');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@demo.com', NULL, '$2y$12$3prcrLIyhvZ15jcqiMvRG.4AiDJALjPzFFEcOCIQqNmv8yk8yV6gO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `variety`
--

CREATE TABLE `variety` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `variety`
--

INSERT INTO `variety` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VARIETY1', 'VRT1', 1, '2024-07-06 15:01:24', '2024-07-06 15:01:24'),
(2, 'VARIETY2', 'VRT2', 1, '2024-07-06 15:01:34', '2024-07-06 15:01:34');

-- --------------------------------------------------------

--
-- Structure de la table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_reg_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_group_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tds` tinyint(1) DEFAULT NULL,
  `deductee_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `prefix`, `contact_name`, `contact`, `landline`, `email`, `state_id`, `city_id`, `pin`, `fax`, `gstn`, `rating`, `preference`, `interest`, `gst_reg_type`, `vendor_group_id`, `pan`, `address`, `account_group`, `is_tds`, `deductee_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AAAA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vendor_groups`
--

CREATE TABLE `vendor_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_internal` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `vendor_groups`
--

INSERT INTO `vendor_groups` (`id`, `group`, `group_type`, `code`, `is_internal`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VG1', NULL, NULL, 0, 1, NULL, NULL),
(2, 'VG2', NULL, NULL, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `weaves`
--

CREATE TABLE `weaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_heald_frame` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `weaves`
--

INSERT INTO `weaves` (`id`, `name`, `no_of_heald_frame`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Weave1', '2', 1, '2024-07-06 16:08:47', '2024-07-06 16:08:47'),
(2, 'Weave2', '5', 1, '2024-07-06 16:08:55', '2024-07-06 16:08:55');

-- --------------------------------------------------------

--
-- Structure de la table `weave_factors`
--

CREATE TABLE `weave_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `weave_factors`
--

INSERT INTO `weave_factors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'weave', 0, '2024-07-05 10:00:45', '2024-07-06 10:06:36');

-- --------------------------------------------------------

--
-- Structure de la table `weave_types`
--

CREATE TABLE `weave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `yarns`
--

CREATE TABLE `yarns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL,
  `ply` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variety` int(11) NOT NULL,
  `filaments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tpm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_uom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danger` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `igst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cess` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_apply` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `yarns`
--

INSERT INTO `yarns` (`id`, `count`, `ply`, `type`, `unit`, `variety`, `filaments`, `tpm`, `color`, `reorder`, `buy_uom`, `blend`, `danger`, `name`, `display_name`, `conversion`, `hsn`, `igst`, `cgst`, `sgst`, `cess`, `is_apply`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 1, '2', 1, '2', '1', '2', 'aaa', '3', '1', 'aaaa', '8/1 UOM2 TYPE1 VRT1 green', '8/1 UOM2 TYPE1 VRT1 green', '1800', '5', '1', '3', '2', '30', 1, 1, '2024-07-06 15:24:42', '2024-07-07 13:01:58');

-- --------------------------------------------------------

--
-- Structure de la table `yarn_certification_types`
--

CREATE TABLE `yarn_certification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `yarn_certification_types`
--

INSERT INTO `yarn_certification_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'card', 1, '2024-07-05 10:00:45', '2024-07-05 13:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `yarn_count_rate_contents`
--

CREATE TABLE `yarn_count_rate_contents` (
  `id` int(11) NOT NULL,
  `costing_id` int(11) NOT NULL,
  `is_warp` tinyint(1) NOT NULL DEFAULT 1,
  `is_weft` tinyint(1) NOT NULL DEFAULT 0,
  `count` int(11) DEFAULT NULL,
  `rate_per_kg` int(11) DEFAULT NULL,
  `yarn_dyeing` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_incl_gst` int(11) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL,
  `content` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yarn_type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mill` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `epi_on_loom` int(11) DEFAULT NULL,
  `ppi` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `yarn_processing_contracts`
--

CREATE TABLE `yarn_processing_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `yarn_processing_contract_issues`
--

CREATE TABLE `yarn_processing_contract_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `yarn_processing_receives`
--

CREATE TABLE `yarn_processing_receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `yarn_processing_returns`
--

CREATE TABLE `yarn_processing_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `yarn_types`
--

CREATE TABLE `yarn_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` int(11) NOT NULL,
  `factor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `yarn_types`
--

INSERT INTO `yarn_types` (`id`, `type`, `unit`, `factor`, `loss`, `system`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TYPE1', 2, '1', '10', 'direct', 'TYPE1', 1, '2024-07-06 15:02:11', '2024-07-06 15:02:11'),
(2, 'YRNTYPE2', 2, '4', '4', 'direct', 'YRNTYPE2', 1, '2024-07-06 15:02:38', '2024-07-06 15:02:38');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `beam_receive_from_weavers`
--
ALTER TABLE `beam_receive_from_weavers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blends`
--
ALTER TABLE `blends`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `buyer_representatives`
--
ALTER TABLE `buyer_representatives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `consignees`
--
ALTER TABLE `consignees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `container_sizes`
--
ALTER TABLE `container_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coparts`
--
ALTER TABLE `coparts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `costings`
--
ALTER TABLE `costings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `delivery_terms`
--
ALTER TABLE `delivery_terms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `domestic_buyers`
--
ALTER TABLE `domestic_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `domestic_buyer_representatives`
--
ALTER TABLE `domestic_buyer_representatives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `filaments`
--
ALTER TABLE `filaments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `godown_locations`
--
ALTER TABLE `godown_locations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `g_s_t_s`
--
ALTER TABLE `g_s_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inspection_types`
--
ALTER TABLE `inspection_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoice_settings`
--
ALTER TABLE `invoice_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `jobwork_fabric_receives`
--
ALTER TABLE `jobwork_fabric_receives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobwork_finished_fabric_receives`
--
ALTER TABLE `jobwork_finished_fabric_receives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobwork_process_contracts`
--
ALTER TABLE `jobwork_process_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobwork_process_contract_issues`
--
ALTER TABLE `jobwork_process_contract_issues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobwork_weaving_weft_issues`
--
ALTER TABLE `jobwork_weaving_weft_issues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `loom_types`
--
ALTER TABLE `loom_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mills`
--
ALTER TABLE `mills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packings`
--
ALTER TABLE `packings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `packing_types`
--
ALTER TABLE `packing_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paper_tube_sizes`
--
ALTER TABLE `paper_tube_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ply`
--
ALTER TABLE `ply`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pre_carriage`
--
ALTER TABLE `pre_carriage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `process_returns`
--
ALTER TABLE `process_returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qualities`
--
ALTER TABLE `qualities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales_co_ordinators`
--
ALTER TABLE `sales_co_ordinators`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales_order_sub_details`
--
ALTER TABLE `sales_order_sub_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales_order_yarn_certifications`
--
ALTER TABLE `sales_order_yarn_certifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales_types`
--
ALTER TABLE `sales_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sale_returns`
--
ALTER TABLE `sale_returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `selvedge`
--
ALTER TABLE `selvedge`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `set_single_doubles`
--
ALTER TABLE `set_single_doubles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shades`
--
ALTER TABLE `shades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shade_warps`
--
ALTER TABLE `shade_warps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shade_wefts`
--
ALTER TABLE `shade_wefts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shipping_terms`
--
ALTER TABLE `shipping_terms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sizing_plans`
--
ALTER TABLE `sizing_plans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sorts`
--
ALTER TABLE `sorts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sort_warp`
--
ALTER TABLE `sort_warp`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sort_weft`
--
ALTER TABLE `sort_weft`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sourcing_executives`
--
ALTER TABLE `sourcing_executives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `so_types`
--
ALTER TABLE `so_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tpms`
--
ALTER TABLE `tpms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transportations`
--
ALTER TABLE `transportations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `uom`
--
ALTER TABLE `uom`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `variety`
--
ALTER TABLE `variety`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vendor_groups`
--
ALTER TABLE `vendor_groups`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weaves`
--
ALTER TABLE `weaves`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weave_factors`
--
ALTER TABLE `weave_factors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weave_types`
--
ALTER TABLE `weave_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarns`
--
ALTER TABLE `yarns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_certification_types`
--
ALTER TABLE `yarn_certification_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_count_rate_contents`
--
ALTER TABLE `yarn_count_rate_contents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_processing_contracts`
--
ALTER TABLE `yarn_processing_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_processing_contract_issues`
--
ALTER TABLE `yarn_processing_contract_issues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_processing_receives`
--
ALTER TABLE `yarn_processing_receives`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_processing_returns`
--
ALTER TABLE `yarn_processing_returns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `yarn_types`
--
ALTER TABLE `yarn_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `beam_receive_from_weavers`
--
ALTER TABLE `beam_receive_from_weavers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blends`
--
ALTER TABLE `blends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `buyer_representatives`
--
ALTER TABLE `buyer_representatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `consignees`
--
ALTER TABLE `consignees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `container_sizes`
--
ALTER TABLE `container_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `coparts`
--
ALTER TABLE `coparts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `costings`
--
ALTER TABLE `costings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `counts`
--
ALTER TABLE `counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `delivery_terms`
--
ALTER TABLE `delivery_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `domestic_buyers`
--
ALTER TABLE `domestic_buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `domestic_buyer_representatives`
--
ALTER TABLE `domestic_buyer_representatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `filaments`
--
ALTER TABLE `filaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `godown_locations`
--
ALTER TABLE `godown_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `g_s_t_s`
--
ALTER TABLE `g_s_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inspection_types`
--
ALTER TABLE `inspection_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `invoice_settings`
--
ALTER TABLE `invoice_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobwork_fabric_receives`
--
ALTER TABLE `jobwork_fabric_receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobwork_finished_fabric_receives`
--
ALTER TABLE `jobwork_finished_fabric_receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobwork_process_contracts`
--
ALTER TABLE `jobwork_process_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobwork_process_contract_issues`
--
ALTER TABLE `jobwork_process_contract_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jobwork_weaving_weft_issues`
--
ALTER TABLE `jobwork_weaving_weft_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `loom_types`
--
ALTER TABLE `loom_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `mills`
--
ALTER TABLE `mills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `packings`
--
ALTER TABLE `packings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `packing_types`
--
ALTER TABLE `packing_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `paper_tube_sizes`
--
ALTER TABLE `paper_tube_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ply`
--
ALTER TABLE `ply`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ports`
--
ALTER TABLE `ports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `pre_carriage`
--
ALTER TABLE `pre_carriage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `process_returns`
--
ALTER TABLE `process_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `qualities`
--
ALTER TABLE `qualities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sales_co_ordinators`
--
ALTER TABLE `sales_co_ordinators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `sales_order_sub_details`
--
ALTER TABLE `sales_order_sub_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `sales_order_yarn_certifications`
--
ALTER TABLE `sales_order_yarn_certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `sales_types`
--
ALTER TABLE `sales_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sale_returns`
--
ALTER TABLE `sale_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `selvedge`
--
ALTER TABLE `selvedge`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `set_single_doubles`
--
ALTER TABLE `set_single_doubles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `shades`
--
ALTER TABLE `shades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `shade_warps`
--
ALTER TABLE `shade_warps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `shade_wefts`
--
ALTER TABLE `shade_wefts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `shipping_terms`
--
ALTER TABLE `shipping_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sizing_plans`
--
ALTER TABLE `sizing_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sorts`
--
ALTER TABLE `sorts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `sort_warp`
--
ALTER TABLE `sort_warp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `sort_weft`
--
ALTER TABLE `sort_weft`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `sourcing_executives`
--
ALTER TABLE `sourcing_executives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `so_types`
--
ALTER TABLE `so_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tpms`
--
ALTER TABLE `tpms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `transportations`
--
ALTER TABLE `transportations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `uom`
--
ALTER TABLE `uom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `variety`
--
ALTER TABLE `variety`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `vendor_groups`
--
ALTER TABLE `vendor_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `weaves`
--
ALTER TABLE `weaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `weave_factors`
--
ALTER TABLE `weave_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `weave_types`
--
ALTER TABLE `weave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yarns`
--
ALTER TABLE `yarns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `yarn_certification_types`
--
ALTER TABLE `yarn_certification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `yarn_count_rate_contents`
--
ALTER TABLE `yarn_count_rate_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yarn_processing_contracts`
--
ALTER TABLE `yarn_processing_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yarn_processing_contract_issues`
--
ALTER TABLE `yarn_processing_contract_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yarn_processing_receives`
--
ALTER TABLE `yarn_processing_receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yarn_processing_returns`
--
ALTER TABLE `yarn_processing_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `yarn_types`
--
ALTER TABLE `yarn_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
