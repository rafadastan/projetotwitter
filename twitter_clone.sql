-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 06-Mar-2018 às 10:38
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitter_clone`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE IF NOT EXISTS `tweet` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `tweet` varchar(140) NOT NULL,
  `data_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tweet`
--

INSERT INTO `tweet` (`id_tweet`, `id_usuario`, `tweet`, `data_inclusao`) VALUES
(11, 3, 'Atualização assicrona', '2018-01-31 14:28:01'),
(10, 3, 'Eu aprendi a lista meus tweets, foi dificil pa poha kkk', '2018-01-31 13:39:16'),
(7, 3, 'agora sim!!!', '2018-01-31 12:33:14'),
(8, 3, 'Bem vindo ao twitter clone', '2018-01-31 12:50:27'),
(9, 3, 'inserir a mensagem o campo limpo', '2018-01-31 12:52:33'),
(12, 3, 'perfeito', '2018-01-31 14:28:10'),
(13, 1, 'Teste com o usuario Raphael', '2018-01-31 14:29:18'),
(14, 1, 'Testes e mais testes', '2018-01-31 14:29:46'),
(15, 1, 'djfslfjlsdçf', '2018-02-01 16:15:37'),
(16, 1, 'o', '2018-02-02 11:06:06'),
(17, 1, 'a', '2018-02-02 11:30:06'),
(18, 7, 'Olá', '2018-02-02 14:29:41'),
(19, 7, 'Hoje estou muito feliz heheh', '2018-02-02 14:30:17'),
(20, 7, 'estou me apaixonando pela programação', '2018-02-02 14:55:47'),
(21, 2, 'Hoje vai ser uma festa hehehe', '2018-02-02 15:04:12'),
(22, 1, 'GOSTARAM DO MEU TRABALHO?', '2018-02-02 15:37:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `email`, `senha`) VALUES
(1, 'Raphael', 'raphael@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Pedro', 'pedro@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'jorge', 'jorge@teste.com.br', '202cb962ac59075b964b07152d234b70'),
(4, 'larissa', 'larissa@teste.com.br', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'Manuela', 'Manuela@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Juliana', 'juliana@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Fernanda', 'fernanda@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Matheus', 'matheus@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'jose', 'jose@teste.com.br', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_seguidores`
--

DROP TABLE IF EXISTS `usuarios_seguidores`;
CREATE TABLE IF NOT EXISTS `usuarios_seguidores` (
  `id_usuario_seguidor` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `seguindo_id_usuario` int(11) NOT NULL,
  `data_registro` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario_seguidor`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios_seguidores`
--

INSERT INTO `usuarios_seguidores` (`id_usuario_seguidor`, `id_usuario`, `seguindo_id_usuario`, `data_registro`) VALUES
(43, 1, 8, '2018-02-02 11:34:31'),
(39, 1, 4, '2018-02-02 11:34:23'),
(42, 1, 7, '2018-02-02 11:34:28'),
(44, 7, 1, '2018-02-02 13:56:46'),
(41, 1, 6, '2018-02-02 11:34:27'),
(37, 1, 2, '2018-02-02 11:06:21'),
(40, 1, 5, '2018-02-02 11:34:25'),
(45, 7, 3, '2018-02-02 13:56:51'),
(46, 7, 2, '2018-02-02 15:03:05'),
(47, 2, 7, '2018-02-02 15:03:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
