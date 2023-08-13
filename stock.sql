-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 13 août 2023 à 19:20
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `client_category` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `email`, `full_name`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `client_category`) VALUES
(1, NULL, NULL, NULL, NULL, 'email1', 'younes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, 'email2', 'Emsi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client_category`
--

CREATE TABLE `client_category` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `client_category_seq`
--

CREATE TABLE `client_category_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client_category_seq`
--

INSERT INTO `client_category_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `client_seq`
--

CREATE TABLE `client_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client_seq`
--

INSERT INTO `client_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE `etablissement` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement_seq`
--

CREATE TABLE `etablissement_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etablissement_seq`
--

INSERT INTO `etablissement_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(30),
(30),
(30);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`id`, `name`) VALUES
(1, 'Purchase.edit'),
(2, 'Purchase.list'),
(3, 'Purchase.view'),
(4, 'Purchase.add'),
(5, 'Purchase.delete'),
(6, 'Product.edit'),
(7, 'Product.list'),
(8, 'Product.view'),
(9, 'Product.add'),
(10, 'Product.delete'),
(11, 'ClientCategory.edit'),
(12, 'ClientCategory.list'),
(13, 'ClientCategory.view'),
(14, 'ClientCategory.add'),
(15, 'ClientCategory.delete'),
(16, 'Client.edit'),
(17, 'Client.list'),
(18, 'Client.view'),
(19, 'Client.add'),
(20, 'Client.delete'),
(21, 'PurchaseItem.edit'),
(22, 'PurchaseItem.list'),
(23, 'PurchaseItem.view'),
(24, 'PurchaseItem.add'),
(25, 'PurchaseItem.delete');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `code`, `reference`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`) VALUES
(1, NULL, NULL, NULL, NULL, 'p1', 'p1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, 'p2', 'p2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `product_seq`
--

CREATE TABLE `product_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product_seq`
--

INSERT INTO `product_seq` (`next_val`) VALUES
(1),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

CREATE TABLE `purchase` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `total` decimal(19,2) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `client` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase`
--

INSERT INTO `purchase` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `description`, `image`, `purchase_date`, `reference`, `total`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `client`) VALUES
(2, 'anonymousUser', '2023-08-11 14:45:57', '', NULL, 'soso', 'lolo', NULL, 'p1', 100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, 'anonymousUser', '2023-08-11 14:46:33', 'anonymousUser', '2023-08-13 13:49:59', 'koko', 'momooooo', NULL, 'p2', 200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'anonymousUser', '2023-08-11 14:53:15', '', NULL, 'lolo', 'soso', NULL, 'p3', 300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(5, 'anonymousUser', '2023-08-13 13:26:00', 'anonymousUser', '2023-08-13 13:26:51', 'image4image4image4image4image4\nimage4image4image4image4image4image4\nimage4image4image4image4image4image4', 'image4', NULL, 'p4', 400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 'anonymousUser', '2023-08-13 13:45:32', '', NULL, 'p555555p555555p555555p555555p555555p555555p555555p555555\n\np555555p555555p555555p555555p555555\n', 'p555555', NULL, 'p5', 500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(7, 'anonymousUser', '2023-08-13 15:14:06', '', NULL, 'imagep6imagep6imagep6imagep6imagep6imagep6imagep6\nimagep6imagep6imagep6\nimagep6imagep6imagep6imagep6imagep6', 'imagep6', NULL, 'p6', 600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(8, 'anonymousUser', '2023-08-13 15:22:05', '', NULL, 'kllllll', 'imagee777', NULL, 'p7', 700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `id` bigint(20) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `quantity` decimal(19,2) DEFAULT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `product` bigint(20) DEFAULT NULL,
  `purchase` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_item`
--

INSERT INTO `purchase_item` (`id`, `createdby`, `createdon`, `updatedby`, `updatedon`, `price`, `quantity`, `action_type`, `data`, `date`, `object_id`, `object_name`, `user_id`, `username`, `product`, `purchase`) VALUES
(1, 'anonymousUser', '2023-08-10 20:35:29', '', NULL, 20.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(2, 'anonymousUser', '2023-08-10 20:35:29', '', NULL, 10.00, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(3, 'anonymousUser', '2023-08-11 14:45:57', '', NULL, 10.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2),
(4, 'anonymousUser', '2023-08-11 14:45:57', '', NULL, 5.00, 4.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2),
(5, 'anonymousUser', '2023-08-11 14:46:33', '', NULL, 3.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(6, 'anonymousUser', '2023-08-11 14:46:33', 'anonymousUser', '2023-08-13 13:49:59', 40.00, 70.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3),
(7, 'anonymousUser', '2023-08-11 14:53:15', '', NULL, 20.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4),
(8, 'anonymousUser', '2023-08-11 14:53:15', '', NULL, 3.00, 4.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4),
(9, 'anonymousUser', '2023-08-13 13:26:00', 'anonymousUser', '2023-08-13 13:26:51', 33.00, 30.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5),
(10, 'anonymousUser', '2023-08-13 13:26:00', '', NULL, 30.00, 2.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5),
(11, 'anonymousUser', '2023-08-13 13:45:32', '', NULL, 5.00, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6),
(12, 'anonymousUser', '2023-08-13 13:45:32', '', NULL, 50.00, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 6),
(13, 'anonymousUser', '2023-08-13 15:14:06', '', NULL, 10.00, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7),
(14, 'anonymousUser', '2023-08-13 15:14:06', '', NULL, 50.00, 40.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 7),
(15, 'anonymousUser', '2023-08-13 15:22:05', '', NULL, 10.00, 20.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8),
(16, 'anonymousUser', '2023-08-13 15:22:05', '', NULL, 4.00, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item_seq`
--

CREATE TABLE `purchase_item_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_item_seq`
--

INSERT INTO `purchase_item_seq` (`next_val`) VALUES
(17),
(17);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_seq`
--

CREATE TABLE `purchase_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `purchase_seq`
--

INSERT INTO `purchase_seq` (`next_val`) VALUES
(9),
(9);

-- --------------------------------------------------------

--
-- Structure de la table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(26, 9),
(26, 10),
(26, 11),
(26, 12),
(26, 13),
(26, 14),
(26, 15),
(26, 16),
(26, 17),
(26, 18),
(26, 19),
(26, 20),
(26, 21),
(26, 22),
(26, 23),
(26, 24),
(26, 25),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(28, 10),
(28, 11),
(28, 12),
(28, 13),
(28, 14),
(28, 15),
(28, 16),
(28, 17),
(28, 18),
(28, 19),
(28, 20),
(28, 21),
(28, 22),
(28, 23),
(28, 24),
(28, 25);

-- --------------------------------------------------------

--
-- Structure de la table `role_app`
--

CREATE TABLE `role_app` (
  `id` bigint(20) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_app`
--

INSERT INTO `role_app` (`id`, `authority`, `created_at`, `updated_at`) VALUES
(26, 'ROLE_ADMIN', NULL, NULL),
(28, 'ROLE_AGENT', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(27, 26),
(29, 28);

-- --------------------------------------------------------

--
-- Structure de la table `user_app`
--

CREATE TABLE `user_app` (
  `id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `account_non_expired` bit(1) NOT NULL,
  `account_non_locked` bit(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `credentials_non_expired` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_changed` bit(1) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `etablissement` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_app`
--

INSERT INTO `user_app` (`id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `account_non_expired`, `account_non_locked`, `created_at`, `credentials_non_expired`, `email`, `enabled`, `nom`, `password`, `password_changed`, `prenom`, `updated_at`, `username`, `etablissement`) VALUES
(27, NULL, '2023-08-10 20:19:51', NULL, NULL, b'1', b'1', '2023-08-10 20:19:51', b'1', 'admin', b'1', 'admin', '$2a$10$fnak3yChotyGDFY8ncp0uejxC.cY7vvEkAFmjHv.1hRhwFJzD7JVi', b'0', 'admin', NULL, 'admin', NULL),
(29, NULL, '2023-08-10 20:19:51', NULL, NULL, b'1', b'1', '2023-08-10 20:19:51', b'1', 'agent', b'1', 'agent', '$2a$10$QGoS6c7bFt3B6CtCyOVwUOqDbQ0j4Vr1VxIu4E430ZVcNET74s5pC', b'0', 'agent', NULL, 'agent', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpeqltvtep7t1lgseag6usi02h` (`client_category`);

--
-- Index pour la table `client_category`
--
ALTER TABLE `client_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK13bv6vj8l78jhf7k89731hexo` (`client`);

--
-- Index pour la table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrer69opxrjm7xrqtvd3b74dfx` (`product`),
  ADD KEY `FKncx4l5271gx8pnwpmp31kkhom` (`purchase`);

--
-- Index pour la table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD KEY `FKboeuhl31go7wer3bpy6so7exi` (`permission_id`),
  ADD KEY `FK3q3rt3at2wf4ooe7npa3et6yb` (`role_id`);

--
-- Index pour la table `role_app`
--
ALTER TABLE `role_app`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FK4e8pdqeupv69eukb2bvy2ftbd` (`role_id`),
  ADD KEY `FK50gpsre6oxwwqf394f8wov1yf` (`user_id`);

--
-- Index pour la table `user_app`
--
ALTER TABLE `user_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2xblr2jfuwcj4ktkjxbf8ir13` (`etablissement`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
