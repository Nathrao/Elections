CREATE DATABASE  IF NOT EXISTS `rising_beta_1` 
USE `rising_beta_1`;

--
-- Table structure for table `achievment`
--

DROP TABLE IF EXISTS `achievment`;
CREATE TABLE `achievment` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  `updateddate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `achievment`
--

LOCK TABLES `achievment` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `campaignid` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  `updateddate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `compaign_id_idx` (`campaignid`),
  CONSTRAINT `compaign_id` FOREIGN KEY (`campaignid`) REFERENCES `campaign` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `allenquiry`
--

DROP TABLE IF EXISTS `allenquiry`;
CREATE TABLE `allenquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `typeofquestion` varchar(45) DEFAULT NULL,
  `organization` varchar(45) DEFAULT NULL,
  `budget` varchar(45) DEFAULT NULL,
  `minister_id` int(11) DEFAULT NULL,
  `partyname` varchar(45) DEFAULT NULL,
  `corporation_type` varchar(45) DEFAULT NULL,
  `prabhag` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `formname` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allenquiry`
--

LOCK TABLES `allenquiry` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  `updateddate` int(11) DEFAULT NULL,
  `voteridpdf` varchar(45) DEFAULT NULL,
  `corporation` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `aworkimages`
--

DROP TABLE IF EXISTS `aworkimages`;
CREATE TABLE `aworkimages` (
  `id` int(11) NOT NULL,
  `work_id` int(11) DEFAULT NULL,
  `img_url` varchar(45) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aworkimages`
--

LOCK TABLES `aworkimages` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `publishdate` int(11) DEFAULT NULL,
  `specification` varchar(45) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_slug` varchar(45) DEFAULT NULL,
  `img_url` varchar(45) DEFAULT NULL,
  `seo_desc` varchar(45) DEFAULT NULL,
  `seo_keyword` varchar(45) DEFAULT NULL,
  `seo_other` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `popular` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `page_slug` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  CONSTRAINT `category_name` FOREIGN KEY (`id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `blog_id_idx` (`blog_id`),
  CONSTRAINT `blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `banner` varchar(45) DEFAULT NULL,
  `c_date` int(11) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time1` int(11) DEFAULT NULL,
  `map` varchar(45) DEFAULT NULL,
  `heading` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `contentimage` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `minister_id` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  `updateddate` int(11) DEFAULT NULL,
  `page_slug` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `seo_keyword` varchar(45) DEFAULT NULL,
  `seo_desk` varchar(45) DEFAULT NULL,
  `seo_other` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL,
  `page_slug` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `co_img`
--

DROP TABLE IF EXISTS `co_img`;
CREATE TABLE `co_img` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `alt` varchar(45) DEFAULT NULL,
  `created_date` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `co_img`
--

LOCK TABLES `co_img` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `commentofcomplaint`
--

DROP TABLE IF EXISTS `commentofcomplaint`;
CREATE TABLE `commentofcomplaint` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `createddate` int(11) DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `complaint_id_idx` (`complaint_id`),
  CONSTRAINT `complaint_id` FOREIGN KEY (`complaint_id`) REFERENCES `complaint` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentofcomplaint`
--

LOCK TABLES `commentofcomplaint` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` varchar(45) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  `updatedby` varchar(45) DEFAULT NULL,
  `corporation` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `area_id_idx` (`area_id`),
  CONSTRAINT `area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `complaintstatus`
--

DROP TABLE IF EXISTS `complaintstatus`;
CREATE TABLE `complaintstatus` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) DEFAULT NULL,
  `complaint_id` int(11) DEFAULT NULL,
  `createddate` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `complaintstatuscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaintstatus`
--

LOCK TABLES `complaintstatus` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `constituency`
--

DROP TABLE IF EXISTS `constituency`;
CREATE TABLE `constituency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `constituency`
--

LOCK TABLES `constituency` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `corporation`
--

DROP TABLE IF EXISTS `corporation`;
CREATE TABLE `corporation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id_idx` (`city`),
  CONSTRAINT `cityid` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `corporation`
--

LOCK TABLES `corporation` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `debate`
--

DROP TABLE IF EXISTS `debate`;
CREATE TABLE `debate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `forvotes` int(5) NOT NULL,
  `againstvote` int(5) NOT NULL,
  `status` int(3) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `debate`
--

LOCK TABLES `debate` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `debtcomments`
--

DROP TABLE IF EXISTS `debtcomments`;
CREATE TABLE `debtcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` text NOT NULL,
  `comment_type` varchar(100) NOT NULL,
  `debate_id` int(11) NOT NULL,
  `staus` int(3) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `debate_id_idx` (`debate_id`),
  CONSTRAINT `debate_id` FOREIGN KEY (`debate_id`) REFERENCES `debate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `debtcomments`
--

LOCK TABLES `debtcomments` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `dname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `electiondata`
--

DROP TABLE IF EXISTS `electiondata`;
CREATE TABLE `electiondata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL,
  `election` int(11) NOT NULL,
  `countofelection` int(11) NOT NULL,
  `bjp` int(11) NOT NULL,
  `ncp` int(11) NOT NULL,
  `cong` int(11) NOT NULL,
  `sena` int(11) NOT NULL,
  `mns` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `totalmember` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `corporation` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `electiontype_id_idx` (`election`),
  KEY `corporation_id_idx` (`corporation`),
  CONSTRAINT `corporation_id` FOREIGN KEY (`corporation`) REFERENCES `corporation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `electiontype_id` FOREIGN KEY (`election`) REFERENCES `electiontype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electiondata`
--

LOCK TABLES `electiondata` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `electiontype`
--

DROP TABLE IF EXISTS `electiontype`;
CREATE TABLE `electiontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electiontype`
--

LOCK TABLES `electiontype` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `company` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `code` int(6) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` bigint(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(3) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` text NOT NULL,
  `event_title` text NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `eventimg`
--

DROP TABLE IF EXISTS `eventimg`;
CREATE TABLE `eventimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `img` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `event_id_idx` (`event_id`),
  CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventimg`
--

LOCK TABLES `eventimg` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `floorplan`
--

DROP TABLE IF EXISTS `floorplan`;
CREATE TABLE `floorplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `project_id_idx` (`project_id`),
  CONSTRAINT `projectid` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `floorplan`
--

LOCK TABLES `floorplan` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minister_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `group_details`
--

DROP TABLE IF EXISTS `group_details`;
CREATE TABLE `group_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_details`
--

LOCK TABLES `group_details` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `growth`
--

DROP TABLE IF EXISTS `growth`;
CREATE TABLE `growth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `year` int(5) DEFAULT NULL,
  `info` text CHARACTER SET latin1,
  `img_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `serial` int(3) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `growth`
--

LOCK TABLES `growth` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `highlight`
--

DROP TABLE IF EXISTS `highlight`;
CREATE TABLE `highlight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` int(3) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `img` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `indexicon` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `indexname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `serial` int(3) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highlight`
--

LOCK TABLES `highlight` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(3) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `infographics`
--

DROP TABLE IF EXISTS `infographics`;
CREATE TABLE `infographics` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  `img` text NOT NULL,
  `alt` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mi2_idx` (`minister_id`),
  CONSTRAINT `minister_id` FOREIGN KEY (`minister_id`) REFERENCES `minister` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infographics`
--

LOCK TABLES `infographics` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `city_id1` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `voteridpdf` varchar(300) NOT NULL,
  `area_id` int(11) NOT NULL,
  `prbhag_name` varchar(255) NOT NULL,
  `corporation` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ct1_idx` (`city_id1`),
  KEY `ar1_idx` (`area_id`),
  KEY `co1_idx` (`corporation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `manifesto`
--

DROP TABLE IF EXISTS `manifesto`;
CREATE TABLE `manifesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minister_id` int(11) NOT NULL,
  `img` varchar(255) CHARACTER SET latin1 NOT NULL,
  `alt` varchar(255) CHARACTER SET latin1 NOT NULL,
  `priority` int(11) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `min1_idx` (`minister_id`),
  CONSTRAINT `minister_id1` FOREIGN KEY (`minister_id`) REFERENCES `minister` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manifesto`
--

LOCK TABLES `manifesto` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `alt` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `min2_idx` (`minister_id`),
  CONSTRAINT `minister_id2` FOREIGN KEY (`minister_id`) REFERENCES `minister` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `open_new_tab` tinyint(4) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `menu_type` varchar(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `serial` int(3) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `p1_idx` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(15) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_type`
--

LOCK TABLES `menu_type` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `minister`
--

DROP TABLE IF EXISTS `minister`;
CREATE TABLE `minister` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `flag` text NOT NULL,
  `ministerflagtag` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `ministerphototag` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `prabhag` text NOT NULL,
  `profile` text NOT NULL,
  `speech` text NOT NULL,
  `video` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebookcode` text NOT NULL,
  `twittercode` text NOT NULL,
  `City_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `googleplue` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `seo_desc` text,
  `seo_keyword` text,
  `seo_other` text,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `electiontypeid` int(11) NOT NULL,
  `yearofminister` year(4) NOT NULL,
  `homepageshow` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `zone` int(11) NOT NULL,
  `partyname` varchar(255) NOT NULL,
  `corporation` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `mobile1` varchar(255) NOT NULL,
  `mobile2` varchar(255) NOT NULL,
  `email1` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid1_idx` (`City_id`),
  KEY `el1_idx` (`electiontypeid`),
  KEY `sta1_idx` (`state`),
  KEY `ar2_idx` (`area`),
  KEY `loc1_idx` (`location`),
  KEY `z1_idx` (`zone`),
  KEY `corp1_idx` (`corporation`),
  CONSTRAINT `electiontypeid` FOREIGN KEY (`electiontypeid`) REFERENCES `electiontype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `minister`
--

LOCK TABLES `minister` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `mvideo`
--

DROP TABLE IF EXISTS `mvideo`;
CREATE TABLE `mvideo` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  `mvideo` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` smallint(2) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mins1_idx` (`minister_id`),
  CONSTRAINT `minister_id3` FOREIGN KEY (`minister_id`) REFERENCES `minister` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mvideo`
--

LOCK TABLES `mvideo` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `pdflink` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` int(3) NOT NULL,
  `serial` int(3) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE `newsletter` (
  `id` int(50) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `created_by` int(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(5) NOT NULL,
  `minister_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `minister_id4_idx` (`minister_id`),
  CONSTRAINT `minister_id4` FOREIGN KEY (`minister_id`) REFERENCES `minister` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_group`
--

DROP TABLE IF EXISTS `newsletter_group`;
CREATE TABLE `newsletter_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mins2_idx` (`minister_id`),
  CONSTRAINT `minister_id5` FOREIGN KEY (`minister_id`) REFERENCES `minister` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter_group`
--

LOCK TABLES `newsletter_group` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `newsletterdata`
--

DROP TABLE IF EXISTS `newsletterdata`;
CREATE TABLE `newsletterdata` (
  `id` int(11) NOT NULL,
  `version` varchar(45) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `draft` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `minister_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletterdata`
--

LOCK TABLES `newsletterdata` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `voteridpdf` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `description` text NOT NULL,
  `specification` text NOT NULL,
  `page_slug` text NOT NULL,
  `img_url` text NOT NULL,
  `icon_url` varchar(255) NOT NULL,
  `pagecol` varchar(45) NOT NULL,
  `seo_desc` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_other` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(45) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `yojana` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `corporation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_url` text NOT NULL,
  `alt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `img` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `project_id_idx` (`project_id`),
  CONSTRAINT `project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `yes` int(11) NOT NULL,
  `no` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poll`
--

LOCK TABLES `poll` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `jd` text,
  `position` int(11) DEFAULT NULL,
  `salery` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `city_id` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `project_name` text NOT NULL,
  `project_subtitle` text NOT NULL,
  `project_catagory` text NOT NULL,
  `priority` int(11) NOT NULL,
  `project_type` text NOT NULL,
  `project_logo` text NOT NULL,
  `banner_image` text NOT NULL,
  `project_caption` text NOT NULL,
  `unit` text NOT NULL,
  `type` text NOT NULL,
  `pheneno` text NOT NULL,
  `email` text NOT NULL,
  `brouchure` text NOT NULL,
  `upload_image` text NOT NULL,
  `overview_content` text NOT NULL,
  `about_content` text NOT NULL,
  `specification` text NOT NULL,
  `amenities` text NOT NULL,
  `layoutplan` text NOT NULL,
  `walkthrough` text NOT NULL,
  `location_map` text NOT NULL,
  `google_map` text NOT NULL,
  `page_slug` varchar(500) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_desc` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_other` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `dname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `sendnewsletter`
--

DROP TABLE IF EXISTS `sendnewsletter`;
CREATE TABLE `sendnewsletter` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `newsletter_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sendnewsletter`
--

LOCK TABLES `sendnewsletter` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `setreminder`
--

DROP TABLE IF EXISTS `setreminder`;
CREATE TABLE `setreminder` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `consistuency_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setreminder`
--

LOCK TABLES `setreminder` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `sideshow`
--

DROP TABLE IF EXISTS `sideshow`;
CREATE TABLE `sideshow` (
  `id` int(11) NOT NULL,
  `minister_id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `updateddate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sideshow`
--

LOCK TABLES `sideshow` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `project_id_UNIQUE` (`project_id`),
  CONSTRAINT `proj_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `slideshow`
--

LOCK TABLES `slideshow` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `minister_id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
UNLOCK TABLES;
