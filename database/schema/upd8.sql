-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 26/04/2025 às 04:30
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
(1, 'Regina Beltrão Duarte', '310.406.371-08', 'F', '2016-11-12', '19619-346, R. Gabi, 7353\nPorto Lorenzo - MT', 6, 17, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(2, 'Adriano Furtado', '422.616.965-40', 'M', '2016-02-21', '84851-254, Av. Arthur, 87\nSão Naomi do Norte - MG', 14, 42, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(3, 'André Escobar Rezende Neto', '552.961.112-57', 'M', '1997-05-26', '58707-425, Largo Roberto Paz, 63. Apto 677\nVila Rodrigo - AC', 14, 42, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(4, 'Sr. Deivid Rodrigues Neto', '800.540.853-65', 'F', '1984-04-13', '09937-333, Avenida Emiliano Vega, 6141. Bloco C\nVila Ivan - AP', 8, 22, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(5, 'Sr. Vitor Wesley Fontes', '239.076.214-09', 'M', '2023-08-24', '92513-894, Avenida Lutero, 4\nSanta Otávio do Sul - PI', 3, 9, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(6, 'Sra. Kamila da Silva', '438.423.045-10', 'F', '1996-10-17', '87354-049, Travessa Rangel, 853\nSão Catarina do Norte - SE', 23, 67, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(7, 'Dr. Eduardo Eric Meireles Sobrinho', '103.106.935-60', 'M', '1976-01-26', '04871-776, Avenida Kevin, 271. Bloco C\nJéssica do Leste - MS', 20, 60, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(8, 'Théo Andres Molina', '074.288.399-04', 'F', '2014-05-26', '87667-985, Av. Maitê, 6. F\nMarta do Norte - TO', 24, 72, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(9, 'Sra. Mia Serna Filho', '380.624.476-69', 'F', '2022-11-17', '67936-890, Largo Romero, 8\nSanta Kevin do Norte - GO', 22, 66, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(10, 'Dr. Beatriz Mariana Oliveira', '555.098.822-47', 'F', '2004-12-24', '00867-049, Largo Carlos, 201\nPaola do Leste - PR', 25, 74, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(11, 'Srta. Talita Santos Sobrinho', '281.808.571-31', 'M', '1984-08-08', '46072-271, Travessa David Reis, 67264\nInácio do Norte - RJ', 14, 42, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(12, 'Bruna Mariana Molina', '718.232.569-10', 'M', '2010-09-11', '34444-820, Rua Sandoval, 87. 361º Andar\nBatista d\'Oeste - AP', 3, 8, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(13, 'Milena Cruz Rocha Filho', '130.636.292-00', 'F', '2018-12-24', '66890-800, Largo Deverso, 1. Apto 0\nSanta Emerson do Sul - BA', 13, 39, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(14, 'Wesley Juan Duarte', '841.870.436-59', 'M', '2015-06-15', '08229-182, Avenida Pedrosa, 863\nCíntia do Leste - AL', 15, 43, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(15, 'Hugo Zamana', '423.181.866-50', 'F', '1972-05-08', '30705-326, Rua Fonseca, 80128\nSanta Nicolas do Norte - AP', 27, 79, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(16, 'Srta. Regina Daniela Ortega', '842.117.288-30', 'M', '2023-01-15', '98662-780, R. Wilson Carvalho, 54990\nVila Fabiano - PI', 3, 9, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(17, 'Gisele Deverso Branco Neto', '684.861.481-54', 'F', '1987-07-27', '26710-262, R. Ferreira, 64506. Bloco B\nPorto Thalissa - PR', 5, 13, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(18, 'Ingrid Talita Dominato Jr.', '087.913.207-80', 'M', '1974-05-06', '13265-224, Travessa Manuela Amaral, 51000\nAlcantara do Sul - MS', 14, 40, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(19, 'Pietra Salgado Filho', '165.420.887-68', 'M', '2019-08-13', '91019-375, R. Quintana, 569. 17º Andar\nDeivid d\'Oeste - TO', 22, 64, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(20, 'Tessália Josefina Pena', '382.047.154-55', 'F', '1975-06-28', '29948-234, Largo Horácio Furtado, 2642. Bc. 7 Ap. 12\nPorto Cristiano - PR', 25, 74, '2025-04-26 05:28:01', '2025-04-26 05:28:01');

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
(15, '0001_01_01_000000_create_users_table', 1),
(16, '0001_01_01_000001_create_cache_table', 1),
(17, '0001_01_01_000002_create_jobs_table', 1),
(18, '2025_04_26_014730_create_states_table', 1),
(19, '2025_04_26_014738_create_cities_table', 1),
(20, '2025_04_26_014753_create_customers_table', 1),
(21, '2025_04_26_014802_create_representatives_table', 1);

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
(1, 'Dr. Madalena Benez Medina', 13, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(2, 'Mia Julieta Tamoio Neto', 54, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(3, 'Gabi Mendonça D\'ávila Neto', 62, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(4, 'Fábio Carvalho Jr.', 61, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(5, 'Danielle Melina Delatorre Filho', 70, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(6, 'Sra. Regina Pena Quintana Filho', 9, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(7, 'Dr. Marina Paz Jr.', 6, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(8, 'Igor Soto Tamoio Filho', 69, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(9, 'Sr. Eduardo Estrada Madeira', 28, '2025-04-26 05:28:01', '2025-04-26 05:28:01'),
(10, 'Denis Pena', 45, '2025-04-26 05:28:01', '2025-04-26 05:28:01');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `representatives`
--
ALTER TABLE `representatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
