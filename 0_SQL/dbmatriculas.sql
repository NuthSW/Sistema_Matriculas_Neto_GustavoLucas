-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Dez-2022 às 04:47
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbmatriculas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaluno`
--

CREATE TABLE `tbaluno` (
  `codaluno` int(11) UNSIGNED NOT NULL,
  `nome` varchar(60) NOT NULL,
  `nascimento` date NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `fone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbaluno`
--

INSERT INTO `tbaluno` (`codaluno`, `nome`, `nascimento`, `endereco`, `fone`) VALUES
(3, 'João Paulo', '2000-07-22', 'Casa dele', '(88)9723-9876'),
(4, 'Waneyla', '1985-06-03', 'Casa nossa', '(88)9864-0543');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcursos`
--

CREATE TABLE `tbcursos` (
  `codcurso` int(11) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `cargahoraria` double(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbcursos`
--

INSERT INTO `tbcursos` (`codcurso`, `nome`, `turno`, `cargahoraria`) VALUES
(1, 'Fotografia', 'Matutino', 2000.00),
(2, 'Desenvolvimento de software', 'Vespertino', 3000.00),
(3, 'Medicina', 'Noturno', 5500.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmatriculas`
--

CREATE TABLE `tbmatriculas` (
  `codmat` int(11) UNSIGNED NOT NULL,
  `codcurso` int(11) UNSIGNED NOT NULL,
  `codaluno` int(11) UNSIGNED NOT NULL,
  `codusu` int(11) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `horario` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbmatriculas`
--

INSERT INTO `tbmatriculas` (`codmat`, `codcurso`, `codaluno`, `codusu`, `data`, `horario`) VALUES
(5, 1, 4, 5, '2022-12-11', '04:12:45'),
(6, 3, 3, 6, '2022-12-11', '04:12:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusu`
--

CREATE TABLE `tbusu` (
  `codusu` int(11) UNSIGNED NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbusu`
--

INSERT INTO `tbusu` (`codusu`, `nome`, `email`, `senha`) VALUES
(5, 'Admin', 'admin@admin.com', '123'),
(6, 'Beta', 'beta@gmail.com', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  ADD PRIMARY KEY (`codaluno`);

--
-- Índices para tabela `tbcursos`
--
ALTER TABLE `tbcursos`
  ADD PRIMARY KEY (`codcurso`);

--
-- Índices para tabela `tbmatriculas`
--
ALTER TABLE `tbmatriculas`
  ADD PRIMARY KEY (`codmat`);

--
-- Índices para tabela `tbusu`
--
ALTER TABLE `tbusu`
  ADD PRIMARY KEY (`codusu`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  MODIFY `codaluno` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbcursos`
--
ALTER TABLE `tbcursos`
  MODIFY `codcurso` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tbmatriculas`
--
ALTER TABLE `tbmatriculas`
  MODIFY `codmat` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbusu`
--
ALTER TABLE `tbusu`
  MODIFY `codusu` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
