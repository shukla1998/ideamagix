-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 07:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideamagixproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultationsmaster`
--

CREATE TABLE `consultationsmaster` (
  `id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL,
  `consultationsillnesshistory` text NOT NULL,
  `consultationsrecentsurgery` text NOT NULL,
  `consultationsdiabetes` text NOT NULL,
  `consultationsallergies` text NOT NULL,
  `consultationsothers` text NOT NULL,
  `consultationstransactionid` varchar(50) NOT NULL,
  `consultationconsent` text NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `updateddate` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultationsmaster`
--

INSERT INTO `consultationsmaster` (`id`, `doctor_id`, `consultationsillnesshistory`, `consultationsrecentsurgery`, `consultationsdiabetes`, `consultationsallergies`, `consultationsothers`, `consultationstransactionid`, `consultationconsent`, `createddate`, `createdby`, `updateddate`, `updatedby`) VALUES
(8, '14', 'Allergies, also known as allergic diseases, occur when your immune system overreacts to a substance that&#039;s usually harmless to most people.', 'Allergies, also known as allergic diseases, occur when your immune system overreacts to a substance that&#039;s usually harmless to most people.', 'Diabetics', 'Allergies, also known as allergic diseases, occur when your immune system overreacts to a substance that&#039;s usually harmless to most people.', 'na', '9082231536@ybl', 'na', '2025-01-04 07:25:47', 'admin', '2025-01-04 07:25:47', 'admin'),
(9, '13', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'Non-Diabetics', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', '908223156@yel', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', '2025-01-04 07:27:30', 'admin', '2025-01-04 07:27:30', 'admin'),
(10, '12', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'Non-Diabetics', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', '8692821088@ybl', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', '2025-01-04 07:29:28', 'admin', '2025-01-04 07:29:28', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `doctorsmaster`
--

CREATE TABLE `doctorsmaster` (
  `id` int(11) NOT NULL,
  `doctorsprofilepicture` varchar(255) NOT NULL,
  `doctorsname` varchar(255) NOT NULL,
  `doctorsspecialty` varchar(255) NOT NULL,
  `doctorsemail` varchar(255) NOT NULL,
  `doctorsphone` varchar(11) NOT NULL,
  `doctorsexperience` decimal(3,1) NOT NULL,
  `doctorspassword` varchar(255) NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `updateddate` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorsmaster`
--

INSERT INTO `doctorsmaster` (`id`, `doctorsprofilepicture`, `doctorsname`, `doctorsspecialty`, `doctorsemail`, `doctorsphone`, `doctorsexperience`, `doctorspassword`, `createddate`, `createdby`, `updateddate`, `updatedby`) VALUES
(12, 'ROHAN YADAV_doctorsprofilepicture.PNG', 'ROHAN YADAV', 'Surgery', 'rohanyadav159@gmail.com', '8692821088', 12.0, '11111', '2025-01-04 07:03:07', 'admin', '2025-01-04 07:03:07', 'admin'),
(13, 'RAMU SINGH_doctorsprofilepicture.PNG', 'RAMU SINGH', 'Pediatrics', 'ramusingh123@gmail.com', '9082231536', 26.0, '11221', '2025-01-04 07:05:43', 'admin', '2025-01-04 07:05:43', 'admin'),
(14, 'Ritesh singh_doctorsprofilepicture.PNG', 'Ritesh singh', 'Anesthesiology', 'shuklaritesh551@gmail.com', '8698584589', 14.0, '14785', '2025-01-04 07:06:38', 'admin', '2025-01-04 07:06:38', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `patientsmaster`
--

CREATE TABLE `patientsmaster` (
  `id` int(11) NOT NULL,
  `doctor_id` varchar(50) NOT NULL,
  `patientsprofilepicture` varchar(255) NOT NULL,
  `patientsname` varchar(255) NOT NULL,
  `patientsage` int(11) NOT NULL,
  `patientsemail` varchar(255) NOT NULL,
  `patientsphonenumber` varchar(12) NOT NULL,
  `patientssurgeryhistory` text NOT NULL,
  `patientsillnesshistory` text NOT NULL,
  `patientspassword` varchar(255) NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `updateddate` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientsmaster`
--

INSERT INTO `patientsmaster` (`id`, `doctor_id`, `patientsprofilepicture`, `patientsname`, `patientsage`, `patientsemail`, `patientsphonenumber`, `patientssurgeryhistory`, `patientsillnesshistory`, `patientspassword`, `createddate`, `createdby`, `updateddate`, `updatedby`) VALUES
(9, '12', 'RAMA TIWARIpatientsprofilepicture.PNG', 'RAMA TIWARI', 29, 'test@gmail.com', '8692822099', 'The earliest evidence of a surgical procedure is trephining, or cutting a hole in the skull, which dates back to 6500 B.C. It was used to treat mental illness, migraines, epileptic seizures, and as emergency surgery for head wounds.', 'A detailed account of the patient&#039;s current health concerns, including the onset of symptoms, their chronology, and any relevant objective data.', '1111', '2025-01-04 07:10:06', 'admin', '2025-01-04 07:10:06', 'admin'),
(10, '13', 'RINA YADAVpatientsprofilepicture.PNG', 'RINA YADAV', 44, 'rinayadav@gmail.com', '9082231536', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', ': Information about the health of the patient&#039;s close family members, including their current and past illnesses, and the cause of death of any close relatives.', '2222', '2025-01-04 07:11:22', 'admin', '2025-01-04 07:11:22', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptionsmaster`
--

CREATE TABLE `prescriptionsmaster` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `prescriptionscare` text NOT NULL,
  `prescriptionsmedicines` text NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` varchar(50) NOT NULL,
  `updateddate` datetime NOT NULL,
  `updatedby` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescriptionsmaster`
--

INSERT INTO `prescriptionsmaster` (`id`, `patient_id`, `prescriptionscare`, `prescriptionsmedicines`, `createddate`, `createdby`, `updateddate`, `updatedby`) VALUES
(4, 9, 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', 'In Egypt, surgeons learned about anatomy by studying mummified bodies, which improved their ability to diagnose and treat living patients.', '2025-01-04 07:45:23', 'admin', '2025-01-04 07:45:23', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultationsmaster`
--
ALTER TABLE `consultationsmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorsmaster`
--
ALTER TABLE `doctorsmaster`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctorsemail` (`doctorsemail`),
  ADD UNIQUE KEY `doctorsphonenumber` (`doctorsphone`);

--
-- Indexes for table `patientsmaster`
--
ALTER TABLE `patientsmaster`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patientsemail` (`patientsemail`),
  ADD UNIQUE KEY `patientsphonenumber` (`patientsphonenumber`);

--
-- Indexes for table `prescriptionsmaster`
--
ALTER TABLE `prescriptionsmaster`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultationsmaster`
--
ALTER TABLE `consultationsmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctorsmaster`
--
ALTER TABLE `doctorsmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patientsmaster`
--
ALTER TABLE `patientsmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prescriptionsmaster`
--
ALTER TABLE `prescriptionsmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
