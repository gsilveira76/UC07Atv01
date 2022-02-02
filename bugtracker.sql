-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Jan-2022 às 20:39
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bugtracker`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_api_token_table`
--

CREATE TABLE `mantis_api_token_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_used` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bugnote_table`
--

CREATE TABLE `mantis_bugnote_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reporter_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bugnote_text_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `note_type` int(11) DEFAULT 0,
  `note_attr` varchar(250) DEFAULT '',
  `time_tracking` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_modified` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bugnote_text_table`
--

CREATE TABLE `mantis_bugnote_text_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `note` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_file_table`
--

CREATE TABLE `mantis_bug_file_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob DEFAULT NULL,
  `date_added` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bugnote_id` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_history_table`
--

CREATE TABLE `mantis_bug_history_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `date_modified` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_history_table`
--

INSERT INTO `mantis_bug_history_table` (`id`, `user_id`, `bug_id`, `field_name`, `old_value`, `new_value`, `type`, `date_modified`) VALUES
(1, 1, 1, '', '', '', 1, 1642641472),
(2, 1, 1, '', '2', '', 6, 1642788242),
(3, 1, 1, '', '4', '', 7, 1642788242),
(4, 1, 2, '', '', '', 1, 1642788844),
(5, 1, 3, '', '', '', 1, 1642789612),
(6, 1, 4, '', '', '', 1, 1642789724),
(7, 1, 4, 'status', '10', '50', 0, 1642789724),
(8, 1, 4, 'handler_id', '0', '1', 0, 1642789724),
(9, 1, 5, '', '', '', 1, 1642790088),
(10, 1, 5, 'status', '10', '50', 0, 1642790088),
(11, 1, 5, 'handler_id', '0', '1', 0, 1642790088),
(12, 1, 6, '', '', '', 1, 1642790341),
(13, 1, 6, 'status', '10', '50', 0, 1642790341),
(14, 1, 6, 'handler_id', '0', '1', 0, 1642790341),
(15, 1, 7, '', '', '', 1, 1642790958),
(16, 1, 7, 'status', '10', '50', 0, 1642790958),
(17, 1, 7, 'handler_id', '0', '1', 0, 1642790958),
(18, 1, 8, '', '', '', 1, 1642791094),
(19, 1, 8, 'status', '10', '50', 0, 1642791094),
(20, 1, 8, 'handler_id', '0', '1', 0, 1642791094),
(21, 1, 9, '', '', '', 1, 1642791332),
(22, 1, 9, 'status', '10', '50', 0, 1642791332),
(23, 1, 9, 'handler_id', '0', '1', 0, 1642791332),
(24, 1, 10, '', '', '', 1, 1642791498),
(25, 1, 10, 'status', '10', '50', 0, 1642791498),
(26, 1, 10, 'handler_id', '0', '1', 0, 1642791498),
(27, 1, 11, '', '', '', 1, 1642791648),
(28, 1, 11, 'status', '10', '50', 0, 1642791648),
(29, 1, 11, 'handler_id', '0', '1', 0, 1642791648),
(30, 1, 12, '', '', '', 1, 1642791961),
(31, 1, 12, 'status', '10', '50', 0, 1642791961),
(32, 1, 12, 'handler_id', '0', '1', 0, 1642791961),
(33, 1, 13, '', '', '', 1, 1642792185),
(34, 1, 13, 'status', '10', '50', 0, 1642792185),
(35, 1, 13, 'handler_id', '0', '1', 0, 1642792186),
(36, 1, 14, '', '', '', 1, 1642792334),
(37, 1, 14, 'status', '10', '50', 0, 1642792334),
(38, 1, 14, 'handler_id', '0', '1', 0, 1642792334),
(39, 1, 15, '', '', '', 1, 1642792772),
(40, 1, 15, 'status', '10', '50', 0, 1642792772),
(41, 1, 15, 'handler_id', '0', '1', 0, 1642792772),
(42, 1, 16, '', '', '', 1, 1642793381),
(43, 1, 16, 'status', '10', '50', 0, 1642793381),
(44, 1, 16, 'handler_id', '0', '1', 0, 1642793381),
(45, 1, 1, 'priority', '30', '40', 0, 1642793496),
(46, 1, 1, '', '5', '', 7, 1642793496);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_monitor_table`
--

CREATE TABLE `mantis_bug_monitor_table` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_relationship_table`
--

CREATE TABLE `mantis_bug_relationship_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `source_bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `destination_bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `relationship_type` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_revision_table`
--

CREATE TABLE `mantis_bug_revision_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug_id` int(10) UNSIGNED NOT NULL,
  `bugnote_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_revision_table`
--

INSERT INTO `mantis_bug_revision_table` (`id`, `bug_id`, `bugnote_id`, `user_id`, `type`, `value`, `timestamp`) VALUES
(1, 1, 0, 1, 1, 'Esse erro pode confundir o usuario e deve ser corrigido', 1642641472),
(2, 1, 0, 1, 1, 'Na pagina de cadastro de livros o campo \"Autor\" está com a descrição \"Ator\".\r\nEsse erro pode confundir o usuario e deve ser corrigido\r\n', 1642788242),
(3, 1, 0, 1, 3, 'Erro de front-En', 1642641472),
(4, 1, 0, 1, 3, 'Erro de front-end ', 1642788242),
(5, 1, 0, 1, 3, 'Erro de digitação no front-end', 1642793496);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_table`
--

CREATE TABLE `mantis_bug_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reporter_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `handler_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `priority` smallint(6) NOT NULL DEFAULT 30,
  `severity` smallint(6) NOT NULL DEFAULT 50,
  `reproducibility` smallint(6) NOT NULL DEFAULT 10,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `resolution` smallint(6) NOT NULL DEFAULT 10,
  `projection` smallint(6) NOT NULL DEFAULT 10,
  `eta` smallint(6) NOT NULL DEFAULT 10,
  `bug_text_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int(11) NOT NULL DEFAULT 0,
  `sticky` tinyint(4) NOT NULL DEFAULT 0,
  `target_version` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `due_date` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_table`
--

INSERT INTO `mantis_bug_table` (`id`, `project_id`, `reporter_id`, `handler_id`, `duplicate_id`, `priority`, `severity`, `reproducibility`, `status`, `resolution`, `projection`, `eta`, `bug_text_id`, `os`, `os_build`, `platform`, `version`, `fixed_in_version`, `build`, `profile_id`, `view_state`, `summary`, `sponsorship_total`, `sticky`, `target_version`, `category_id`, `date_submitted`, `due_date`, `last_updated`) VALUES
(1, 1, 1, 0, 0, 40, 60, 10, 10, 10, 10, 10, 1, '', '', '', '', '', '', 0, 10, 'Erro de digitação', 0, 0, '', 1, 1642641472, 1, 1642793496),
(2, 1, 1, 0, 0, 50, 60, 10, 10, 10, 10, 10, 2, '', '', '', '', '', '', 0, 10, 'Os campos com preenchimento obrigatório', 0, 0, '', 1, 1642788844, 1, 1642788844),
(3, 1, 1, 0, 0, 50, 60, 10, 10, 10, 10, 10, 3, '', '', '', '', '', '', 0, 10, 'Não possui link para lista de livros', 0, 0, '', 1, 1642789612, 1, 1642789612),
(4, 1, 1, 1, 0, 40, 60, 70, 50, 10, 10, 10, 4, '', '', '', '', '', '', 0, 10, 'Não aparece o aviso de \"Nenhum registro encontrado\"', 0, 0, '', 1, 1642789724, 1, 1642789724),
(5, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 5, '', '', '', '', '', '', 0, 10, 'O campo de Ano não está editável', 0, 0, '', 1, 1642790088, 1, 1642790088),
(6, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 6, '', '', '', '', '', '', 0, 10, 'Os campos  do cadastro de emprestimo não estão obrigatórios', 0, 0, '', 1, 1642790341, 1, 1642790341),
(7, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 7, '', '', '', '', '', '', 0, 10, 'Os livros não são marcados como emprestados', 0, 0, '', 1, 1642790958, 1, 1642790958),
(8, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 8, '', '', '', '', '', '', 0, 10, 'A listagem de empréstimos não está zebrada', 0, 0, '', 1, 1642791094, 1, 1642791094),
(9, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 9, '', '', '', '', '', '', 0, 10, 'A palavra \"Empréstimo \" está sem acento no menu superior', 0, 0, '', 1, 1642791332, 1, 1642791332),
(10, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 10, '', '', '', '', '', '', 0, 10, 'A palavra \"Usuário\" está sem acento na tabela de listagem de empréstimos', 0, 0, '', 1, 1642791498, 1, 1642791498),
(11, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 11, '', '', '', '', '', '', 0, 10, 'A palavra \"Usuário\" está sem acento no formulário de empréstimos', 0, 0, '', 1, 1642791648, 1, 1642791648),
(12, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 12, '', '', '', '', '', '', 0, 10, 'Não está ordenando os registros de empréstimo', 0, 0, '', 1, 1642791961, 1, 1642791961),
(13, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 13, '', '', '', '', '', '', 0, 10, 'A listagem de empréstimos não contém filtros funcionais', 0, 0, '', 1, 1642792185, 1, 1642792185),
(14, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 14, '', '', '', '', '', '', 0, 10, 'Não aparece o aviso de \"Nenhum registro encontrado\" na listagem de Empréstimos', 0, 0, '', 1, 1642792334, 1, 1642792334),
(15, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 15, '', '', '', '', '', '', 0, 10, 'Os campos de atualiização de empréstimo estão erroneamente disponíveis', 0, 0, '', 1, 1642792772, 1, 1642792772),
(16, 1, 1, 1, 0, 40, 60, 10, 50, 10, 10, 10, 16, '', '', '', '', '', '', 0, 10, 'Toda pagina \"Empréstimos\" está com acesso livre', 0, 0, '', 1, 1642793381, 1, 1642793381);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_tag_table`
--

CREATE TABLE `mantis_bug_tag_table` (
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_attached` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_text_table`
--

CREATE TABLE `mantis_bug_text_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_text_table`
--

INSERT INTO `mantis_bug_text_table` (`id`, `description`, `steps_to_reproduce`, `additional_information`) VALUES
(1, 'Na pagina de cadastro de livros o campo \"Autor\" está com a descrição \"Ator\".\r\nEsse erro pode confundir o usuario e deve ser corrigido\r\n', 'Acesso ao sistema e clicar no menu superior em \"Livros\"', 'Erro de digitação no front-end'),
(2, 'Os campos de cadastro de livros não estão com preenchimento  obrigatório ', 'Acessar o site , clicar em livros e clicar em \"Salvar\" sem preencher quaisquer um dos campos solicitados.', 'O mesmo está aceitando campos em branco.'),
(3, 'O site não possui  link para lista de livros , tendo acesso amesma somente com o cadastro de um livro ou digitando o endereço.', 'Se não for cadastrar um livro clicando em \"Livros\" e \"Salvar\"  ,somente com a digitação do endereço  Ex: http://localhost:5000/Livro/Listagem obtemos acesso a lista e pesquisa de livros.', ''),
(4, 'Quando pesquisado a lista de livros seja por título ou autor e não encontra nenhum resultado , a mensagem solicitada de \r\n“Nenhum registro encontrado” não é apresentada.', 'Somente quado cadastramos um livro clicando em \"Livros \" e \"Salvar\' obtemos acesso a pasta de Listagem onde atraves da pesquisa o erro se apresenta', ''),
(5, 'Não é possível editar o campo de \"Ano\" do livro', 'Clicar em Editar no item desejado da listagem e alterar o campo \"Ano\" clicar em \"Salvar\" e observar que o mesmo não se alterou.', ''),
(6, 'Os campos de cadstro de de empréstimo não estão de forma obrigatória', 'Clicar em \"Emprestimo\" , \"Cadastro\" e \"Salvar\" , observar que os camps não foram preenchidos e mesmo assim ocorreu o registro no banco de dados', ''),
(7, 'Todos os livros estão sempre disponíveis , mesmo quando já estão emprestados  não atendendo a lógica de uma lista de livros que estão disponíveis para empréstimo, ou seja, livros que não estão em um empréstimo não devolvido.', 'Efeuar um cadastro de empréstimo e observar que todos os livros estão sempre disponiveis para empréstimos', ''),
(8, 'Ao solicitar a alistagem de empréstimos a mesma não está com a tabela zebrada de intens ', 'Cicar em \"Empréstimo\" , clicar em \"Listagem\" e observar a falta de zebrado na tabela', ''),
(9, 'A palavra Empréstimo  esta com erro de digitação no menu superior , faltando o acento.', 'Acessar o site e  observar a palavra no menu superior', ''),
(10, 'A palavra \"Usuário\" está sem acento na tabela de listagem de empréstimos', 'Clicar em \"Empréstimos\", clicar em \"Listagem\" , obesrvar a palavra usuário na tabela', ''),
(11, 'A A palavra \"Usuário\" está sem acento no formulário de empréstimos', 'Clicar  em \"Empréstimos\" , clicar em \" Cadastro\", observar que a palavra esta com erro de digitação na descrição do formulário', ''),
(12, 'Não está ordenado os registros de empréstimo em ordem decrescente de data de devolução.', 'Clicar em \"Empréstimo\" , clicar em \"Listagem\" , observar a desordem de registros', ''),
(13, 'Os atributos de filtragem não estão funcionando na listagem de empréstimos', 'Clicar em \"Empréstimos\", clicar em \"Listagem\" , efetuar uma pesquisa  e obserrvar que não se obtém resultados', ''),
(14, 'Não aparece o aviso de \"Nenhum registro encontrado\" na listagem de Empréstimos', 'Clicar em \"Empréstimos\" , clicar em \'Listagem\" e efetuar uma pesquisa sem resultados', 'Pela pesquisa não estar funcionando o retorno de nehum registro encontrado é invalido até ser corrigido o erro de filtros de empréstimos'),
(15, 'A atualização do empréstimo está permitindo  a edição do campo de telefone  .', 'Clicar em \"Empréstimo\", clicar em \"Listagem\" e editar um empréstimo, observar que o telefone do usuário está disponível para edição.', ''),
(16, 'Todos os links e paginas da área de \"Empréstimos\" está com acesso público sem necessidade de logar ', 'sem estar logado no site digitar o endereço  http://localhost:5000/Emprestimo/Listagem ou http://localhost:5000/Emprestimo/Cadastro no navegador e observar o acesso livre', 'A mesma não possui restrições de acesso na controller \"EmprestimoController.cs\"');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_category_table`
--

CREATE TABLE `mantis_category_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_category_table`
--

INSERT INTO `mantis_category_table` (`id`, `project_id`, `user_id`, `name`, `status`) VALUES
(1, 0, 0, 'General', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_config_table`
--

CREATE TABLE `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `access_reqd` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 90,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_config_table`
--

INSERT INTO `mantis_config_table` (`config_id`, `project_id`, `user_id`, `access_reqd`, `type`, `value`) VALUES
('database_version', 0, 0, 90, 1, '211');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_custom_field_project_table`
--

CREATE TABLE `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sequence` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_custom_field_string_table`
--

CREATE TABLE `mantis_custom_field_string_table` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_custom_field_table`
--

CREATE TABLE `mantis_custom_field_table` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `possible_values` text DEFAULT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `valid_regexp` varchar(255) NOT NULL DEFAULT '',
  `access_level_r` smallint(6) NOT NULL DEFAULT 0,
  `access_level_rw` smallint(6) NOT NULL DEFAULT 0,
  `length_min` int(11) NOT NULL DEFAULT 0,
  `length_max` int(11) NOT NULL DEFAULT 0,
  `require_report` tinyint(4) NOT NULL DEFAULT 0,
  `require_update` tinyint(4) NOT NULL DEFAULT 0,
  `display_report` tinyint(4) NOT NULL DEFAULT 0,
  `display_update` tinyint(4) NOT NULL DEFAULT 1,
  `require_resolved` tinyint(4) NOT NULL DEFAULT 0,
  `display_resolved` tinyint(4) NOT NULL DEFAULT 0,
  `display_closed` tinyint(4) NOT NULL DEFAULT 0,
  `require_closed` tinyint(4) NOT NULL DEFAULT 0,
  `filter_by` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_email_table`
--

CREATE TABLE `mantis_email_table` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  `submitted` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_filters_table`
--

CREATE TABLE `mantis_filters_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `is_public` tinyint(4) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filter_string` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_news_table`
--

CREATE TABLE `mantis_news_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `announcement` tinyint(4) NOT NULL DEFAULT 0,
  `headline` varchar(64) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `last_modified` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_posted` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_plugin_table`
--

CREATE TABLE `mantis_plugin_table` (
  `basename` varchar(40) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `priority` int(10) UNSIGNED NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_plugin_table`
--

INSERT INTO `mantis_plugin_table` (`basename`, `enabled`, `protected`, `priority`) VALUES
('MantisCoreFormatting', 1, 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_file_table`
--

CREATE TABLE `mantis_project_file_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob DEFAULT NULL,
  `date_added` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_hierarchy_table`
--

CREATE TABLE `mantis_project_hierarchy_table` (
  `child_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `inherit_parent` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_table`
--

CREATE TABLE `mantis_project_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 10,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `access_min` smallint(6) NOT NULL DEFAULT 10,
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `inherit_global` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_project_table`
--

INSERT INTO `mantis_project_table` (`id`, `name`, `status`, `enabled`, `view_state`, `access_min`, `file_path`, `description`, `category_id`, `inherit_global`) VALUES
(1, 'Sistema de Bibliotecas', 10, 1, 10, 10, '', '', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_user_list_table`
--

CREATE TABLE `mantis_project_user_list_table` (
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access_level` smallint(6) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_version_table`
--

CREATE TABLE `mantis_project_version_table` (
  `id` int(11) NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `released` tinyint(4) NOT NULL DEFAULT 1,
  `obsolete` tinyint(4) NOT NULL DEFAULT 0,
  `date_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_sponsorship_table`
--

CREATE TABLE `mantis_sponsorship_table` (
  `id` int(11) NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_tag_table`
--

CREATE TABLE `mantis_tag_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_updated` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_tokens_table`
--

CREATE TABLE `mantis_tokens_table` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `expiry` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_tokens_table`
--

INSERT INTO `mantis_tokens_table` (`id`, `owner`, `type`, `value`, `timestamp`, `expiry`) VALUES
(5, 1, 3, '1,16,15,14,13', 1642788059, 1642879896);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_pref_table`
--

CREATE TABLE `mantis_user_pref_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default_profile` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default_project` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refresh_delay` int(11) NOT NULL DEFAULT 0,
  `redirect_delay` int(11) NOT NULL DEFAULT 0,
  `bugnote_order` varchar(4) NOT NULL DEFAULT 'ASC',
  `email_on_new` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_assigned` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_feedback` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_resolved` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_closed` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_reopened` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_bugnote` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_status` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_priority` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_priority_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_status_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_bugnote_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_reopened_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_closed_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_resolved_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_feedback_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_assigned_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_new_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_bugnote_limit` smallint(6) NOT NULL DEFAULT 0,
  `language` varchar(32) NOT NULL DEFAULT 'english',
  `timezone` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_print_pref_table`
--

CREATE TABLE `mantis_user_print_pref_table` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `print_pref` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_profile_table`
--

CREATE TABLE `mantis_user_profile_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `platform` varchar(32) NOT NULL DEFAULT '',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_table`
--

CREATE TABLE `mantis_user_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `realname` varchar(191) NOT NULL DEFAULT '',
  `email` varchar(191) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `access_level` smallint(6) NOT NULL DEFAULT 10,
  `login_count` int(11) NOT NULL DEFAULT 0,
  `lost_password_request_count` smallint(6) NOT NULL DEFAULT 0,
  `failed_login_count` smallint(6) NOT NULL DEFAULT 0,
  `cookie_string` varchar(64) NOT NULL DEFAULT '',
  `last_visit` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_user_table`
--

INSERT INTO `mantis_user_table` (`id`, `username`, `realname`, `email`, `password`, `enabled`, `protected`, `access_level`, `login_count`, `lost_password_request_count`, `failed_login_count`, `cookie_string`, `last_visit`, `date_created`) VALUES
(1, 'administrator', '', 'root@localhost', '202cb962ac59075b964b07152d234b70', 1, 0, 90, 7, 0, 0, 'Jd_Ncy6MHttYg6u-uz6OJVr1exkV9cEMgTlmysaI4D3S2ACodk1HXae-Ly0cZDVn', 1642793608, 1642635976);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `mantis_api_token_table`
--
ALTER TABLE `mantis_api_token_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_user_id_name` (`user_id`,`name`);

--
-- Índices para tabela `mantis_bugnote_table`
--
ALTER TABLE `mantis_bugnote_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug` (`bug_id`),
  ADD KEY `idx_last_mod` (`last_modified`);

--
-- Índices para tabela `mantis_bugnote_text_table`
--
ALTER TABLE `mantis_bugnote_text_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_bug_file_table`
--
ALTER TABLE `mantis_bug_file_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_file_bug_id` (`bug_id`),
  ADD KEY `idx_diskfile` (`diskfile`);

--
-- Índices para tabela `mantis_bug_history_table`
--
ALTER TABLE `mantis_bug_history_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_history_bug_id` (`bug_id`),
  ADD KEY `idx_history_user_id` (`user_id`),
  ADD KEY `idx_bug_history_date_modified` (`date_modified`);

--
-- Índices para tabela `mantis_bug_monitor_table`
--
ALTER TABLE `mantis_bug_monitor_table`
  ADD PRIMARY KEY (`user_id`,`bug_id`),
  ADD KEY `idx_bug_id` (`bug_id`);

--
-- Índices para tabela `mantis_bug_relationship_table`
--
ALTER TABLE `mantis_bug_relationship_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_relationship_source` (`source_bug_id`),
  ADD KEY `idx_relationship_destination` (`destination_bug_id`);

--
-- Índices para tabela `mantis_bug_revision_table`
--
ALTER TABLE `mantis_bug_revision_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_rev_type` (`type`),
  ADD KEY `idx_bug_rev_id_time` (`bug_id`,`timestamp`);

--
-- Índices para tabela `mantis_bug_table`
--
ALTER TABLE `mantis_bug_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  ADD KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  ADD KEY `idx_bug_status` (`status`),
  ADD KEY `idx_project` (`project_id`);

--
-- Índices para tabela `mantis_bug_tag_table`
--
ALTER TABLE `mantis_bug_tag_table`
  ADD PRIMARY KEY (`bug_id`,`tag_id`),
  ADD KEY `idx_bug_tag_tag_id` (`tag_id`);

--
-- Índices para tabela `mantis_bug_text_table`
--
ALTER TABLE `mantis_bug_text_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_category_table`
--
ALTER TABLE `mantis_category_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_category_project_name` (`project_id`,`name`);

--
-- Índices para tabela `mantis_config_table`
--
ALTER TABLE `mantis_config_table`
  ADD PRIMARY KEY (`config_id`,`project_id`,`user_id`);

--
-- Índices para tabela `mantis_custom_field_project_table`
--
ALTER TABLE `mantis_custom_field_project_table`
  ADD PRIMARY KEY (`field_id`,`project_id`);

--
-- Índices para tabela `mantis_custom_field_string_table`
--
ALTER TABLE `mantis_custom_field_string_table`
  ADD PRIMARY KEY (`field_id`,`bug_id`),
  ADD KEY `idx_custom_field_bug` (`bug_id`);

--
-- Índices para tabela `mantis_custom_field_table`
--
ALTER TABLE `mantis_custom_field_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_custom_field_name` (`name`);

--
-- Índices para tabela `mantis_email_table`
--
ALTER TABLE `mantis_email_table`
  ADD PRIMARY KEY (`email_id`);

--
-- Índices para tabela `mantis_filters_table`
--
ALTER TABLE `mantis_filters_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_news_table`
--
ALTER TABLE `mantis_news_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_plugin_table`
--
ALTER TABLE `mantis_plugin_table`
  ADD PRIMARY KEY (`basename`);

--
-- Índices para tabela `mantis_project_file_table`
--
ALTER TABLE `mantis_project_file_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_project_hierarchy_table`
--
ALTER TABLE `mantis_project_hierarchy_table`
  ADD UNIQUE KEY `idx_project_hierarchy` (`child_id`,`parent_id`),
  ADD KEY `idx_project_hierarchy_child_id` (`child_id`),
  ADD KEY `idx_project_hierarchy_parent_id` (`parent_id`);

--
-- Índices para tabela `mantis_project_table`
--
ALTER TABLE `mantis_project_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_project_name` (`name`),
  ADD KEY `idx_project_view` (`view_state`);

--
-- Índices para tabela `mantis_project_user_list_table`
--
ALTER TABLE `mantis_project_user_list_table`
  ADD PRIMARY KEY (`project_id`,`user_id`),
  ADD KEY `idx_project_user` (`user_id`);

--
-- Índices para tabela `mantis_project_version_table`
--
ALTER TABLE `mantis_project_version_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_project_version` (`project_id`,`version`);

--
-- Índices para tabela `mantis_sponsorship_table`
--
ALTER TABLE `mantis_sponsorship_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sponsorship_bug_id` (`bug_id`),
  ADD KEY `idx_sponsorship_user_id` (`user_id`);

--
-- Índices para tabela `mantis_tag_table`
--
ALTER TABLE `mantis_tag_table`
  ADD PRIMARY KEY (`id`,`name`),
  ADD KEY `idx_tag_name` (`name`);

--
-- Índices para tabela `mantis_tokens_table`
--
ALTER TABLE `mantis_tokens_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_typeowner` (`type`,`owner`);

--
-- Índices para tabela `mantis_user_pref_table`
--
ALTER TABLE `mantis_user_pref_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_user_print_pref_table`
--
ALTER TABLE `mantis_user_print_pref_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `mantis_user_profile_table`
--
ALTER TABLE `mantis_user_profile_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_user_table`
--
ALTER TABLE `mantis_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  ADD UNIQUE KEY `idx_user_username` (`username`),
  ADD KEY `idx_enable` (`enabled`),
  ADD KEY `idx_access` (`access_level`),
  ADD KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mantis_api_token_table`
--
ALTER TABLE `mantis_api_token_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bugnote_table`
--
ALTER TABLE `mantis_bugnote_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bugnote_text_table`
--
ALTER TABLE `mantis_bugnote_text_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bug_file_table`
--
ALTER TABLE `mantis_bug_file_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bug_history_table`
--
ALTER TABLE `mantis_bug_history_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `mantis_bug_relationship_table`
--
ALTER TABLE `mantis_bug_relationship_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bug_revision_table`
--
ALTER TABLE `mantis_bug_revision_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `mantis_bug_table`
--
ALTER TABLE `mantis_bug_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `mantis_bug_text_table`
--
ALTER TABLE `mantis_bug_text_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `mantis_category_table`
--
ALTER TABLE `mantis_category_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mantis_custom_field_table`
--
ALTER TABLE `mantis_custom_field_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_email_table`
--
ALTER TABLE `mantis_email_table`
  MODIFY `email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_filters_table`
--
ALTER TABLE `mantis_filters_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_news_table`
--
ALTER TABLE `mantis_news_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_project_file_table`
--
ALTER TABLE `mantis_project_file_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_project_table`
--
ALTER TABLE `mantis_project_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mantis_project_version_table`
--
ALTER TABLE `mantis_project_version_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_sponsorship_table`
--
ALTER TABLE `mantis_sponsorship_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_tag_table`
--
ALTER TABLE `mantis_tag_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_tokens_table`
--
ALTER TABLE `mantis_tokens_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `mantis_user_pref_table`
--
ALTER TABLE `mantis_user_pref_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_user_profile_table`
--
ALTER TABLE `mantis_user_profile_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_user_table`
--
ALTER TABLE `mantis_user_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
