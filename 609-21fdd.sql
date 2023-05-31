-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2023 at 04:51 PM
-- Server version: 5.7.39
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `609-21fdd`
--

-- --------------------------------------------------------

--
-- Table structure for table `subj`
--

CREATE TABLE `subj` (
  `id` int(11) NOT NULL COMMENT 'id предмета',
  `name` varchar(255) NOT NULL COMMENT 'Название предмета'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subj`
--

INSERT INTO `subj` (`id`, `name`) VALUES
(1, 'Математика'),
(2, 'Русский язык'),
(3, 'Информатика'),
(4, 'История'),
(5, 'Обществознание'),
(6, 'Английский язык');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'id репетитора',
  `name` varchar(255) NOT NULL COMMENT 'ФИО репетитора',
  `email` varchar(319) NOT NULL COMMENT 'Почта репетитора',
  `id_pred` int(11) NOT NULL COMMENT 'id Предмета',
  `price` smallint(5) UNSIGNED NOT NULL COMMENT 'Цена за 1 час занятия'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `id_pred`, `price`) VALUES
(1, 'Иван Васильевич', 'IvanVasilevich@gmail.com', 1, 1000),
(2, 'Екатерина Ивановна', 'ekativanovna@gmail.com', 6, 900),
(3, 'Андрей Борисович', 'borisovich@gmail.com', 5, 2500),
(4, 'Егор Александрович', 'alexandr@gmail.com', 1, 1200),
(5, 'Никита Александрович', 'nikitaalex@gmail.com', 1, 3500),
(6, 'Геннадий Валентинович', 'gennadiyvalen@gmail.com', 1, 3000),
(7, 'Анна Валерьевна', 'annavaler@gmail.com', 1, 1500),
(8, 'Елена Владимировна', 'elenavladinirovna@gmail.com', 6, 300),
(9, 'Виктор Викторович', 'viktorviktorovich@gmail.com', 6, 400),
(10, 'Татьяна Юрьевна', 'tatyanayr@gmail.com', 6, 800),
(11, 'Софья Игоревна', 'sophiaigor@gmail.com', 6, 500),
(12, 'Ирина Дмитриевна', 'irinadmitr@gmail.com', 2, 730),
(13, 'Иван Константинович', 'ivankonst@gmail.com', 6, 950),
(14, 'Надежда Владимировна', 'nadezhdavlad@gmail.com', 2, 1400),
(15, 'Людмила Васильевна', 'ludmilavas@gmail.com', 2, 1300),
(16, 'Ирина Николаевна', 'irinamikola@gmail.com', 2, 1000),
(17, 'Евгения Михайловна', 'evgenijamih@gmail.com', 2, 600),
(18, 'Светлана Владимировна', 'svetlanav@gmail.com', 5, 2500),
(19, 'Дарья Вадимовна', 'dariavad@gmail.com', 5, 500),
(20, 'Илона Левоновна', 'ilonalev@gmail.com', 5, 1100),
(21, 'Ксения Александровна', 'kseniaalex@gmail.com', 5, 1500),
(22, 'Ольга Александровна', 'olgaalex@gmail.com', 3, 1000),
(23, 'Любовь Сергеевна', 'lubovserg@gmail.com', 3, 1300),
(24, 'Зоя Александровна', 'zoyaalex@gmail.com', 3, 1900),
(25, 'Шамиль Равилевич', 'shamilrav@gmail.com', 3, 1500),
(26, 'Юрий Сергеевич', 'yuriyserg@gmail.com', 3, 2000),
(27, 'Роман Камилевич', 'romankam@gmail.com', 4, 600),
(28, 'Евгений Максимович', 'evgeniymaks@gmail.com', 4, 1000),
(29, 'Юлия Александровна', 'yuliyaalex@gmail.com', 4, 500),
(30, 'Кристина Артуровна', 'kristinaart@gmail.com', 4, 1000),
(31, 'Татьяна Леонидовна', 'tatyanaleon@gmail.com', 4, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id ученика',
  `name` varchar(255) NOT NULL COMMENT 'ФИО ученика',
  `email` varchar(319) NOT NULL COMMENT 'Почта ученика'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(1, 'Иванов Иван Иванович', 'IvanovIvan@gmail.com'),
(2, 'Санин Вацлав Эдуардович', 'VatslavSanin669@gmail.com'),
(3, 'Исаев Виталий Семенович', 'VitaliyIsaev475@gmail.com'),
(4, 'Демьянова Нинель Платоновна', 'NinelDemyanova591@gmail.com'),
(5, 'Безруков Владислав Артемович', 'VladislavBezrukov43@gmail.com'),
(6, 'Лебедев Нифонт Артемович', 'NifontLebedev241@gmail.com'),
(7, 'Высоцкий Капитон Сергеевич', 'KapitonVysotskiy610@gmail.com'),
(8, 'Амбарцумян Лилия Михайловна', 'LiliyaAmbartsumyan175@gmail.com'),
(9, 'Баженова Наталия Богдановна', 'NataliyaBazhenova192@gmail.com'),
(10, 'Кротова Лидия Сергеевна', 'LidiyaKrotova689@gmail.com'),
(11, 'Пименов Климент Юрьевич', 'KlimentPimenov728@gmail.com'),
(12, 'Попова Фатина Степановна', 'FatinaPopova200@gmail.com'),
(13, 'Ржевская Оксана Ильинична', 'OksanaRzhevskaya202@gmail.com'),
(14, 'Кудрявцев Самуил Ильич', 'SamuilKudryavtsev989@gmail.com'),
(15, 'Стручкова Саломея Вячеславовна', 'SalomeyaStruchkova360@gmail.com'),
(16, 'Шорохова Неонила Матвеевна', 'NeonilaShorohova890@gmail.com'),
(17, 'Краснова Алевтина Васильевна', 'AlevtinaKrasnova660@gmail.com'),
(18, 'Дарьянов Павел Юрьевич', 'ProvDaryanov667@gmail.com'),
(19, 'Андрианов Лаврентий Петрович', 'LavrentiyAndrianov559@gmail.com'),
(20, 'Алиев Юлий Денисович', 'YuliyAliev735@gmail.com'),
(21, 'Владов Елизар Борисович', 'ElizarVladov964@gmail.com'),
(22, 'Федорова Аграфена Петровна', 'AgrafenaFedorova231@gmail.com'),
(23, 'Миллер Агата Дмитриевна', 'AgataMiller166@gmail.com'),
(24, 'Чайка Раиса Дмитриевна', 'RaisaChayka966@gmail.com'),
(25, 'Оленников Галактион Григорьевич', 'GalaktionOlennikov114@gmail.com'),
(26, 'Летов Игорь Фёдорович', 'EgorLetov@gmail.com'),
(27, 'Недашковская Елена Семеновна', 'ElenaNedashkovskaya294@gmail.com'),
(28, 'Баландина Альбина Викторовна', 'AlbinaBalandina347@gmail.com'),
(29, 'Тимофеев Август Юрьевич', 'AvgustTimofeev264@gmail.com'),
(30, 'Новицкая Пульхерия Валентиновна', 'PulheriyaNovitskaya50@gmail.com'),
(31, 'Васнецова Дарина Павловна', 'DarinaVasnetsova181@gmail.com'),
(32, 'Клинских Юрий Николаевич', 'YuraHoi@gmail.com'),
(33, 'Жирнов Игорь Михайлович', 'IgorRondo@gmail.com'),
(34, 'Борисенков Дмитрий Александрович', 'CherniyObelisk@gmail.com'),
(35, 'Войтова Милена Сергеевна', 'MilenaVoytova688@gmail.com'),
(36, 'Истомина Амина Вячеславовна', 'AminaIstomina615@gmail.com'),
(37, 'Соколова Эмилия Ярославовна', 'EmiliyaSokolova14@gmail.com'),
(38, 'Мамедов Елизар Борисович', 'ElizarMamedov868@gmail.com'),
(39, 'Журавлёв Аполлон Антонович', 'ApollonZhuravlev973@gmail.com'),
(40, 'Коста Конкордия Олеговна', 'KostaKonkordiya@gmail.com'),
(41, 'Высоцкая Елизавета Аркадьевна', 'ElizavetaVysotskaya416@gmail.com'),
(42, 'Подорожный Никита Михайлович', 'NikitaPodorozhnyy598@gmail.com'),
(43, 'Козлов Максим Евгеньевич', 'Wycc220@gmail.com'),
(44, 'Сидорова Ксения Платоновна', 'KseniyaSidorova648@gmail.com'),
(45, 'Максимова Владлена Даниловна', 'VladlenaMaksimova826@gmail.com'),
(46, 'Филиппов Януарий Сергеевич', 'YanuariyFilippov471@gmail.com'),
(47, 'Васнецова Таисия Степановна', 'TaisiyaVasnetsova33@gmail.com'),
(48, 'Радионова Кларисса Ефимовна', 'KlarissaRadionova617@gmail.com'),
(49, 'Киселёв Дмитрий Константинович', 'DmitryKiselev@gmail.com'),
(50, 'Руденко Игнатий Тимурович', 'IgnatiyRudenko739@gmail.com'),
(51, 'Конушин Евсей Константинович', 'EvseyKonushin578@gmail.com'),
(52, 'Андреев Назар Вячеславович', 'NazarAndreev900@gmail.com'),
(53, 'Булгакова Вероника Георгиевна', 'VeronikaBulgakova352@gmail.com'),
(54, 'Шин Алевтина Валерьевна', 'AlevtinaShin167@gmail.com'),
(55, 'Логинова Агриппина Кузьминична', 'AgrippinaLoginova@gmail.com'),
(56, 'Логинов Максим Валерьевич', 'PalPalych@gmail.com'),
(57, 'Попов Андрей Тимурович', 'AndronPopov929@gmail.com'),
(58, 'Маврина Альбина Филипповна', 'AlbinaMavrina949@gmail.com'),
(59, 'Мавроди Сергей Пантелеевич', 'SergayMavrody@gmail.com'),
(60, 'Градова Алиса Викторовна', 'AlisaGradova374@gmail.com'),
(61, 'Садовничая Вероника Олеговна', 'VeronikaSadovnichaya837@gmail.com'),
(62, 'Васнецов Иннокентий Эльдарович', 'InnokentiyVasnetsov27@gmail.com'),
(63, 'Тимошенко Антон Артемович', 'AntonTimoshenko615@gmail.com'),
(64, 'Сморчкова Виолетта Михайловна', 'ViolettaSmorchkova10@gmail.com'),
(65, 'Серебрянникова Кларисса Степановна', 'KlarissaSerebryannikova280@gmail.com'),
(66, 'Каменский Федот Святославович', 'FedotKamenskiy224@gmail.com'),
(67, 'Кудрявцева Серафима Петровна', 'SerafimaKudryavtseva970@gmail.com'),
(68, 'Холодков Порфирий Егорович', 'PorfiriyHolodkov769@gmail.com'),
(69, 'Дмитриев Доброслав Артемович', 'DobroslavDmitriev795@gmail.com'),
(70, 'Багиров Алексей Сергеевич', 'ProfessorBagirov@gmail.com'),
(71, 'Корнеплод Виктор Игоревич', 'ViktorKorneplod@gmail.com'),
(72, 'Кручинин Антон Алексеевич', 'AntonKruchinin508@gmail.com'),
(73, 'Ичёткина Инга Вячеславовна', 'IngaIchetkina538@gmail.com'),
(74, 'Лебедев Авраам Вениаминович', 'AvraamLebedev162@gmail.com'),
(75, 'Садовская Мирослава Закировна', 'MiroslavaSadovskaya530@gmail.com'),
(76, 'Ушакова Екатерина Ивановна', 'EkaterinaUshakova558@gmail.com'),
(77, 'Снежная Галина Робертовна', 'GalinaSnezhnaya651@gmail.com'),
(78, 'Виноградов Михаил Артемович', 'MihailVinogradov381@gmail.com'),
(79, 'Маркова Жанна Иосифовна', 'ZhannaMarkova136@gmail.com'),
(80, 'Павловская Александра Тимофеевна', 'AleksandraPavlovskaya761@gmail.com'),
(81, 'Снежная Владислава Валентиновна', 'VladislavaSnezhnaya737@gmail.com'),
(82, 'Тимошенко Роман Аркадьевич', 'RomanTimoshenko955@gmail.com'),
(83, 'Андронова Лиана Львовна', 'LianaAndronova314@gmail.com'),
(84, 'Беляев Арам Святославович', 'AramBelyaev62@gmail.com'),
(85, 'Баженов Мечислав Леонидович', 'MechislavBazhenov145@gmail.com'),
(86, 'Кутузов Артемий Леонидович', 'ArtemiyKutuzov364@gmail.com'),
(87, 'Ичёткин Максимильян Григорьевич', 'MaksimilyanIchetkin989@gmail.com'),
(88, 'Ульянова Таисия Геннадиевна', 'TaisiyaUlyanova233@gmail.com'),
(89, 'Дружинина Маргарита Степановна', 'MargaritaDruzhinina235@gmail.com'),
(90, 'Пименов Епифан Матвеевич', 'EpifanPimenov607@gmail.com'),
(91, 'Пензилов Павел Николаевич', 'PenzilovPavel@gmail.com'),
(92, 'Ткачук Виктор Викторович', 'TkachukViktor@gmail.com'),
(93, 'Сысолятин Гордей Филиппович', 'GordeySysolyatin294@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int(11) UNSIGNED NOT NULL COMMENT 'id заказа',
  `id_student` int(11) UNSIGNED NOT NULL COMMENT 'id ученика - заказчика',
  `id_teacher` int(11) UNSIGNED NOT NULL COMMENT 'id репетитора',
  `lesson_date` date DEFAULT NULL COMMENT 'Дата занятия, выбранная учеником',
  `hours` int(11) NOT NULL COMMENT 'Количество часов'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zakaz`
--

INSERT INTO `zakaz` (`id`, `id_student`, `id_teacher`, `lesson_date`, `hours`) VALUES
(1, 1, 26, '2023-06-08', 2),
(2, 59, 7, '2023-06-07', 2),
(3, 43, 24, '2023-06-05', 1),
(4, 75, 23, '2023-06-01', 3),
(5, 46, 4, '2023-06-03', 4),
(6, 71, 24, '2023-07-01', 3),
(7, 71, 14, '2023-07-02', 3),
(8, 71, 8, '2023-07-03', 3),
(9, 71, 30, '2023-07-04', 3),
(10, 71, 20, '2023-07-05', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subj`
--
ALTER TABLE `subj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pred` (`id_pred`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_teacher` (`id_teacher`),
  ADD KEY `id_student` (`id_student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subj`
--
ALTER TABLE `subj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id предмета', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id репетитора', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id ученика', AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id заказа', AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id_pred`) REFERENCES `subj` (`id`);

--
-- Constraints for table `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
