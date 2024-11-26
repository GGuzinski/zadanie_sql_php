-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 26, 2024 at 12:16 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `przychodnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarze`
--

CREATE TABLE `lekarze` (
  `id_lekarza` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `specjalizacja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lekarze`
--

INSERT INTO `lekarze` (`id_lekarza`, `imie`, `nazwisko`, `telefon`, `specjalizacja`) VALUES
(1, 'Andrzej', 'Nowak', '500-123-456', 1),
(2, 'Katarzyna', 'Zielińska', '600-234-567', 2),
(3, 'Paweł', 'Kowalski', '700-345-678', 3),
(4, 'Monika', 'Wiśniewska', '800-456-789', 4),
(5, 'Tomasz', 'Jankowski', '900-567-890', 5),
(6, 'Anna', 'Wójcik', '501-678-234', 1),
(7, 'Marek', 'Lewandowski', '502-789-345', 2),
(8, 'Magdalena', 'Pawlak', '503-890-456', 3),
(9, 'Łukasz', 'Kaczmarek', '504-901-567', 4),
(10, 'Beata', 'Szymańska', '505-012-678', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjenci`
--

CREATE TABLE `pacjenci` (
  `id_pacjenta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `telefon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacjenci`
--

INSERT INTO `pacjenci` (`id_pacjenta`, `imie`, `nazwisko`, `data_urodzenia`, `pesel`, `miasto`, `telefon`) VALUES
(1, 'Jan', 'Kowalski', '1990-05-15', '12345678901', 'Warszawa', '123-456-789'),
(2, 'Anna', 'Nowak', '1985-08-22', '98765432109', 'Kraków', '987-654-321'),
(3, 'Piotr', 'Wiśniewski', '1992-12-30', '11122334455', 'Wrocław', '555-123-456'),
(4, 'Maria', 'Zielińska', '1988-04-10', '22334455667', 'Gdańsk', '678-910-111'),
(5, 'Tomasz', 'Jankowski', '1995-11-02', '33445566778', 'Poznań', '222-333-444'),
(6, 'Jacek', 'Nowakowski', '1980-01-15', '12345678902', 'Warszawa', '111-222-333'),
(7, 'Karolina', 'Kwiatkowska', '1993-06-27', '23456789012', 'Kraków', '222-333-444'),
(8, 'Szymon', 'Kaczmarek', '1975-02-09', '34567890123', 'Wrocław', '333-444-555'),
(9, 'Ewa', 'Kamińska', '1990-11-17', '45678901234', 'Gdańsk', '444-555-666'),
(10, 'Michał', 'Kowalczyk', '1982-12-25', '56789012345', 'Poznań', '555-666-777'),
(11, 'Agnieszka', 'Dąbrowska', '1986-03-30', '67890123456', 'Lublin', '666-777-888'),
(12, 'Patryk', 'Sikora', '2000-07-10', '78901234567', 'Katowice', '777-888-999'),
(13, 'Olga', 'Wojciechowska', '1997-09-05', '89012345678', 'Szczecin', '888-999-000'),
(14, 'Marcin', 'Rogalski', '1989-04-22', '90123456789', 'Gdynia', '999-000-111'),
(15, 'Joanna', 'Lewandowska', '1995-08-13', '01234567890', 'Łódź', '000-111-222');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recepta`
--

CREATE TABLE `recepta` (
  `id_recepty` int(11) NOT NULL,
  `nazwa_leku` varchar(100) NOT NULL,
  `ilosc_leku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recepta`
--

INSERT INTO `recepta` (`id_recepty`, `nazwa_leku`, `ilosc_leku`) VALUES
(1, 'Aspirin Cardio', 30),
(2, 'Metocard', 30),
(3, 'Enalapril', 30),
(4, 'Rosuvastatin', 30),
(5, 'Neurontin', 60),
(6, 'Relpax', 20),
(7, 'Tryptany', 20),
(8, 'Lamitrin', 30),
(9, 'Paracetamol', 20),
(10, 'Ketoprofen', 15),
(11, 'Chlorchinaldin', 30),
(12, 'Cefuroksym', 10),
(13, 'Ibufen', 100),
(14, 'Smecta', 10),
(15, 'Mucosolvan syrop', 150),
(16, 'BioGaia krople', 20),
(17, 'Emolium krem', 50),
(18, 'Hydrocortisonum maść', 15),
(19, 'Cetaphil krem', 60),
(20, 'Lamisil krem', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specjalizacje`
--

CREATE TABLE `specjalizacje` (
  `id_specjalizacji` int(11) NOT NULL,
  `nazwa_specjalizacji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specjalizacje`
--

INSERT INTO `specjalizacje` (`id_specjalizacji`, `nazwa_specjalizacji`) VALUES
(1, 'Kardiologia'),
(2, 'Neurologia'),
(3, 'Chirurgia'),
(4, 'Dermatologia'),
(5, 'Pediatria');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wizyty`
--

CREATE TABLE `wizyty` (
  `id_wizyty` int(11) NOT NULL,
  `id_pacjenta` int(11) DEFAULT NULL,
  `id_lekarza` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `godznia` time NOT NULL,
  `id_recepty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lekarze`
--
ALTER TABLE `lekarze`
  ADD PRIMARY KEY (`id_lekarza`),
  ADD KEY `fk_specjalizacja` (`specjalizacja`);

--
-- Indeksy dla tabeli `pacjenci`
--
ALTER TABLE `pacjenci`
  ADD PRIMARY KEY (`id_pacjenta`),
  ADD UNIQUE KEY `pesel` (`pesel`);

--
-- Indeksy dla tabeli `recepta`
--
ALTER TABLE `recepta`
  ADD PRIMARY KEY (`id_recepty`);

--
-- Indeksy dla tabeli `specjalizacje`
--
ALTER TABLE `specjalizacje`
  ADD PRIMARY KEY (`id_specjalizacji`);

--
-- Indeksy dla tabeli `wizyty`
--
ALTER TABLE `wizyty`
  ADD PRIMARY KEY (`id_wizyty`),
  ADD KEY `fk_recepta` (`id_recepty`),
  ADD KEY `fk_lekarz` (`id_lekarza`),
  ADD KEY `fk_pacjent` (`id_pacjenta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lekarze`
--
ALTER TABLE `lekarze`
  MODIFY `id_lekarza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pacjenci`
--
ALTER TABLE `pacjenci`
  MODIFY `id_pacjenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `recepta`
--
ALTER TABLE `recepta`
  MODIFY `id_recepty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `specjalizacje`
--
ALTER TABLE `specjalizacje`
  MODIFY `id_specjalizacji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wizyty`
--
ALTER TABLE `wizyty`
  MODIFY `id_wizyty` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lekarze`
--
ALTER TABLE `lekarze`
  ADD CONSTRAINT `fk_specjalizacja` FOREIGN KEY (`specjalizacja`) REFERENCES `specjalizacje` (`id_specjalizacji`);

--
-- Constraints for table `wizyty`
--
ALTER TABLE `wizyty`
  ADD CONSTRAINT `fk_lekarz` FOREIGN KEY (`id_lekarza`) REFERENCES `lekarze` (`id_lekarza`),
  ADD CONSTRAINT `fk_pacjent` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjenci` (`id_pacjenta`),
  ADD CONSTRAINT `fk_recepta` FOREIGN KEY (`id_recepty`) REFERENCES `recepta` (`id_recepty`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
