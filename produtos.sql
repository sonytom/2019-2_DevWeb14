-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Out-2019 às 01:36
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastros`
--

CREATE TABLE `cadastros` (
  `id` bigint(20) NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` varchar(100) NOT NULL,
  `sexo` char(2) NOT NULL,
  `descricao` text NOT NULL,
  `idCadastroUsuario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` bigint(55) NOT NULL,
  `idfabricante` bigint(55) NOT NULL,
  `iddistribuidora` bigint(55) NOT NULL,
  `nome` varchar(55) NOT NULL,
  `dosagem` float NOT NULL,
  `dtinclusao` varchar(55) NOT NULL,
  `dtfabricacao` varchar(55) NOT NULL,
  `dtvalidade` varchar(55) NOT NULL,
  `lote` varchar(55) NOT NULL,
  `precolot` float NOT NULL,
  `qtdLote` float NOT NULL,
  `precoqtd` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `idfabricante`, `iddistribuidora`, `nome`, `dosagem`, `dtinclusao`, `dtfabricacao`, `dtvalidade`, `lote`, `precolot`, `qtdLote`, `precoqtd`) VALUES
(1, 1, 2, 'teste2', 0, '22/22/2222', '22/22/2222', '22/22/2222', 'asd', 1.8, 1.8, 1.8),
(2, 2, 2, 'teste3', 0, '22/22/2222', '22/22/2222', '22/22/2222', 'asdasd', 1.8, 1.8, 1.8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `dataHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nome` text COLLATE latin1_general_ci NOT NULL,
  `login` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `senha` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `altura` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `dataHora`, `nome`, `login`, `senha`, `dataNascimento`, `altura`) VALUES
(1, '2019-09-26 23:55:44', 'Usuário Aluno Teste', 'aluno', 'e10adc3949ba59abbe56e057f20f883e', '1982-10-06', 1.70),
(2, '2019-09-27 00:00:39', 'teste2', 'teste2', '810159a253f77b53f94f4a4ec3517d69', '1001-01-01', 1.80),
(3, '2019-10-04 22:39:58', 'teste2', 'aluno', '202cb962ac59075b964b07152d234b70', '1001-01-01', 1.80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastros`
--
ALTER TABLE `cadastros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cadastros_usuarios` (`idCadastroUsuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastros`
--
ALTER TABLE `cadastros`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cadastros`
--
ALTER TABLE `cadastros`
  ADD CONSTRAINT `fk_cadastros_usuarios` FOREIGN KEY (`idCadastroUsuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
