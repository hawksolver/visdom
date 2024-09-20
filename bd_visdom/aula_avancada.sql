-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20-Out-2022 às 17:02
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aula_avancada`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

DROP TABLE IF EXISTS `imagem`;
CREATE TABLE IF NOT EXISTS `imagem` (
  `link` varchar(100) NOT NULL,
  `fk_usuario_email` varchar(100) DEFAULT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`link`),
  KEY `fk_usuario_email` (`fk_usuario_email`)
) ;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`link`, `fk_usuario_email`, `data`) VALUES
('img/imagenUser1663775732.jpg', 'camargoliveira@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663775743.jpg', 'camargoliveira@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663775751.jpg', 'camargoliveira@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663775762.png', 'camargoliveira@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663775827.jpg', 'marcos@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663775833.jpg', 'marcos@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663775840.png', 'marcos@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1663866057.jpg', 'camargoliveira@gmail.com', '2022-10-19 07:47:01'),
('img/imagenUser1666285258.jpg', 'camargoliveira@gmail.com', '2022-10-20 14:00:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `foto` varchar(100) NULL,
  `capa` varchar(100) NULL,
  PRIMARY KEY (`email`)
) ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`email`, `senha`, `nome`, `foto`, `capa`) VALUES
('camargoliveira@gmail.com', '12345', 'Eliton', '', ''),
('jose@gmail.com', '12345', 'João Silva', '', ''),
('marcos@gmail.com', '12345', 'Marcos Arruda', '', '');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `imagem`
--
ALTER TABLE `imagem`
  ADD CONSTRAINT `imagem_ibfk_1` FOREIGN KEY (`fk_usuario_email`) REFERENCES `usuario` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
