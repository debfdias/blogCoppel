-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12-Nov-2018 às 15:44
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(250) NOT NULL,
  `content` varchar(500) NOT NULL,
  `post` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Extraindo dados da tabela `comment`
--

INSERT INTO `comment` (`id`, `author`, `content`, `post`) VALUES
(1, 'admin', 'Nice content!', 2),
(2, 'admin', 'Very good! Congrats.', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `content` text,
  `description` text,
  `slug` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`id`, `author`, `title`, `content`, `description`, `slug`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Series Forecasting', 'Given the rise of smart electricity meters and the wide adoption of electricity generation technology like solar panels, there is a wealth of electricity usage data available.\n\nThis data represents a multivariate time series of power-related variables that in turn could be used to model and even forecast future electricity consumption.\n\nMachine learning algorithms predict a single value and cannot be used directly for multi-step forecasting. Two strategies that can be used to make multi-step forecasts with machine learning algorithms are the recursive and the direct methods.\n\nIn this tutorial, you will discover how to develop recursive and direct multi-step forecasting models with machine learning algorithms.', 'Two strategies that can be used to make multi-step forecasts ', 'seriesfor', 0, 'publish', '2018-11-12 11:19:17', '2018-11-12 11:19:17'),
(2, 2, 'Rare Event Time Series Forecasting', 'Time series forecasting with LSTMs directly has shown little success.\n\nThis is surprising as neural networks are known to be able to learn complex non-linear relationships and the LSTM is perhaps the most successful type of recurrent neural network that is capable of directly supporting multivariate sequence prediction problems.\n\nA recent study performed at Uber AI Labs demonstrates how both the automatic feature learning capabilities of LSTMs and their ability to handle input sequences can be harnessed in an end-to-end model that can be used for drive demand forecasting for rare events like public holidays.', 'Discover an approach to developing a scalable end-to-end LSTM model ', 'eventtime', 0, 'publish', '2018-11-12 11:19:17', '2018-11-12 11:19:17'),
(3, 3, 'A Gentle Introduction to LSTM Autoencoders', 'An LSTM Autoencoder is an implementation of an autoencoder for sequence data using an Encoder-Decoder LSTM architecture.\n\nOnce fit, the encoder part of the model can be used to encode or compress sequence data that in turn may be used in data visualizations or as a feature vector input to a supervised learning model.\n\nIn this post, you will discover the LSTM Autoencoder model and how to implement it in Python using Keras.\n\nAfter reading this post, you will know:', 'Once fit, the encoder part of the model can be used to encode or compress sequence data that in turn may be used in data visualizations or as a feature vector input to a supervised learning model.', 'lstm', 0, 'publish', '2018-11-12 11:19:17', '2018-11-12 11:19:17'),
(4, 3, 'How to Grid Search Triple Exponential Smoothing for Time Series Forecasting in Python', 'It is common practice to use an optimization process to find the model hyperparameters that result in the exponential smoothing model with the best performance for a given time series dataset. This practice applies only to the coefficients used by the model to describe the exponential structure of the level, trend, and seasonality.\n\nIt is also possible to automatically optimize other hyperparameters of an exponential smoothing model, such as whether or not to model the trend and seasonal component and if so, whether to model them using an additive or multiplicative method.\n', 'Exponential smoothing is a time series forecasting method for univariate data that can be extended to support data with a systematic trend or seasonal component.', 'sads', 0, 'publish', '2018-11-12 11:22:32', '2018-11-12 11:22:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relationship`
--

CREATE TABLE IF NOT EXISTS `relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `relationship`
--

INSERT INTO `relationship` (`id`, `post_id`, `term_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 1, 2),
(4, 1, 2),
(8, 4, 1),
(9, 4, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `term`
--

CREATE TABLE IF NOT EXISTS `term` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT 'category',
  `title` varchar(255) NOT NULL,
  `description` text,
  `slug` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `term`
--

INSERT INTO `term` (`id`, `parent`, `type`, `title`, `description`, `slug`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'category', 'Machine Learning', 'About machine learning.', 'ml', 0, 1, '2018-11-12 11:19:18', '2018-11-12 11:19:18'),
(2, 0, 'category', 'Neural network', 'About neural network.', 'neuralnet', 0, 1, '2018-11-12 11:19:18', '2018-11-12 11:19:18'),
(3, 0, 'category', 'Framework', 'About frameworks', 'fmws', 0, 1, '2018-11-12 11:19:18', '2018-11-12 11:19:18'),
(4, 0, 'category', 'Natural language', 'About natural languages.', 'nl', 0, 1, '2018-11-12 11:22:21', '2018-11-12 11:22:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(16) NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'vince@gmail.com', 'Vince Smith', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-12 11:19:17', '2018-11-12 11:19:17'),
(2, 'ted@gmail.com', 'Ted Mosby', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-12 11:19:17', '2018-11-12 11:19:17'),
(3, 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, '2018-11-12 11:19:17', '2018-11-12 11:19:17'),
(4, 'deb@gmail.com', 'Debs Dias', 'e10adc3949ba59abbe56e057f20f883e', 'user', 1, '2018-11-12 11:19:17', '2018-11-12 11:19:17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
