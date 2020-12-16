-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Dez-2020 às 01:13
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escola`
--
CREATE DATABASE IF NOT EXISTS `escola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofuncionario`
--

CREATE TABLE `cargofuncionario` (
  `codFuncio` int(11) NOT NULL,
  `codCargo` int(11) NOT NULL,
  `DataEntrada` date NOT NULL,
  `DataSaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargofuncionario`
--

INSERT INTO `cargofuncionario` (`codFuncio`, `codCargo`, `DataEntrada`, `DataSaida`) VALUES
(7, 7, '2011-05-09', '0000-00-00'),
(7, 1, '2010-12-10', '2011-05-09'),
(7, 5, '2018-09-09', '2020-03-03'),
(7, 7, '2011-05-09', '0000-00-00'),
(7, 1, '2010-12-10', '2011-05-09'),
(7, 5, '2018-09-09', '2020-03-03'),
(11, 2, '2014-01-08', '0000-00-00'),
(11, 5, '2015-02-21', '2019-03-13'),
(11, 2, '2014-01-08', '0000-00-00'),
(11, 5, '2015-02-21', '2019-03-13'),
(9, 4, '2012-12-13', '0000-00-00'),
(9, 1, '2018-11-06', '2019-05-23'),
(9, 4, '2012-12-13', '0000-00-00'),
(9, 1, '2018-11-06', '2019-05-23'),
(10, 6, '2019-06-04', '0000-00-00'),
(10, 7, '2010-08-06', '2015-09-25'),
(10, 6, '2019-06-04', '0000-00-00'),
(10, 7, '2010-08-06', '2015-09-25'),
(10, 5, '2016-10-14', '2018-12-12'),
(10, 5, '2016-10-14', '2018-12-12'),
(8, 3, '2013-06-15', '2017-05-12'),
(8, 4, '2018-03-12', '0000-00-00'),
(8, 3, '2013-06-15', '2017-05-12'),
(8, 4, '2018-03-12', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `codCargo` int(11) NOT NULL,
  `nomeCargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`codCargo`, `nomeCargo`) VALUES
(1, 'Coordenador de Informatica'),
(2, 'Coordenador de RH'),
(3, 'Coordenador de Administracao'),
(4, 'Coordenador do Ensino médio'),
(5, 'Coordenador Pedagógico'),
(6, 'Diretor'),
(7, 'professor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `codFuncio` int(11) NOT NULL,
  `nomeFuncio` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`codFuncio`, `nomeFuncio`, `data`) VALUES
(7, 'Murilo', '2011-05-09'),
(8, 'Miguel', '2011-07-23'),
(9, 'Mayara', '2018-05-09'),
(10, 'Matheus', '2015-11-12'),
(11, 'Gabriel', '2013-06-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargofuncionario`
--
ALTER TABLE `cargofuncionario`
  ADD KEY `codFuncio` (`codFuncio`),
  ADD KEY `codCargo` (`codCargo`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`codCargo`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`codFuncio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `codCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `codFuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cargofuncionario`
--
ALTER TABLE `cargofuncionario`
  ADD CONSTRAINT `cargofuncionario_ibfk_1` FOREIGN KEY (`codFuncio`) REFERENCES `funcionarios` (`codFuncio`),
  ADD CONSTRAINT `cargofuncionario_ibfk_2` FOREIGN KEY (`codCargo`) REFERENCES `cargos` (`codCargo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
