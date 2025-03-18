-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/03/2025 às 15:11
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiz_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `nome_aluno` varchar(255) NOT NULL,
  `ra_aluno` varchar(255) NOT NULL,
  `materia` varchar(255) NOT NULL,
  `acertos` int(11) NOT NULL,
  `erros` int(11) NOT NULL,
  `porcentagem` float NOT NULL,
  `nota_final` float NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `resultados`
--

INSERT INTO `resultados` (`id`, `nome_aluno`, `ra_aluno`, `materia`, `acertos`, `erros`, `porcentagem`, `nota_final`, `data_hora`) VALUES
(1, 'JOAO', '123', 'geografia', 0, 10, 0, 0, '2025-03-17 19:55:58'),
(2, 'MARIA', '321', 'ciencias', 3, 7, 30, 3, '2025-03-17 19:56:06'),
(3, 'LEANDRO', '1234546', 'matematica', 10, 0, 100, 10, '2025-03-17 20:09:33'),
(4, 'Leandro', '12345', 'geografia', 8, 2, 80, 8, '2025-03-17 20:10:20'),
(5, 'Marinello', '1232121', 'matematica', 1, 9, 10, 1, '2025-03-17 21:12:57'),
(6, 'frederico', '1111', 'ciencias', 3, 7, 30, 3, '2025-03-18 13:55:47'),
(7, 'jhonny', '3233', 'matematica', 1, 9, 10, 1, '2025-03-18 13:59:42');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
