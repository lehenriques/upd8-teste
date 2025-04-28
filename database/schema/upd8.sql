-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 28/04/2025 às 05:16
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `upd8`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Rio Branco', 1),
(2, 'Cruzeiro do Sul', 1),
(3, 'Sena Madureira', 1),
(4, 'Maceió', 2),
(5, 'Arapiraca', 2),
(6, 'Palmeira dos Índios', 2),
(7, 'Macapá', 3),
(8, 'Santana', 3),
(9, 'Laranjal do Jari', 3),
(10, 'Manaus', 4),
(11, 'Parintins', 4),
(12, 'Itacoatiara', 4),
(13, 'Salvador', 5),
(14, 'Feira de Santana', 5),
(15, 'Vitória da Conquista', 5),
(16, 'Fortaleza', 6),
(17, 'Caucaia', 6),
(18, 'Juazeiro do Norte', 6),
(19, 'Brasília', 7),
(20, 'Taguatinga', 7),
(21, 'Ceilândia', 7),
(22, 'Vitória', 8),
(23, 'Vila Velha', 8),
(24, 'Serra', 8),
(25, 'Goiânia', 9),
(26, 'Aparecida de Goiânia', 9),
(27, 'Anápolis', 9),
(28, 'São Luís', 10),
(29, 'Imperatriz', 10),
(30, 'Caxias', 10),
(31, 'Cuiabá', 11),
(32, 'Várzea Grande', 11),
(33, 'Rondonópolis', 11),
(34, 'Campo Grande', 12),
(35, 'Dourados', 12),
(36, 'Três Lagoas', 12),
(37, 'Belo Horizonte', 13),
(38, 'Uberlândia', 13),
(39, 'Contagem', 13),
(40, 'Belém', 14),
(41, 'Ananindeua', 14),
(42, 'Santarém', 14),
(43, 'João Pessoa', 15),
(44, 'Campina Grande', 15),
(45, 'Santa Rita', 15),
(46, 'Curitiba', 16),
(47, 'Londrina', 16),
(48, 'Maringá', 16),
(49, 'Recife', 17),
(50, 'Jaboatão dos Guararapes', 17),
(51, 'Olinda', 17),
(52, 'Teresina', 18),
(53, 'Parnaíba', 18),
(54, 'Picos', 18),
(55, 'Rio de Janeiro', 19),
(56, 'Niterói', 19),
(57, 'Duque de Caxias', 19),
(58, 'Natal', 20),
(59, 'Mossoró', 20),
(60, 'Parnamirim', 20),
(61, 'Porto Alegre', 21),
(62, 'Caxias do Sul', 21),
(63, 'Pelotas', 21),
(64, 'Porto Velho', 22),
(65, 'Ji-Paraná', 22),
(66, 'Ariquemes', 22),
(67, 'Boa Vista', 23),
(68, 'Rorainópolis', 23),
(69, 'Caracaraí', 23),
(70, 'Florianópolis', 24),
(71, 'Joinville', 24),
(72, 'Blumenau', 24),
(73, 'São Paulo', 25),
(74, 'Guarulhos', 25),
(75, 'Campinas', 25),
(76, 'Aracaju', 26),
(77, 'Nossa Senhora do Socorro', 26),
(78, 'Itabaiana', 26),
(79, 'Palmas', 27),
(80, 'Araguaína', 27),
(81, 'Gurupi', 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `birthdate` date NOT NULL,
  `address_street` varchar(120) NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `customers`
--

INSERT INTO `customers` (`id`, `name`, `cpf`, `gender`, `birthdate`, `address_street`, `state_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Srta. Fabiana Benites Reis', '290.111.403-20', 'M', '1986-08-19', '70803-474, Av. Roberta Rosa, 17\nZiraldo do Norte - RO', 4, 12, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(2, 'Cléber Carmona', '365.834.241-26', 'M', '1977-08-29', '51153-926, Rua Ferreira, 9470. Anexo\nSanta Gael do Leste - PB', 17, 49, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(3, 'Sra. Amanda Prado Sales', '640.895.057-47', 'F', '2010-02-21', '44462-160, Rua Ohana, 5470\nSanta Emerson - SC', 15, 45, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(4, 'Srta. Eva Yasmin Correia Filho', '493.714.287-91', 'F', '1991-10-16', '78720-382, Av. Analu Sales, 99. 816º Andar\nSimone d\'Oeste - MA', 8, 23, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(5, 'Tâmara Delvalle Saito', '277.824.948-69', 'M', '2018-03-28', '39623-362, Avenida Casanova, 7\nSanta Murilo do Leste - CE', 14, 40, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(6, 'Júlia Queirós Jr.', '347.787.953-85', 'F', '1982-09-24', '02973-486, R. Francisco, 441\nNádia do Norte - PE', 11, 33, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(7, 'Wagner Molina Sepúlveda Jr.', '144.600.594-10', 'M', '1983-05-28', '58260-006, Avenida Mário Amaral, 304\nÍtalo d\'Oeste - PB', 5, 15, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(8, 'Dr. Heitor Ferraz Bonilha Neto', '825.730.123-01', 'M', '2007-04-19', '70611-062, Avenida Rogério, 28. Bc. 8 Ap. 13\nSalas d\'Oeste - MT', 6, 18, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(9, 'Beatriz Flores Valdez', '757.880.186-41', 'M', '1999-09-02', '49715-494, Rua Afonso, 927\nHugo d\'Oeste - MA', 7, 20, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(10, 'Alan D\'ávila Verdugo Filho', '560.767.173-94', 'F', '2002-04-11', '21658-462, Travessa Jácomo, 9227\nSão Martinho - AP', 13, 38, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(11, 'Wilson de Arruda Vasques Jr.', '792.161.008-00', 'F', '2006-05-31', '32717-104, Rua Isabella Marinho, 21\nVila Pérola - BA', 4, 12, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(12, 'Regina Lourenço Matos Jr.', '445.472.473-31', 'M', '2014-11-14', '06694-539, Rua Thiago, 8936. F\nSanta Amélia do Sul - AP', 22, 64, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(13, 'Srta. Catarina Deverso Filho', '670.272.265-61', 'M', '2002-04-25', '19784-371, R. Vicente de Arruda, 6451\nCamacho do Sul - PA', 27, 79, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(14, 'Srta. Ivana Ramos Aragão', '877.942.047-80', 'M', '1976-02-25', '06386-420, Avenida Caldeira, 25498\nMartines do Norte - PR', 8, 22, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(15, 'Michael Leal Valentin Filho', '658.924.238-08', 'F', '2011-07-26', '40742-060, Av. Dirce, 66\nSão Eduardo d\'Oeste - MT', 11, 31, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(16, 'Christopher Rico Marinho Neto', '693.161.045-72', 'F', '2007-01-18', '19894-302, Avenida Jonas, 674\nOhana do Norte - PB', 23, 67, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(17, 'Stefany Carvalho Pena Jr.', '442.578.450-23', 'M', '1970-04-20', '31824-334, Travessa Felipe Barros, 79764. Apto 640\nSanta Natal do Leste - GO', 21, 63, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(18, 'Sra. Nathalia Ketlin Furtado', '137.441.595-23', 'M', '1999-01-28', '77718-114, Rua Alonso, 5\nIsabel do Norte - DF', 22, 65, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(19, 'Olívia Colaço', '047.866.636-54', 'M', '2008-10-01', '52824-357, R. Pablo, 9066\nMarés do Sul - RJ', 4, 12, '2025-04-28 04:57:02', '2025-04-28 04:57:02'),
(20, 'Sr. Yuri Garcia', '918.387.010-52', 'F', '1970-05-03', '72352-553, Av. Maldonado, 3391\nDelgado do Sul - MA', 14, 40, '2025-04-28 04:57:02', '2025-04-28 04:57:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
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
-- Estrutura para tabela `jobs`
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
-- Estrutura para tabela `job_batches`
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
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '0001_01_01_000000_create_users_table', 1),
(24, '0001_01_01_000001_create_cache_table', 1),
(25, '0001_01_01_000002_create_jobs_table', 1),
(26, '2025_04_26_014730_create_states_table', 1),
(27, '2025_04_26_014738_create_cities_table', 1),
(28, '2025_04_26_014753_create_customers_table', 1),
(29, '2025_04_26_014802_create_representatives_table', 1),
(30, '2025_04_26_025145_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `representatives`
--

CREATE TABLE `representatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `representatives`
--

INSERT INTO `representatives` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Sr. Gael Quintana Saito Jr.', 16, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(2, 'Dr. Sebastião Dener Madeira Sobrinho', 32, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(3, 'Ketlin Sarah Campos Neto', 19, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(4, 'Emilly Maia Neto', 3, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(5, 'Srta. Lorena Andréia das Dores', 49, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(6, 'Sra. Mia Rico Casanova Sobrinho', 46, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(7, 'Jean Padrão Verdugo Neto', 54, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(8, 'Sr. Horácio Ortega', 20, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(9, 'Arthur Miguel Garcia Neto', 24, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(10, 'Srta. Helena Matias Pacheco', 49, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(11, 'Dr. Rafaela Carolina Cortês Filho', 32, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(12, 'Noelí Brito Rios', 25, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(13, 'Regina Neves Carvalho', 10, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(14, 'Sr. Luiz Mendonça Balestero', 63, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(15, 'Allan Batista Barros', 43, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(16, 'Sra. Maria Rios', 72, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(17, 'Dr. Horácio Vasques Pacheco Jr.', 25, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(18, 'Pablo Ian Medina Filho', 44, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(19, 'Dr. Luzia Raquel Matias Jr.', 24, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(20, 'Srta. Eunice Delatorre Sobrinho', 11, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(21, 'Daniel Burgos', 58, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(22, 'Moisés Balestero Rodrigues Filho', 56, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(23, 'Sr. Tomás Leandro Toledo', 57, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(24, 'Sr. Adriano Medina Filho', 33, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(25, 'Diogo Domingues Duarte', 14, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(26, 'Dr. Gabrielle Zamana Galvão', 45, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(27, 'Dr. Maraisa Souza Vila', 6, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(28, 'Malu Padilha Ferminiano Sobrinho', 44, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(29, 'Dr. Lorena Jasmin Chaves Filho', 58, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(30, 'Leo Guerra Furtado Sobrinho', 8, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(31, 'Jennifer Ávila Verdugo', 1, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(32, 'Henrique Dominato Assunção', 19, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(33, 'Sra. Tessália Campos', 53, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(34, 'Dr. Cristóvão Santiago', 33, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(35, 'Karen Marés', 74, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(36, 'Sophia Raysa Medina Sobrinho', 22, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(37, 'Dr. Emília Velasques', 50, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(38, 'Dr. Diana Escobar', 45, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(39, 'Sr. Gian Benites Torres Filho', 34, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(40, 'Kevin Lovato Jr.', 59, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(41, 'Sr. Matheus Esteves Reis Sobrinho', 79, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(42, 'Dr. Dayane Tainara Marinho', 45, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(43, 'Ziraldo Casanova Neto', 14, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(44, 'Dr. Richard Valentin Rangel Neto', 81, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(45, 'Mel Lívia Solano', 32, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(46, 'Dr. Flor Aranda Mendes Neto', 21, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(47, 'Caroline Reis Serna Jr.', 62, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(48, 'Dr. Cristóvão Bittencourt', 77, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(49, 'Emília Feliciano Zamana', 63, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(50, 'Josué Rocha Sobrinho', 43, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(51, 'Sr. Kléber Mascarenhas Marinho', 41, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(52, 'Sofia Serra Sobrinho', 58, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(53, 'Alice Lovato Santana', 2, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(54, 'Benedito Marinho Filho', 76, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(55, 'Yohanna Leon Soto', 17, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(56, 'Dr. Luciano Burgos Filho', 31, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(57, 'Dr. Joaquin Escobar Galhardo', 5, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(58, 'Sr. Marco de Aguiar', 57, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(59, 'Rogério Murilo Montenegro Neto', 33, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(60, 'Sr. Danilo Henrique Sandoval', 10, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(61, 'Sr. Natal Velasques Paes Sobrinho', 60, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(62, 'Srta. Stella Paloma Santos', 6, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(63, 'Srta. Ivana Franco Marin Jr.', 42, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(64, 'Dr. Carolina Fidalgo Filho', 54, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(65, 'Sheila Beatriz Cordeiro', 4, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(66, 'Dr. Emerson Mauro Sepúlveda', 46, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(67, 'Dr. Flávio das Dores de Freitas Filho', 55, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(68, 'Sra. Renata Galvão Sobrinho', 65, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(69, 'Demian Quintana Faria', 57, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(70, 'Dr. Nicole Alana da Rosa', 48, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(71, 'Dr. Erik Beltrão Lovato', 15, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(72, 'Adriano Alan Caldeira', 54, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(73, 'Dr. Fabrício Mascarenhas', 12, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(74, 'Mari Fonseca Alves Filho', 64, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(75, 'Fábio Casanova', 53, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(76, 'Sra. Taís Sarah Carvalho', 1, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(77, 'Sra. Roberta Fonseca Verdugo Sobrinho', 11, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(78, 'Noa Serrano Filho', 13, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(79, 'Willian Henrique Montenegro', 8, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(80, 'Liz Martines Marés Sobrinho', 49, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(81, 'Dr. Emily Angélica Delgado Jr.', 13, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(82, 'Sra. Talita Lívia Pacheco', 16, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(83, 'Dr. Raquel de Souza', 39, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(84, 'Sandro Willian da Silva Filho', 16, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(85, 'Paulina Gonçalves Serra', 6, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(86, 'Kamila Pontes', 11, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(87, 'Srta. Daniella Barros Gonçalves', 73, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(88, 'Lucas Benites Fontes', 64, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(89, 'Valentin Eric Meireles Neto', 66, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(90, 'Cláudia Pena Filho', 10, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(91, 'Sr. Leo da Cruz Gomes Neto', 40, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(92, 'Srta. Elis Delatorre Padrão', 70, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(93, 'Artur Vitor Arruda Jr.', 70, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(94, 'Lara Luana Rios Filho', 19, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(95, 'Srta. Eduarda Zambrano Neto', 34, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(96, 'Srta. Malu Leal', 47, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(97, 'Arthur Nero Azevedo', 15, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(98, 'Srta. Michelle de Freitas Vieira Jr.', 16, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(99, 'Danilo Jean Abreu Neto', 20, '2025-04-28 04:57:03', '2025-04-28 04:57:03'),
(100, 'Jerônimo Benjamin Roque Sobrinho', 58, '2025-04-28 04:57:03', '2025-04-28 04:57:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
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
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('S1cdrX0kKnuHyJXOwBVx3qXD8tYY0GjSQpf1Zyei', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHVORUYycGtRZWg4V3NVZVFobFo1UjNlVFNKOE1YVEZrMmpMUm1YVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lZGl0YXIvMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1745807571);

-- --------------------------------------------------------

--
-- Estrutura para tabela `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `uf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `states`
--

INSERT INTO `states` (`id`, `name`, `uf`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amapá', 'AP'),
(4, 'Amazonas', 'AM'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piauí', 'PI'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rio Grande do Sul', 'RS'),
(22, 'Rondônia', 'RO'),
(23, 'Roraima', 'RR'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
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
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Índices de tabela `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_state_id_foreign` (`state_id`),
  ADD KEY `customers_city_id_foreign` (`city_id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `representatives`
--
ALTER TABLE `representatives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `representatives_city_id_foreign` (`city_id`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `representatives`
--
ALTER TABLE `representatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `representatives`
--
ALTER TABLE `representatives`
  ADD CONSTRAINT `representatives_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
