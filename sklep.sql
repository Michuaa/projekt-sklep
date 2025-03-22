-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2025 at 12:50 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `id_kategori` int(11) NOT NULL,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategoria`
--

INSERT INTO `kategoria` (`id_kategori`, `nazwa`) VALUES
(1, 'Karta Graficzna'),
(2, 'Monitor'),
(3, 'Laptop'),
(4, 'Myszka'),
(5, 'Klawiatura');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `id_p` int(11) NOT NULL,
  `produkty` varchar(255) NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `cena` int(10) NOT NULL,
  `opis` text NOT NULL,
  `id_kategorii` int(11) NOT NULL,
  `zdjecie` varchar(255) NOT NULL,
  `id_sprzetu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `cena`, `opis`, `id_kategorii`, `zdjecie`, `id_sprzetu`) VALUES
(1, 1500, 'Wydajna karta graficzna do gier.', 1, '../img/karta1.png', 1),
(2, 2000, 'Świetna wydajność w 1440p.', 1, '../img/karta2.png', 2),
(3, 1200, 'Idealna do budżetowych PC.', 1, '../img/karta3.png', 3),
(4, 1000, 'Dobra opcja do 1080p.', 1, '../img/karta4.png', 4),
(5, 3000, 'Najlepsza do 4K gaming.', 1, '../img/karta5.png', 5),
(6, 800, 'Szybki monitor dla graczy.', 2, '../img/monitor 1.png', 6),
(7, 1000, 'Dobra jakość obrazu.', 2, '../img/monitor 2.png', 7),
(8, 1800, 'Bardzo wysoka częstotliwość.', 2, '../img/monitor 3.png', 8),
(9, 1400, 'Świetny dla e-sportowców.', 2, '../img/monitor 4.png', 9),
(10, 2200, 'Zakřivený ekran, lepsza immersja.', 2, '../img/monitor 5.png', 10),
(11, 4000, 'Mocny laptop do pracy.', 3, '../img/laptop1.png', 11),
(12, 5000, 'Idealny dla profesjonalistów.', 3, '../img/laptop2.png', 12),
(13, 6000, 'Gamingowy potwór.', 3, '../img/laptop3.png', 13),
(14, 3500, 'Dobra wydajność w rozsądnej cenie.', 3, '../img/laptop4.png', 14),
(15, 4500, 'Stylowy i szybki.', 3, '../img/laptop5.png', 15),
(16, 300, 'Precyzyjna mysz gamingowa.', 4, '../img/myszka1.png', 16),
(17, 250, 'Ergonomiczny kształt.', 4, '../img/myszka2.png', 17),
(18, 400, 'Doskonała dla FPS-ów.', 4, '../img/myszka3.png', 18),
(19, 350, 'Ultralekka konstrukcja.', 4, '../img/myszka4.png', 19),
(20, 500, 'Długi czas pracy na baterii.', 4, '../img/myszka5.png', 20),
(21, 600, 'Mechaniczna klawiatura premium.', 5, '../img/klawiatura1.png', 21),
(22, 700, 'Szybkie przełączniki optyczne.', 5, '../img/klawiatura2.png', 22),
(23, 650, 'Personalizowane podświetlenie.', 5, '../img/klawiatura3.png', 23),
(24, 550, 'Idealna dla profesjonalistów.', 5, '../img/klawiatura4.png', 24),
(25, 750, 'Kompaktowy i stylowy design.', 5, '../img/klawiatura5.png', 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzet`
--

CREATE TABLE `sprzet` (
  `id_sprzetu` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `pamiec` varchar(255) DEFAULT NULL,
  `uklad` varchar(255) DEFAULT NULL,
  `hz` varchar(255) DEFAULT NULL,
  `rozmiar` varchar(255) DEFAULT NULL,
  `procesor` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `dpi` varchar(255) DEFAULT NULL,
  `lp` varchar(255) DEFAULT NULL,
  `numpad` varchar(255) DEFAULT NULL,
  `dlugosc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sprzet`
--

INSERT INTO `sprzet` (`id_sprzetu`, `nazwa`, `pamiec`, `uklad`, `hz`, `rozmiar`, `procesor`, `ram`, `dpi`, `lp`, `numpad`, `dlugosc`) VALUES
(1, 'NVIDIA RTX 4060', '8GB', 'PCIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'AMD RX 6700 XT', '12GB', 'PCIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'NVIDIA GTX 1660', '6GB', 'PCIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'AMD RX 6600', '8GB', 'PCIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'NVIDIA RTX 4080', '16GB', 'PCIe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'LG UltraGear', NULL, NULL, '144', '24\"', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Dell P2422H', NULL, NULL, '75', '23.8\"', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Samsung G7', NULL, NULL, '240', '27\"', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ASUS TUF VG27', NULL, NULL, '165', '27\"', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'AOC C24G1', NULL, NULL, '144', '24\"', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Dell XPS 15', NULL, NULL, NULL, NULL, 'i7-12700H', '16GB', NULL, NULL, NULL, NULL),
(12, 'MacBook Pro 16', NULL, NULL, NULL, NULL, 'M2 Pro', '32GB', NULL, NULL, NULL, NULL),
(13, 'ASUS ROG Zephyrus', NULL, NULL, NULL, NULL, 'Ryzen 9 6900HS', '32GB', NULL, NULL, NULL, NULL),
(14, 'Lenovo Legion 5', NULL, NULL, NULL, NULL, 'Ryzen 7 5800H', '16GB', NULL, NULL, NULL, NULL),
(15, 'HP Omen 16', NULL, NULL, NULL, NULL, 'i7-13700H', '32GB', NULL, NULL, NULL, NULL),
(16, 'Logitech G502', NULL, NULL, NULL, NULL, NULL, NULL, '25000', '1', NULL, NULL),
(17, 'Razer DeathAdder', NULL, NULL, NULL, NULL, NULL, NULL, '16000', '1', NULL, NULL),
(18, 'SteelSeries Rival', NULL, NULL, NULL, NULL, NULL, NULL, '18000', '1', NULL, NULL),
(19, 'Glorious Model O', NULL, NULL, NULL, NULL, NULL, NULL, '12000', '1', NULL, NULL),
(20, 'Corsair Dark Core', NULL, NULL, NULL, NULL, NULL, NULL, '20000', '1', NULL, NULL),
(21, 'Corsair K70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '44cm'),
(22, 'Razer Huntsman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '45cm'),
(23, 'SteelSeries Apex Pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '43cm'),
(24, 'Logitech G Pro X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '36cm'),
(25, 'Keychron K6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '31cm');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `Id_zamowienia` int(11) NOT NULL,
  `data_zamowienia` int(11) NOT NULL,
  `Cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`id_p`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  ADD PRIMARY KEY (`id_sprzetu`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`Id_zamowienia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `koszyk`
--
ALTER TABLE `koszyk`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sprzet`
--
ALTER TABLE `sprzet`
  MODIFY `id_sprzetu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `Id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
