-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 28, 2017 alle 11:41
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootstrap`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `titolo` varchar(100) NOT NULL,
  `testo` text NOT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idutente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `post`
--

INSERT INTO `post` (`id`, `titolo`, `testo`, `postdate`, `idutente`) VALUES
(1, 'iPhone 6s', 'Ho acquistato da 6 mesi un iPhone 6s e la batteria dura meno di 4 ore!!', '2017-06-22 08:14:12', 1),
(2, 'Huawei P9 Lite', 'Testato, ottimo rapporto q/p!', '2017-06-22 09:54:00', 2),
(3, 'Nokia Lumia 920', 'Che ne pensate del Nokia Lumia 920?', '2017-06-22 09:55:49', 3),
(4, 'Un post esageratamente lungo', 'Per testare se effettivamente funziona il metodo substring!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc elit odio, imperdiet in fringilla convallis, scelerisque nec lacus. Nullam varius dictum metus, vitae tincidunt nisl tristique ac. Mauris eu augue vulputate, vestibulum mi vitae, hendrerit quam. Nam sollicitudin felis lorem, vitae gravida justo aliquam non. Quisque rutrum libero ac urna porttitor consectetur. Aenean non eros eu augue finibus aliquet nec viverra quam. Suspendisse aliquet dui in varius lacinia. Donec tempus, ligula ut elementum dapibus, nibh nisl placerat neque, sit amet euismod justo diam non velit. Curabitur eu neque at lectus porttitor imperdiet. Nam pulvinar, lacus mattis luctus fringilla, magna ligula tincidunt elit, vitae finibus enim dolor ut velit. Integer vehicula, nisl eu tempus pulvinar, neque est placerat nulla, rutrum consequat nulla neque vitae tortor. Praesent facilisis blandit eros, sed tincidunt sapien pharetra vel. Proin gravida quam ipsum. Aliquam sit amet massa urna. Vestibulum congue aliquet lectus, cursus rhoncus mi gravida nec. Sed vel ullamcorper eros.\r\n\r\nCras consectetur non odio dignissim faucibus. Nam vulputate justo quis pellentesque rhoncus. Vestibulum nisl magna, malesuada et mattis a, venenatis quis diam. Phasellus rhoncus egestas est, sit amet porta odio gravida tincidunt. Sed ut aliquet nibh. Aenean sed ligula faucibus, eleifend augue quis, malesuada velit. Mauris et elit at augue pulvinar feugiat.\r\n\r\nNunc imperdiet posuere lorem, non condimentum mi iaculis sed. Morbi placerat sapien eu arcu euismod mattis. Ut ut dictum nibh, id maximus justo. Praesent sem libero, eleifend ut gravida eget, luctus sed augue. Maecenas feugiat mi eu massa hendrerit placerat. Proin risus neque, fringilla id arcu ut, scelerisque molestie nulla. Curabitur porttitor semper risus sed volutpat. Nulla ut lacinia odio. Suspendisse id diam et metus tristique finibus. Aliquam a enim nulla. Nam nunc lacus, porttitor sit amet diam quis, egestas suscipit nunc. Nullam non congue enim, eget interdum elit. Pellentesque felis ex, tristique ut tortor at, mattis rutrum nunc. Maecenas vitae nibh eu nisi porttitor accumsan. Mauris commodo, purus eu tempor aliquet, sem purus pulvinar tortor, tincidunt maximus ex tellus quis ligula.', '2017-06-22 10:23:41', 1),
(5, 'Samsung Galaxy S8', 'Samsung Galaxy S8 è uno smartphone Android con caratteristiche all\'avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati. Dispone di un grande display da 5.8 pollici e di una risoluzione da 2960x1440 pixel, fra le più elevate attualmente in circolazione. Le funzionalità offerte da questo Samsung Galaxy S8 sono innumerevoli e tutte al top di gamma. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. \nFotocamera da 12 megapixel. Lo spessore di 8mm è veramente contenuto e rende questo Samsung Galaxy S8 ancora più spettacolare. ', '2017-06-22 10:25:17', 3),
(9, 'Verifica di Mercoledi 28', 'Oggi si svolgerà l\'ultima verifica del corso	  ', '2017-06-28 08:25:08', 1),
(10, 'Ifoa THE END', 'Siamo arrivati a 300Ore		  ', '2017-06-28 09:05:53', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `risposte`
--

CREATE TABLE `risposte` (
  `id` int(11) NOT NULL,
  `idpost` int(11) NOT NULL,
  `idutente` int(11) NOT NULL,
  `testo` text NOT NULL,
  `postdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `risposte`
--

INSERT INTO `risposte` (`id`, `idpost`, `idutente`, `testo`, `postdate`) VALUES
(1, 1, 1, 'risposta a aa', '2017-06-22 09:43:28'),
(2, 1, 1, 'seconda risposta a aa', '2017-06-22 09:51:47'),
(3, 1, 1, 'terza risposta', '2017-06-22 09:53:33'),
(4, 3, 1, 'Stai scherzando??', '2017-06-22 10:22:32'),
(5, 5, 1, '...e quindi?', '2017-06-22 10:25:41'),
(6, 5, 1, 'xxxx', '2017-06-22 15:07:36'),
(7, 5, 1, 'bbb', '2017-06-22 15:07:51'),
(8, 5, 1, 'asddsadasdasdas			  ', '2017-06-28 08:16:08'),
(9, 5, 1, 'prova ultima data			  ', '2017-06-28 08:20:31'),
(10, 3, 1, 'ma perché è un telefono?			  ', '2017-06-28 08:47:21'),
(11, 4, 1, 'è veramente lunghissimo		  ', '2017-06-28 09:00:31'),
(12, 2, 1, '			  si però fa cagare', '2017-06-28 09:01:11'),
(13, 9, 1, 'meno male!!', '2017-06-28 09:05:25'),
(14, 10, 2, 'peccato 			  ', '2017-06-28 09:06:39');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `username`, `password`, `email`) VALUES
(1, 'andrea', 'password', 'andrea.previati@mobimentum.it'),
(2, 'luca', 'password', 'luca@email.com'),
(3, 'paolo', 'password', 'paolo@email.com'),
(4, 'giovanni', 'password', 'giovanni@email.com');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autore` (`idutente`);

--
-- Indici per le tabelle `risposte`
--
ALTER TABLE `risposte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpost` (`idpost`),
  ADD KEY `idutente` (`idutente`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `risposte`
--
ALTER TABLE `risposte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`idutente`) REFERENCES `utenti` (`id`);

--
-- Limiti per la tabella `risposte`
--
ALTER TABLE `risposte`
  ADD CONSTRAINT `risposte_ibfk_1` FOREIGN KEY (`idpost`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `risposte_ibfk_2` FOREIGN KEY (`idutente`) REFERENCES `utenti` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
