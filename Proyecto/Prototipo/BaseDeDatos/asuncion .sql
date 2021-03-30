-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2020 at 09:01 PM
-- Server version: 8.0.22-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asuncion`
--

-- --------------------------------------------------------

--
-- Table structure for table `Donativos`
--

CREATE TABLE `Donativos` (
  `RazonSocial` varchar(50) NOT NULL,
  `RFC` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `NumeroEmpleado` int DEFAULT NULL,
  `idDonativos` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Donativos`
--

INSERT INTO `Donativos` (`RazonSocial`, `RFC`, `Direccion`, `Telefono`, `Correo`, `Descripcion`, `Fecha`, `NumeroEmpleado`, `idDonativos`) VALUES
('Eamia', 'CHKH4248175F2', '868 Onsgard Alley', '879-520-5433', 'fboat5@harvard.edu', 'Monitored next generation intranet', '05/08/2019', NULL, NULL),
('Skibox', 'CRSL4591484I8', '33231 Warrior Hill', '540-218-6642', 'gocrowleyf@smugmug.com', 'Persistent zero defect array', '10/07/2019', NULL, NULL),
('Edgewire', 'HUCB9625661R4', '53868 Fallview Lane', '561-619-2299', 'jcomo6@unblog.fr', 'Team-oriented executive matrix', '09/07/2017', NULL, NULL),
('Jetwire', 'JGTJ2366680M8', '04 Jenifer Lane', '806-376-7466', 'ckinahan7@squarespace.com', 'Reactive asymmetric software', '10/07/2019', NULL, NULL),
('BlogXS', 'JHCI5490889A4', '507 Anzinger Junction', '183-759-7277', 'thughsd@dot.gov', 'Virtual zero defect adapter', '14/05/2016', NULL, NULL),
('Avaveo', 'JQEG7727185Q0', '42 Delaware Trail', '304-504-4482', 'kcoenb@buzzfeed.com', 'Devolved client-server system engine', '12/11/2018', NULL, NULL),
('Aivee', 'NPQM1269239D0', '82 Marquette Hill', '554-943-9360', 'hhacksby9@pbs.org', 'Ergonomic next generation circuit', '07/04/2018', NULL, NULL),
('Topicblab', 'NVGJ1010585V8', '3 Hansons Pass', '763-159-5651', 'kbeetlestoneh@netscape.com', 'Total multi-tasking leverage', '30/06/2020', NULL, NULL),
('Blognation', 'PMYF3291080E5', '4023 Butterfield Court', '341-284-2049', 'nproudlock2@scribd.com', 'Triple-buffered fresh-thinking circuit', '22/05/2018', NULL, NULL),
('Plajo', 'RQGO8411778A2', '73 Hintze Drive', '708-393-4255', 'pcroutearj@fema.gov', 'User-centric transitional knowledge base', '06/03/2016', NULL, NULL),
('Devpulse', 'TLLP7197007L5', '19 Straubel Court', '248-337-1572', 'hberriee@w3.org', 'Team-oriented transitional synergy', '25/11/2015', NULL, NULL),
('Meedoo', 'UHEN4282816U7', '33 Packers Lane', '992-523-6003', 'mandrewi@nymag.com', 'Customizable bifurcated attitude', '10/02/2020', NULL, NULL),
('Yodoo', 'UHXC7670223O9', '7667 Thompson Pass', '517-841-1141', 'rpetow4@lulu.com', 'Reduced actuating matrix', '10/03/2016', NULL, NULL),
('Jabberstorm', 'VASI3707418S0', '09406 Kinsman Pass', '599-821-4432', 'ksalla1@washingtonpost.com', 'Secured regional functionalities', '22/02/2018', NULL, NULL),
('Browsetype', 'WNBR6733007Q2', '689 Toban Point', '527-489-8143', 'ebeea@irs.gov', 'Pre-emptive actuating groupware', '18/01/2020', NULL, NULL),
('Skidoo', 'XBHU3060792U2', '60631 Grim Alley', '801-222-6297', 'jstorie0@webmd.com', 'Proactive motivating moratorium', '07/08/2020', NULL, NULL),
('Yodoo', 'YDUC4443606A4', '2963 Alpine Center', '828-887-6004', 'ecarillo3@xrea.com', 'Balanced encompassing archive', '29/03/2019', NULL, NULL),
('Tazz', 'YLKO2265012N6', '41133 3rd Terrace', '605-251-6616', 'dbrazer8@nifty.com', 'Re-engineered foreground internet solution', '27/01/2020', NULL, NULL),
('Thoughtsphere', 'YQYB1691908V2', '08 Browning Parkway', '630-964-7522', 'rrandlesong@geocities.com', 'Cross-platform cohesive analyzer', '27/01/2019', NULL, NULL),
('Yakidoo', 'YUAH8493880F2', '090 Buell Hill', '106-597-6523', 'dbenettoloc@shop-pro.jp', 'Open-architected fresh-thinking hierarchy', '01/05/2019', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Empleados`
--

CREATE TABLE `Empleados` (
  `NumeroEmpleado` varchar(50) NOT NULL,
  `NombreEmpleado` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Especialidad` varchar(50) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Empleados`
--

INSERT INTO `Empleados` (`NumeroEmpleado`, `NombreEmpleado`, `Telefono`, `Domicilio`, `Especialidad`, `Correo`, `usuario`, `password`) VALUES
('1', 'Nanine Sigert', '632-800-7072', '72 Hoepker Trail', 'Director of Sales', 'nsigert0@soundcloud.com', NULL, '12345'),
('10', 'Annabelle Cantwell', '260-495-1061', '29258 Sunbrook Crossing', 'Civil Engineer', 'acantwell9@stanford.edu', NULL, NULL),
('11', 'Bernete Smithyman', '721-561-6833', '34573 Warner Hill', 'Desktop Support Technician', 'bsmithymana@bloglovin.com', NULL, NULL),
('12', 'Abbie Walicki', '352-972-2593', '063 Moland Point', 'Analyst Programmer', 'awalickib@elegantthemes.com', NULL, NULL),
('13', 'Sibley Guidera', '321-417-9201', '22531 Kenwood Junction', 'Civil Engineer', 'sguiderac@senate.gov', NULL, NULL),
('14', 'Wilmer Rushbury', '835-601-4189', '50506 Canary Pass', 'Programmer Analyst II', 'wrushburyd@businessweek.com', NULL, NULL),
('15', 'Anabella Agates', '478-106-5927', '61385 Scoville Street', 'Professor', 'aagatese@ycombinator.com', NULL, NULL),
('16', 'Gage Ferraro', '523-325-2344', '13284 Namekagon Drive', 'Account Executive', 'gferrarof@dropbox.com', NULL, NULL),
('17', 'Kristy Matussow', '514-279-4888', '174 Meadow Ridge Lane', 'Food Chemist', 'kmatussowg@hp.com', NULL, NULL),
('18', 'Dionne Bowgen', '253-711-5609', '3473 Wayridge Road', 'Tax Accountant', 'dbowgenh@mapquest.com', NULL, NULL),
('19', 'Markus Emslie', '216-489-3211', '38963 Ruskin Way', 'Information Systems Manager', 'memsliei@bing.com', NULL, NULL),
('2', 'William Ingolotti', '127-339-4395', '568 Maple Pass', 'Chief Design Engineer', 'wingolotti1@foxnews.com', NULL, '54321'),
('20', 'Ado Canning', '421-348-2616', '53 Magdeline Center', 'Food Chemist', 'acanningj@jalbum.net', NULL, NULL),
('3', 'Padget Goter', '304-249-2939', '84881 Dayton Lane', 'Marketing Assistant', 'pgoter2@gizmodo.com', NULL, NULL),
('4', 'Ellette Chastel', '658-587-4284', '7 Barby Court', 'Legal Assistant', 'echastel3@techcrunch.com', NULL, NULL),
('5', 'Bambie Kirrens', '310-792-5664', '34935 Anhalt Terrace', 'Nuclear Power Engineer', 'bkirrens4@abc.net.au', NULL, NULL),
('6', 'Waylon Egleton', '724-865-0800', '97968 Schurz Hill', 'Geological Engineer', 'wegleton5@weebly.com', NULL, NULL),
('7', 'Brandon Beceril', '985-167-2281', '9 Annamark Court', 'Chemical Engineer', 'bbeceril6@t.co', NULL, NULL),
('8', 'Caroljean Sends', '250-637-0956', '64743 Hudson Street', 'Environmental Tech', 'csends7@etsy.com', NULL, NULL),
('9', 'Hilda Moxstead', '823-849-8024', '763 Anhalt Lane', 'Systems Administrator II', 'hmoxstead8@netscape.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entidad`
--

CREATE TABLE `entidad` (
  `id` int NOT NULL,
  `estado` varchar(200) NOT NULL,
  `abreviacion` varchar(10) NOT NULL,
  `pais` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `HistorialClinico`
--

CREATE TABLE `HistorialClinico` (
  `Tipo` varchar(50) NOT NULL,
  `NumeroEmpleado` varchar(50) NOT NULL,
  `NombreEmpleado` varchar(50) NOT NULL,
  `NumeroPaciente` varchar(50) NOT NULL,
  `NombrePaciente` varchar(50) NOT NULL,
  `ApellidoPaterno` varchar(50) NOT NULL,
  `ApellidoMaterno` varchar(50) NOT NULL,
  `Edad` varchar(50) NOT NULL,
  `Ingreso` varchar(50) NOT NULL,
  `Diagnostico` varchar(200) NOT NULL,
  `Tratamiento` varchar(200) NOT NULL,
  `Fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipio`
--

CREATE TABLE `municipio` (
  `idEstado` int NOT NULL,
  `idMunicipio` int NOT NULL,
  `nombreMunicipio` varchar(400) NOT NULL,
  `idCab` int NOT NULL,
  `nombreCab` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pacientes`
--

CREATE TABLE `Pacientes` (
  `NumeroPaciente` varchar(50) NOT NULL,
  `NombrePaciente` varchar(50) NOT NULL,
  `ApellidoPaterno` varchar(50) NOT NULL,
  `ApellidoMaterno` varchar(50) NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Telefono` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `FechaNacimiento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Diagnostico` varchar(200) NOT NULL,
  `Lesion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Ingreso` varchar(50) NOT NULL,
  `Reingreso` varchar(50) DEFAULT NULL,
  `Egreso` varchar(50) DEFAULT NULL,
  `Dependencia` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Municipio` int DEFAULT NULL,
  `Estado` int DEFAULT NULL,
  `Imagen` varchar(200) DEFAULT NULL,
  `Curp` varchar(200) DEFAULT NULL,
  `ActaNacimiento` varchar(200) DEFAULT NULL,
  `ComprobanteDomicilio` varchar(200) DEFAULT NULL,
  `Total` int DEFAULT NULL,
  `Faltas` int DEFAULT NULL,
  `Justificacion` varchar(200) DEFAULT NULL,
  `RecomendacionMedica` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Pacientes`
--

INSERT INTO `Pacientes` (`NumeroPaciente`, `NombrePaciente`, `ApellidoPaterno`, `ApellidoMaterno`, `Domicilio`, `Telefono`, `FechaNacimiento`, `Genero`, `Diagnostico`, `Lesion`, `Ingreso`, `Reingreso`, `Egreso`, `Dependencia`, `Correo`, `Municipio`, `Estado`, `Imagen`, `Curp`, `ActaNacimiento`, `ComprobanteDomicilio`, `Total`, `Faltas`, `Justificacion`, `RecomendacionMedica`) VALUES
('1', '1', 'Sundin', 'Seeks', '7873 Arkansas Trail', '509-634-1184', '04/12/2019', 'F', 'Greenstick fracture of shaft of radius, right arm', 'Greenstick fracture of shaft of radius, right arm', '1/14/2020', NULL, NULL, NULL, 'mseeks0@reference.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10', '10', 'Le Barr', 'Benduhn', '3944 Dawn Terrace', '519-943-7444', '27/01/2020', 'M', 'Nondisplaced transverse fracture of shaft of left radius', 'Nondisplaced transverse fracture of shaft of left radius', '12/7/2019', NULL, NULL, NULL, 'rbenduhn9@ovh.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('11', '11', 'Burril', 'Laise', '9847 Hoard Way', '147-224-7796', '25/05/2020', 'M', 'Nondisp fx of med condyle of l tibia, 7thM', 'Nondisplaced fracture of medial condyle of left tibia, subsequent encounter for open fracture type I or II with nonunion', '1/19/2020', NULL, NULL, NULL, 'claisea@reddit.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('12', '12', 'Kinghorn', 'Scullion', '8259 Killdeer Plaza', '149-429-8605', '18/07/2020', 'F', 'War op involving unsp effect of nuclear weapon, milt, subs', 'War operations involving unspecified effect of nuclear weapon, military personnel, subsequent encounter', '11/6/2019', NULL, NULL, NULL, 'nscullionb@home.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13', '13', 'Tesmond', 'Petschel', '4139 Ronald Regan Center', '697-704-3901', '09/09/2020', 'M', 'Osteopathy in diseases classified elsewhere, right shoulder', 'Osteopathy in diseases classified elsewhere, right shoulder', '7/12/2020', NULL, NULL, NULL, 'ppetschelc@upenn.edu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('14', '14', 'Mattiello', 'Bruster', '96239 Nobel Junction', '315-734-7078', '12/09/2020', 'F', 'Path fx in neopltc dis, oth site, subs for fx w delay heal', 'Pathological fracture in neoplastic disease, other specified site, subsequent encounter for fracture with delayed healing', '9/20/2020', NULL, NULL, NULL, 'fbrusterd@statcounter.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('15', '15', 'Hansard', 'Veness', '1 Mifflin Center', '593-117-4627', '21/11/2019', 'F', 'Benign lipomatous neoplasm of skin, subcu of right arm', 'Benign lipomatous neoplasm of skin and subcutaneous tissue of right arm', '9/26/2020', NULL, NULL, NULL, 'cvenesse@phpbb.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16', '16', 'Snaddin', 'Millmoe', '1 Monument Drive', '410-603-8888', '07/05/2020', 'M', 'Driver of pk-up/van inj in clsn w hv veh in traf, sequela', 'Driver of pick-up truck or van injured in collision with heavy transport vehicle or bus in traffic accident, sequela', '2/25/2020', NULL, NULL, NULL, 'bmillmoef@ft.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('17', '17', 'Behnen', 'Netherwood', '3372 Village Green Place', '622-115-2869', '14/01/2020', 'M', 'Other specified kernicterus', 'Other specified kernicterus', '11/7/2019', NULL, NULL, NULL, 'bnetherwoodg@cbsnews.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('18', '18', 'Kubanek', 'Kohrs', '59 Heath Plaza', '123-680-1294', '17/09/2020', 'M', 'Stenosis due to nervous system prosth dev/grft, subs', 'Stenosis due to nervous system prosthetic devices, implants and grafts, subsequent encounter', '9/18/2020', NULL, NULL, NULL, 'wkohrsh@google.com.hk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('19', '19', 'Skirven', 'Thomelin', '0 Gateway Plaza', '111-877-8620', '05/09/2020', 'F', 'Other superficial bite of eyelid and periocular area', 'Other superficial bite of eyelid and periocular area', '11/1/2019', NULL, NULL, NULL, 'tthomelini@g.co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2', '2', 'Densie', 'Luard', '70 New Castle Point', '426-751-9086', '17/06/2020', 'F', 'Athscl nonaut bio bypass of the extrm w rest pain, oth extrm', 'Atherosclerosis of nonautologous biological bypass graft(s) of the extremities with rest pain, other extremity', '6/27/2020', NULL, NULL, NULL, 'oluard1@rediff.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('20', '20', 'Doughill', 'Headings', '98379 Prairie Rose Street', '560-163-0878', '05/11/2019', 'M', 'Congenital pneumonia due to Pseudomonas', 'Congenital pneumonia due to Pseudomonas', '10/8/2020', NULL, NULL, NULL, 'yheadingsj@seesaa.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('21', '21', 'Bryant', 'Peery', '79734 Graceland Terrace', '442-884-7690', '15/02/2020', 'F', 'Postproc seroma of unsp and adnexa fol an opth procedure', 'Postprocedural seroma of unspecified eye and adnexa following an ophthalmic procedure', '11/21/2019', NULL, NULL, NULL, 'kpeeryk@flavors.me', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('22', '22', 'Martelet', 'Vondrach', '86020 Bluestem Circle', '729-216-8170', '17/10/2020', 'F', 'Small kidney, unspecified', 'Small kidney, unspecified', '12/13/2019', NULL, NULL, NULL, 'nvondrachl@berkeley.edu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('23', '23', 'Roisen', 'Rallin', '79204 Fairview Court', '696-602-6973', '22/04/2020', 'F', 'Sprain of unspecified ligament of unspecified ankle, sequela', 'Sprain of unspecified ligament of unspecified ankle, sequela', '9/13/2020', NULL, NULL, NULL, 'krallinm@vimeo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('24', '24', 'Rapa', 'Pankhurst.', '4053 Straubel Place', '762-160-5293', '07/07/2020', 'M', 'Massive pulmonary hemorrhage origin in the perinatal period', 'Massive pulmonary hemorrhage originating in the perinatal period', '3/18/2020', NULL, NULL, NULL, 'dpankhurstn@ask.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('25', '25', 'Polino', 'Gardener', '1 Hollow Ridge Way', '101-667-1461', '06/02/2020', 'M', 'Poisoning by pyrazolone derivatives, assault, subs encntr', 'Poisoning by pyrazolone derivatives, assault, subsequent encounter', '4/10/2020', NULL, NULL, NULL, 'bgardenero@a8.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('26', '26', 'Simonetti', 'Gunbie', '9092 Karstens Pass', '395-927-3408', '17/01/2020', 'F', 'Laceration w/o fb of right great toe w damage to nail, init', 'Laceration without foreign body of right great toe with damage to nail, initial encounter', '11/6/2019', NULL, NULL, NULL, 'agunbiep@aol.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('27', '27', 'Arnholz', 'Jealous', '090 Mallard Terrace', '539-284-9915', '04/09/2020', 'M', 'Blister (nonthermal), unspecified lesser toe(s)', 'Blister (nonthermal), unspecified lesser toe(s)', '8/17/2020', NULL, NULL, NULL, 'rjealousq@artisteer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('28', '28', 'Haddleton', 'Tutt', '9127 Sugar Terrace', '324-231-8206', '17/01/2020', 'M', 'Unsp inj extensor musc/fasc/tend finger at wrs/hnd lv, subs', 'Unspecified injury of extensor muscle, fascia and tendon of other finger at wrist and hand level, subsequent encounter', '3/21/2020', NULL, NULL, NULL, 'mtuttr@go.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('29', '29', 'Silly', 'Budd', '202 Di Loreto Drive', '483-105-6327', '01/12/2019', 'M', 'Adverse effect of other viral vaccines, initial encounter', 'Adverse effect of other viral vaccines, initial encounter', '5/27/2020', NULL, NULL, NULL, 'cbudds@digg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3', '3', 'Loughman', 'Pavese', '0097 Fordem Way', '175-548-4350', '25/09/2020', 'M', 'Nondisp fx of capitate bone, right wrist, init for clos fx', 'Nondisplaced fracture of capitate [os magnum] bone, right wrist, initial encounter for closed fracture', '7/28/2020', NULL, NULL, NULL, 'kpavese2@istockphoto.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('30', '30', 'Northcott', 'Gannan', '5 Dapin Park', '497-315-3138', '19/04/2020', 'M', 'Legal intervnt involving oth means, suspect injured, init', 'Legal intervention involving other specified means, suspect injured, initial encounter', '3/31/2020', NULL, NULL, NULL, 'rgannant@webeden.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('31', '31', 'Tredgold', 'Ambrosch', '422 Prairie Rose Trail', '383-493-9981', '19/05/2020', 'F', 'Nondisp fx of unsp tibial spin, 7thG', 'Nondisplaced fracture of unspecified tibial spine, subsequent encounter for closed fracture with delayed healing', '9/26/2020', NULL, NULL, NULL, 'iambroschu@reference.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('32', '32', 'Cliff', 'Kirwin', '7835 Mandrake Place', '857-283-0348', '03/05/2020', 'F', 'Benign neoplasm of tongue', 'Benign neoplasm of tongue', '2/14/2020', NULL, NULL, NULL, 'wkirwinv@plala.or.jp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('33', '33', 'Standrin', 'Sapson', '803 Hallows Place', '476-657-0699', '07/09/2020', 'F', 'Toxic effect of trichloroethylene, assault, subs encntr', 'Toxic effect of trichloroethylene, assault, subsequent encounter', '5/3/2020', NULL, NULL, NULL, 'jsapsonw@zdnet.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('34', '34', 'Dolman', 'Ronchi', '2 Hoepker Trail', '987-602-3618', '25/05/2020', 'F', 'Poisn by pertuss vaccine, inc combin w pertuss, acc, sqla', 'Poisoning by pertussis vaccine, including combinations with a pertussis component, accidental (unintentional), sequela', '5/28/2020', NULL, NULL, NULL, 'mronchix@com.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('35', '35', 'Rhyme', 'Eltune', '75 Boyd Terrace', '724-793-6209', '04/05/2020', 'M', 'Contact w oth hot objects, undetermined intent, init encntr', 'Contact with other hot objects, undetermined intent, initial encounter', '12/7/2019', NULL, NULL, NULL, 'aeltuney@list-manage.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('36', '36', 'Melonby', 'Cawdery', '730 Eagle Crest Alley', '575-749-7006', '27/03/2020', 'F', 'Echinococcus granulosus infection, multiple sites', 'Echinococcus granulosus infection, multiple sites', '10/23/2020', NULL, NULL, NULL, 'bcawderyz@wikimedia.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('37', '37', 'Robben', 'Whapham', '8 Dawn Lane', '588-717-5750', '15/12/2019', 'F', 'Nondisp commnt fx left patella, init for opn fx type 3A/B/C', 'Nondisplaced comminuted fracture of left patella, initial encounter for open fracture type IIIA, IIIB, or IIIC', '2/29/2020', NULL, NULL, NULL, 'jwhapham10@google.de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('38', '38', 'Lemin', 'Schreiner', '03960 Logan Crossing', '869-844-4569', '31/05/2020', 'F', 'Unsp fx shaft of unsp fibula, 7thH', 'Unspecified fracture of shaft of unspecified fibula, subsequent encounter for open fracture type I or II with delayed healing', '2/14/2020', NULL, NULL, NULL, 'lschreiner11@feedburner.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('39', '39', 'Wattins', 'Dennison', '68 Morrow Pass', '541-838-4919', '09/11/2019', 'M', 'Burn of first degree of lower back', 'Burn of first degree of lower back', '8/29/2020', NULL, NULL, NULL, 'cdennison12@epa.gov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('4', '4', 'Wiggans', 'Sneaker', '6410 Talmadge Court', '626-228-2376', '09/07/2020', 'F', 'Nondisp seg fx shaft of l tibia, init for opn fx type I/2', 'Nondisplaced segmental fracture of shaft of left tibia, initial encounter for open fracture type I or II', '11/13/2019', NULL, NULL, NULL, 'dsneaker3@gnu.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('40', '40', 'Woolfenden', 'Tiplady', '05221 Kensington Park', '538-634-6169', '05/08/2020', 'M', 'Toxic effect of strychnine and its salts, undetermined, init', 'Toxic effect of strychnine and its salts, undetermined, initial encounter', '3/7/2020', NULL, NULL, NULL, 'mtiplady13@examiner.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('41', '41', 'Grishunin', 'Kenderdine', '31 Loomis Plaza', '459-741-5835', '08/06/2020', 'F', 'Gonococcal prostatitis', 'Gonococcal prostatitis', '5/8/2020', NULL, NULL, NULL, 'okenderdine14@theguardian.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('42', '42', 'Densun', 'Whiteford', '5 Forest Dale Center', '966-130-2923', '18/09/2020', 'M', 'Open bite of shoulder', 'Open bite of shoulder', '9/2/2020', NULL, NULL, NULL, 'ewhiteford15@hubpages.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('43', '43', 'Aksell', 'Balderston', '807 Bellgrove Street', '557-184-2126', '22/12/2019', 'F', 'Abnormal serum enzyme level, unspecified', 'Abnormal serum enzyme level, unspecified', '4/25/2020', NULL, NULL, NULL, 'lbalderston16@furl.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('44', '44', 'Pate', 'Rippon', '5 Meadow Vale Terrace', '382-865-9538', '03/05/2020', 'F', 'Diffuse TBI w loss of consciousness of 1-5 hrs 59 min, subs', 'Diffuse traumatic brain injury with loss of consciousness of 1 hour to 5 hours 59 minutes, subsequent encounter', '1/8/2020', NULL, NULL, NULL, 'arippon17@nsw.gov.au', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('45', '45', 'Loudon', 'Lancastle', '73260 Stuart Circle', '799-444-8153', '04/02/2020', 'M', 'Infective myositis, unspecified left leg', 'Infective myositis, unspecified left leg', '4/4/2020', NULL, NULL, NULL, 'mlancastle18@tamu.edu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('46', '46', 'Illingworth', 'Mantripp', '75 Jay Drive', '767-194-5501', '14/11/2019', 'M', 'Chronic embolism and thrombosis of right subclavian vein', 'Chronic embolism and thrombosis of right subclavian vein', '4/9/2020', NULL, NULL, NULL, 'smantripp19@spotify.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('47', '47', 'Clemenza', 'Cordeiro', '7 Dahle Place', '215-192-7142', '25/01/2020', 'M', 'Toxic effect of thallium, intentional self-harm, sequela', 'Toxic effect of thallium, intentional self-harm, sequela', '2/16/2020', NULL, NULL, NULL, 'ncordeiro1a@berkeley.edu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('48', '48', 'Myrie', 'McCurley', '059 Bartillon Park', '774-588-9301', '24/08/2020', 'F', 'Morbid (severe) obesity due to excess calories', 'Morbid (severe) obesity due to excess calories', '7/25/2020', NULL, NULL, NULL, 'amccurley1b@ox.ac.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('49', '49', 'Kmietsch', 'Frandsen', '98 Springs Crossing', '573-905-1078', '10/05/2020', 'M', 'Mtrcy driver injured in collision w pedl cyc in traf, init', 'Motorcycle driver injured in collision with pedal cycle in traffic accident, initial encounter', '7/21/2020', NULL, NULL, NULL, 'mfrandsen1c@apache.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5', '5', 'Rozanski', 'Heinonen', '30140 Dennis Drive', '309-614-5068', '02/06/2020', 'F', 'Displ seg fx shaft of ulna, l arm, 7thC', 'Displaced segmental fracture of shaft of ulna, left arm, initial encounter for open fracture type IIIA, IIIB, or IIIC', '9/18/2020', NULL, NULL, NULL, 'sheinonen4@sfgate.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('50', '50', 'Corneljes', 'Aizikovich', '88 Autumn Leaf Pass', '309-128-3083', '05/08/2020', 'F', 'Primary blast injury of other part of colon, init encntr', 'Primary blast injury of other part of colon, initial encounter', '8/18/2020', NULL, NULL, NULL, 'saizikovich1d@jalbum.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6', '6', 'Lenney', 'Muckart', '2 Schlimgen Hill', '360-866-8502', '30/06/2020', 'F', 'Idiopathic corneal edema, left eye', 'Idiopathic corneal edema, left eye', '11/20/2019', NULL, NULL, NULL, 'kmuckart5@cdc.gov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7', '7', 'Clemmen', 'Challener', '0644 Straubel Avenue', '351-570-9042', '23/05/2020', 'M', 'Displ spiral fx shaft of rad, l arm, 7thN', 'Displaced spiral fracture of shaft of radius, left arm, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with nonunion', '4/25/2020', NULL, NULL, NULL, 'hchallener6@about.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('8', '8', 'Lanchberry', 'Brittian', '99 Comanche Circle', '198-957-3130', '12/09/2020', 'F', 'Pathological fracture, unspecified humerus, sequela', 'Pathological fracture, unspecified humerus, sequela', '8/2/2020', NULL, NULL, NULL, 'gbrittian7@xinhuanet.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('9', '9', 'Fawdrie', 'McGoldrick', '905 Fuller Parkway', '736-139-4618', '09/08/2020', 'F', 'Other secondary chronic gout, unspecified wrist', 'Other secondary chronic gout, unspecified wrist', '12/30/2019', NULL, NULL, NULL, 'cmcgoldrick8@archive.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privilegios`
--

CREATE TABLE `privilegios` (
  `Id_Privilegio` varchar(30) NOT NULL,
  `Accion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Id_Rol` varchar(30) NOT NULL,
  `Descripcion_Rol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_Empleados`
--

CREATE TABLE `roles_Empleados` (
  `Id_Rol` varchar(30) NOT NULL,
  `NumeroEmpleado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles_privilegios`
--

CREATE TABLE `roles_privilegios` (
  `Id_Privilegio` varchar(30) NOT NULL,
  `Id_Rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Donativos`
--
ALTER TABLE `Donativos`
  ADD PRIMARY KEY (`RFC`);

--
-- Indexes for table `Empleados`
--
ALTER TABLE `Empleados`
  ADD PRIMARY KEY (`NumeroEmpleado`);

--
-- Indexes for table `entidad`
--
ALTER TABLE `entidad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `HistorialClinico`
--
ALTER TABLE `HistorialClinico`
  ADD KEY `NumeroEmpleado` (`NumeroEmpleado`),
  ADD KEY `NumeroPaciente` (`NumeroPaciente`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idEstado`,`idMunicipio`);

--
-- Indexes for table `Pacientes`
--
ALTER TABLE `Pacientes`
  ADD PRIMARY KEY (`NumeroPaciente`),
  ADD KEY `Estado` (`Estado`);

--
-- Indexes for table `privilegios`
--
ALTER TABLE `privilegios`
  ADD PRIMARY KEY (`Id_Privilegio`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indexes for table `roles_Empleados`
--
ALTER TABLE `roles_Empleados`
  ADD KEY `Id_Rol` (`Id_Rol`),
  ADD KEY `NumeroEmpleado` (`NumeroEmpleado`);

--
-- Indexes for table `roles_privilegios`
--
ALTER TABLE `roles_privilegios`
  ADD KEY `Id_Privilegio` (`Id_Privilegio`),
  ADD KEY `Id_Rol` (`Id_Rol`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `HistorialClinico`
--
ALTER TABLE `HistorialClinico`
  ADD CONSTRAINT `HistorialClinico_ibfk_1` FOREIGN KEY (`NumeroEmpleado`) REFERENCES `Empleados` (`NumeroEmpleado`),
  ADD CONSTRAINT `HistorialClinico_ibfk_2` FOREIGN KEY (`NumeroPaciente`) REFERENCES `Pacientes` (`NumeroPaciente`);

--
-- Constraints for table `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`idEstado`) REFERENCES `entidad` (`id`);

--
-- Constraints for table `Pacientes`
--
ALTER TABLE `Pacientes`
  ADD CONSTRAINT `Pacientes_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `entidad` (`id`);

--
-- Constraints for table `roles_Empleados`
--
ALTER TABLE `roles_Empleados`
  ADD CONSTRAINT `roles_Empleados_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `roles` (`Id_Rol`),
  ADD CONSTRAINT `roles_Empleados_ibfk_2` FOREIGN KEY (`NumeroEmpleado`) REFERENCES `Empleados` (`NumeroEmpleado`);

--
-- Constraints for table `roles_privilegios`
--
ALTER TABLE `roles_privilegios`
  ADD CONSTRAINT `roles_privilegios_ibfk_1` FOREIGN KEY (`Id_Privilegio`) REFERENCES `privilegios` (`Id_Privilegio`),
  ADD CONSTRAINT `roles_privilegios_ibfk_2` FOREIGN KEY (`Id_Rol`) REFERENCES `roles` (`Id_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
