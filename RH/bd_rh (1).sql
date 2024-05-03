-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03/05/2024 às 21:13
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_rh`
CREATE DATABASE `bd_rh`;
USE `bd_rh`;
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `CodigoCargo` char(2) NOT NULL,
  `Descricao` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`CodigoCargo`, `Descricao`) VALUES
('01', 'Assistente de Recrutamento'),
('02', 'Especialista em Desenvolviment'),
('03', 'Analista de Administração de P'),
('04', 'Gestor de Compensação e Benefí'),
('05', 'Coordenador de Segurança do Tr'),
('06', 'Consultor de Relações Trabalhi'),
('07', 'Especialista em Gestão de Dese'),
('08', 'Gerente de Diversidade e Inclu'),
('09', 'Analista de Comunicação Corpor'),
('10', 'Diretor de Talentos e Cultura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `CodigoDepto` char(2) NOT NULL,
  `Descricao` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`CodigoDepto`, `Descricao`) VALUES
('01', 'Recrutamento e Aquisição de Ta'),
('02', 'Treinamento e Crescimento Prof'),
('03', 'Administração de Recursos Huma'),
('04', 'Remuneração e Benefícios'),
('05', 'Segurança e Saúde Ocupacional'),
('06', 'Relações Laborais e Sindicais'),
('07', 'Gestão de Performance'),
('08', 'Equidade e Diversidade'),
('09', 'Comunicação Interna e Engajame'),
('10', 'Desenvolvimento de Talentos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dependentes`
--

CREATE TABLE `dependentes` (
  `matricula` varchar(5) NOT NULL,
  `NomeDependente` varchar(50) NOT NULL,
  `DtNascimento` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dependentes`
--

INSERT INTO `dependentes` (`matricula`, `NomeDependente`, `DtNascimento`) VALUES
('100', 'Gabriela Santos', '2011-03-20'),
('101', 'Lucas Oliveira', '2014-09-08'),
('102', 'Marina Pereira', '2010-12-05'),
('103', 'Rafael Silva', '2009-06-18'),
('104', 'Amanda Costa', '2008-11-30'),
('105', 'Thiago Martins', '2007-07-15'),
('106', 'Larissa Almeida', '2010-02-28'),
('107', 'Bruno Souza', '2011-08-12'),
('108', 'Juliana Ferreira', '2006-04-25'),
('109', 'Felipe Mendes', '2005-10-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `matricula` varchar(5) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `DataNasc` date NOT NULL,
  `nacionalidade` varchar(20) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `EstadoCivil` varchar(20) NOT NULL,
  `Rg` varchar(20) NOT NULL,
  `cic` varchar(20) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `DataAdimissao` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`matricula`, `nome`, `DataNasc`, `nacionalidade`, `sexo`, `EstadoCivil`, `Rg`, `cic`, `endereco`, `telefone`, `DataAdimissao`) VALUES
('100', 'Rafaela Oliveira Santos', '1992-07-15', 'Brasileira', 'Feminino', 'Solteira', '32.504.304-5', '151.183.789-66', 'Rua dos Girassóis, 123', '(11) 98765-4321', '2023-03-12'),
('101', 'Lucas Silva Pereira', '1990-11-28', 'Brasileiro', 'Masculino', 'Casado', '44.223.556-7', '251.973.853-48', 'Avenida das Palmeiras, 456', '(22) 99876-5432', '2024-02-28'),
('102', 'Amanda Costa Vieira', '1987-09-25', 'Brasileira', 'Feminino', 'Solteira', '30.894.726-8', '174.329.542-69', 'Rua das Acácias, 789', '(33) 98765-1234', '2023-01-05'),
('103', 'Bruno Oliveira Almeida', '1985-03-12', 'Brasileiro', 'Masculino', 'Casado', '37.445.892-2', '062.983.174-10', 'Travessa dos Ipês, 321', '(44) 99654-9876', '2022-05-12'),
('104', 'Juliana Ferreira Lima', '1989-08-20', 'Brasileira', 'Feminino', 'Solteira', '28.107.634-4', '310.582.456-87', 'Avenida das Orquídeas, 987', '(11) 98765-4321', '2023-07-18'),
('105', 'Fernando Santos Rodrigues', '1983-05-30', 'Brasileiro', 'Masculino', 'Casado', '25.389.740-6', '280.698.542-23', 'Rua das Rosas, 456', '(21) 99876-5432', '2024-09-28'),
('106', 'Vanessa Oliveira Costa', '1980-11-12', 'Brasileira', 'Feminino', 'Solteira', '35.820.946-8', '451.789.123-64', 'Alameda dos Cravos, 789', '(31) 98765-1234', '2022-11-05'),
('107', 'João Pereira da Silva', '1978-04-05', 'Brasileiro', 'Masculino', 'Casado', '29.107.634-2', '615.987.452-98', 'Rua dos Lírios, 321', '(41) 99654-9876', '2023-08-22'),
('108', 'Laura Santos Almeida', '1976-09-18', 'Brasileira', 'Feminino', 'Casada', '33.210.840-7', '280.745.852-33', 'Avenida das Tulipas, 987', '(11) 98765-4321', '2024-10-14'),
('109', 'Ricardo Oliveira Pereira', '1974-02-01', 'Brasileiro', 'Masculino', 'Casado', '24.978.635-9', '451.852.963-64', 'Travessa dos Crisântemos, 789', '(21) 99876-5432', '2021-05-08'),
('110', 'Carolina Santos Lima', '1972-10-30', 'Brasileira', 'Feminino', 'Solteira', '38.506.946-1', '615.789.123-54', 'Rua dos Narcisos, 321', '(31) 98765-1234', '2023-04-25'),
('111', 'José Oliveira Silva', '1969-07-12', 'Brasileiro', 'Masculino', 'Casado', '31.489.210-4', '280.745.852-33', 'Alameda das Begônias, 987', '(11) 99654-9876', '2024-11-30'),
('112', 'Camila Almeida Oliveira', '1967-05-23', 'Brasileira', 'Feminino', 'Solteira', '28.745.396-8', '451.852.963-64', 'Avenida das Margaridas, 789', '(21) 99876-5432', '2022-06-15'),
('113', 'Paulo Pereira Costa', '1964-11-08', 'Brasileiro', 'Masculino', 'Casado', '30.987.632-2', '615.789.123-54', 'Travessa das Begônias, 321', '(31) 98765-1234', '2023-12-20'),
('114', 'Mariana Oliveira Pereira', '1962-04-18', 'Brasileira', 'Feminino', 'Solteira', '25.632.180-5', '280.745.852-33', 'Rua das Rosas, 987', '(11) 99654-9876', '2024-02-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lotacao`
--

CREATE TABLE `lotacao` (
  `matricula` varchar(5) NOT NULL,
  `codigoDepto` char(2) NOT NULL,
  `DtInicio` date NOT NULL,
  `DtFim` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lotacao`
--

INSERT INTO `lotacao` (`matricula`, `codigoDepto`, `DtInicio`, `DtFim`) VALUES
('100', '08', '2022-04-15', '2027-04-30'),
('101', '09', '2021-05-20', '2027-05-28'),
('102', '06', '2023-06-10', '2027-06-25'),
('103', '07', '2024-07-15', '2031-07-21'),
('104', '10', '2022-08-17', '2025-08-18'),
('105', '05', '2020-09-20', '2027-09-25'),
('106', '03', '2021-10-01', '2035-10-01'),
('107', '02', '2023-11-08', '2027-11-05'),
('108', '04', '2024-12-16', '2029-12-22'),
('109', '01', '2022-01-05', '2027-01-08'),
('110', '08', '2023-02-03', '2025-02-19'),
('111', '09', '2020-03-20', '2031-03-19'),
('112', '06', '2024-04-01', '2033-04-26'),
('113', '07', '2021-05-09', '2027-05-21'),
('114', '10', '2022-06-11', '2029-06-06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocupacao`
--

CREATE TABLE `ocupacao` (
  `matricula` varchar(5) NOT NULL,
  `codigoCargo` char(2) NOT NULL,
  `DtInicio` date NOT NULL,
  `DtFim` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocupacao`
--

INSERT INTO `ocupacao` (`matricula`, `codigoCargo`, `DtInicio`, `DtFim`) VALUES
('100', '08', '2015-04-22', '2023-04-30'),
('101', '09', '2017-05-20', '2029-05-28'),
('102', '07', '2016-06-10', '2023-06-25'),
('103', '06', '2021-07-15', '2031-07-21'),
('104', '03', '2018-08-17', '2025-08-18'),
('105', '05', '2019-09-20', '2027-09-25'),
('106', '10', '2017-10-01', '2035-10-01'),
('107', '04', '2018-11-08', '2026-11-05'),
('108', '02', '2019-12-16', '2028-12-22'),
('109', '01', '2020-01-05', '2027-01-08'),
('110', '08', '2016-02-03', '2028-02-19'),
('111', '09', '2022-03-20', '2031-03-19'),
('112', '06', '2017-04-01', '2025-04-26'),
('113', '07', '2023-05-09', '2032-05-21'),
('114', '10', '2020-06-11', '2029-06-06');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`CodigoCargo`);

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`CodigoDepto`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`matricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
