-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Out-2019 às 18:47
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` bigint(55) NOT NULL,
  `idfabricante` bigint(55) NOT NULL,
  `iddistribuidora` bigint(55) NOT NULL,
  `nome` varchar(55) NOT NULL,
  `dosagem` float NOT NULL,
  `dtinclusao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtfabricacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dtvalidade` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lote` varchar(55) NOT NULL,
  `precolot` float NOT NULL,
  `qtdLote` float NOT NULL,
  `precoqtd` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `idfabricante`, `iddistribuidora`, `nome`, `dosagem`, `dtinclusao`, `dtfabricacao`, `dtvalidade`, `lote`, `precolot`, `qtdLote`, `precoqtd`) VALUES
(1, 2, 3, 'TOM', 1.8, '2019-10-01 03:00:00', '2019-10-01 03:00:00', '2019-10-01 03:00:00', 'TOM', 1.9, 1.9, 2),
(0, 0, 0, '', 0, '2019-10-04 15:12:48', '2019-10-04 15:12:48', '2019-10-04 15:12:48', '', 0, 0, 0),
(0, 1, 0, '', 0, '2019-10-04 15:13:09', '2019-10-04 15:13:09', '2019-10-04 15:13:09', '', 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
