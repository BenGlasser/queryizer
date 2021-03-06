-- MySQL dump 10.13  Distrib 5.1.49, for Win64 (unknown)
--
-- Host: localhost    Database: te
-- ------------------------------------------------------
-- Server version	5.1.49-enterprise-commercial-pro

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aele`
--

DROP TABLE IF EXISTS `aele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aele` (
  `aele_eventTypeId` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  `aele_accessTypeId` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  `aele_applicationTypeId` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `aele_4_ASC` (`aele_eventTypeId`),
  KEY `aele_5_ASC` (`aele_accessTypeId`),
  KEY `aele_6_ASC` (`aele_applicationTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aele`
--

LOCK TABLES `aele` WRITE;
/*!40000 ALTER TABLE `aele` DISABLE KEYS */;
/*!40000 ALTER TABLE `aele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ah_database_change_log`
--

DROP TABLE IF EXISTS `ah_database_change_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ah_database_change_log` (
  `ID` varchar(63) COLLATE utf8_bin NOT NULL,
  `AUTHOR` varchar(63) COLLATE utf8_bin NOT NULL,
  `FILENAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_bin NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ah_database_change_log`
--

LOCK TABLES `ah_database_change_log` WRITE;
/*!40000 ALTER TABLE `ah_database_change_log` DISABLE KEYS */;
INSERT INTO `ah_database_change_log` VALUES ('1.0.0','tripwire','liquibase/changelog-ah-1.0.xml','2013-02-15 09:04:58',1,'EXECUTED','3:971a14bc7a6f19c707299fe528676817','Create Table','',NULL,'${project.version}'),('1.0.1','tripwire','liquibase/changelog-ah-1.0.xml','2013-02-15 09:04:58',2,'EXECUTED','3:b2fff2e43cad0f3a53087102c14de78c','Create Table, Create Index','',NULL,'${project.version}'),('1.0.2','tripwire','liquibase/changelog-ah-1.0.xml','2013-02-15 09:04:58',3,'EXECUTED','3:520db5074cd0e8db9fb9edacb95f5bdc','Create Table, Add Primary Key, Create Index','',NULL,'${project.version}'),('1.0.3','tripwire','liquibase/changelog-ah-1.0.xml','2013-02-15 09:04:59',4,'EXECUTED','3:81d7c49482062200bc9585dc4b94bcbb','Create Table, Add Primary Key, Create Index','',NULL,'${project.version}');
/*!40000 ALTER TABLE `ah_database_change_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ah_database_change_log_lock`
--

DROP TABLE IF EXISTS `ah_database_change_log_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ah_database_change_log_lock` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ah_database_change_log_lock`
--

LOCK TABLES `ah_database_change_log_lock` WRITE;
/*!40000 ALTER TABLE `ah_database_change_log_lock` DISABLE KEYS */;
INSERT INTO `ah_database_change_log_lock` VALUES (1,0,NULL,NULL);
/*!40000 ALTER TABLE `ah_database_change_log_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ah_node`
--

DROP TABLE IF EXISTS `ah_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ah_node` (
  `id` int(11) NOT NULL,
  `external_id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ah_node`
--

LOCK TABLES `ah_node` WRITE;
/*!40000 ALTER TABLE `ah_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `ah_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ah_node_error`
--

DROP TABLE IF EXISTS `ah_node_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ah_node_error` (
  `id` int(11) NOT NULL,
  `ah_node_id` int(11) NOT NULL,
  `category` varchar(32) CHARACTER SET utf8 NOT NULL,
  `message_date` bigint(20) NOT NULL,
  `message` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ah_node_error_node_id` (`ah_node_id`),
  CONSTRAINT `ah_node_error_to_node_fk` FOREIGN KEY (`ah_node_id`) REFERENCES `ah_node` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ah_node_error`
--

LOCK TABLES `ah_node_error` WRITE;
/*!40000 ALTER TABLE `ah_node_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `ah_node_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ah_node_ip_address`
--

DROP TABLE IF EXISTS `ah_node_ip_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ah_node_ip_address` (
  `ah_node_id` int(11) NOT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ah_node_id`,`ip_address`),
  KEY `idx_ah_node_ip_address_node_id` (`ah_node_id`),
  CONSTRAINT `ah_node_ips_to_node_fk` FOREIGN KEY (`ah_node_id`) REFERENCES `ah_node` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ah_node_ip_address`
--

LOCK TABLES `ah_node_ip_address` WRITE;
/*!40000 ALTER TABLE `ah_node_ip_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ah_node_ip_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ah_object_association`
--

DROP TABLE IF EXISTS `ah_object_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ah_object_association` (
  `node_error_id` int(11) NOT NULL,
  `object_association_id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`node_error_id`,`object_association_id`),
  KEY `idx_ah_object_association` (`node_error_id`),
  CONSTRAINT `ah_obj_assn_to_node_error_fk` FOREIGN KEY (`node_error_id`) REFERENCES `ah_node_error` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ah_object_association`
--

LOCK TABLES `ah_object_association` WRITE;
/*!40000 ALTER TABLE `ah_object_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `ah_object_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alcatel`
--

DROP TABLE IF EXISTS `alcatel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alcatel` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_usePASV` tinyint(1) NOT NULL DEFAULT '0',
  `f_ftpPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcatel`
--

LOCK TABLES `alcatel` WRITE;
/*!40000 ALTER TABLE `alcatel` DISABLE KEYS */;
/*!40000 ALTER TABLE `alcatel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alcatel_config`
--

DROP TABLE IF EXISTS `alcatel_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alcatel_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcatel_config`
--

LOCK TABLES `alcatel_config` WRITE;
/*!40000 ALTER TABLE `alcatel_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `alcatel_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alcatel_config_restore`
--

DROP TABLE IF EXISTS `alcatel_config_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alcatel_config_restore` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcatel_config_restore`
--

LOCK TABLES `alcatel_config_restore` WRITE;
/*!40000 ALTER TABLE `alcatel_config_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `alcatel_config_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alertreadtime`
--

DROP TABLE IF EXISTS `alertreadtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertreadtime` (
  `f_userID` bigint(20) NOT NULL,
  `f_generatorID` bigint(20) NOT NULL,
  `f_readTime` datetime NOT NULL,
  PRIMARY KEY (`f_userID`,`f_generatorID`),
  KEY `AlertReadTime_3_ASC` (`f_userID`,`f_generatorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertreadtime`
--

LOCK TABLES `alertreadtime` WRITE;
/*!40000 ALTER TABLE `alertreadtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `alertreadtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alteonwebos`
--

DROP TABLE IF EXISTS `alteonwebos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alteonwebos` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alteonwebos`
--

LOCK TABLES `alteonwebos` WRITE;
/*!40000 ALTER TABLE `alteonwebos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alteonwebos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alteonwebos_config`
--

DROP TABLE IF EXISTS `alteonwebos_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alteonwebos_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alteonwebos_config`
--

LOCK TABLES `alteonwebos_config` WRITE;
/*!40000 ALTER TABLE `alteonwebos_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `alteonwebos_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alteonwebos_restoreconfig`
--

DROP TABLE IF EXISTS `alteonwebos_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alteonwebos_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alteonwebos_restoreconfig`
--

LOCK TABLES `alteonwebos_restoreconfig` WRITE;
/*!40000 ALTER TABLE `alteonwebos_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `alteonwebos_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_asset`
--

DROP TABLE IF EXISTS `am_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_asset` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `te_node_type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `te_node_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `make` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `model` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `version` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `te_node_oid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `am_asset_te_node_id_uk` (`te_node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_asset`
--

LOCK TABLES `am_asset` WRITE;
/*!40000 ALTER TABLE `am_asset` DISABLE KEYS */;
INSERT INTO `am_asset` VALUES (2,'PDXBGlasserD.tripwire.com','windowsServer','urn:te:ac1f0246-0000-013c-ded0-5c2080010000:USR.49b5bfd0-f36a-487c-851f-ac44274c2388','Microsoft','Windows 7','6.1',-9223372036854774467);
/*!40000 ALTER TABLE `am_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_asset_ip`
--

DROP TABLE IF EXISTS `am_asset_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_asset_ip` (
  `asset_id` int(11) NOT NULL,
  `ip` varchar(39) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`asset_id`,`ip`),
  CONSTRAINT `am_asset_ip_to_asset_fk` FOREIGN KEY (`asset_id`) REFERENCES `am_asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_asset_ip`
--

LOCK TABLES `am_asset_ip` WRITE;
/*!40000 ALTER TABLE `am_asset_ip` DISABLE KEYS */;
INSERT INTO `am_asset_ip` VALUES (2,'127.0.0.1'),(2,'172.31.2.70');
/*!40000 ALTER TABLE `am_asset_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_asset_tag`
--

DROP TABLE IF EXISTS `am_asset_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_asset_tag` (
  `asset_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`asset_id`,`tag_id`),
  KEY `am_asset_tag_tag_id_idx` (`tag_id`),
  CONSTRAINT `am_asset_tag_to_asset_fk` FOREIGN KEY (`asset_id`) REFERENCES `am_asset` (`id`),
  CONSTRAINT `am_asset_tag_to_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `am_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_asset_tag`
--

LOCK TABLES `am_asset_tag` WRITE;
/*!40000 ALTER TABLE `am_asset_tag` DISABLE KEYS */;
INSERT INTO `am_asset_tag` VALUES (2,19),(2,34);
/*!40000 ALTER TABLE `am_asset_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_condition_hostname_contain`
--

DROP TABLE IF EXISTS `am_condition_hostname_contain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_condition_hostname_contain` (
  `profile_id` int(11) NOT NULL,
  `condition_order` int(11) NOT NULL,
  `operand` varchar(255) CHARACTER SET utf8 NOT NULL,
  `negated` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`condition_order`),
  CONSTRAINT `am_cond_hostname_profile_fk` FOREIGN KEY (`profile_id`) REFERENCES `am_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_condition_hostname_contain`
--

LOCK TABLES `am_condition_hostname_contain` WRITE;
/*!40000 ALTER TABLE `am_condition_hostname_contain` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_condition_hostname_contain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_condition_hostname_match`
--

DROP TABLE IF EXISTS `am_condition_hostname_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_condition_hostname_match` (
  `profile_id` int(11) NOT NULL,
  `condition_order` int(11) NOT NULL,
  `operand` varchar(255) CHARACTER SET utf8 NOT NULL,
  `negated` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`condition_order`),
  CONSTRAINT `am_cond_host_match_profile_fk` FOREIGN KEY (`profile_id`) REFERENCES `am_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_condition_hostname_match`
--

LOCK TABLES `am_condition_hostname_match` WRITE;
/*!40000 ALTER TABLE `am_condition_hostname_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_condition_hostname_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_condition_ip_range`
--

DROP TABLE IF EXISTS `am_condition_ip_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_condition_ip_range` (
  `profile_id` int(11) NOT NULL,
  `condition_order` int(11) NOT NULL,
  `low_ip` varchar(39) CHARACTER SET utf8 NOT NULL,
  `high_ip` varchar(39) CHARACTER SET utf8 NOT NULL,
  `negated` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`condition_order`),
  CONSTRAINT `am_cond_ip_range_to_profile_fk` FOREIGN KEY (`profile_id`) REFERENCES `am_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_condition_ip_range`
--

LOCK TABLES `am_condition_ip_range` WRITE;
/*!40000 ALTER TABLE `am_condition_ip_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_condition_ip_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_condition_tag_contains`
--

DROP TABLE IF EXISTS `am_condition_tag_contains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_condition_tag_contains` (
  `profile_id` int(11) NOT NULL,
  `condition_order` int(11) NOT NULL,
  `tag_set_id` int(11) NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  `negated` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`condition_order`),
  KEY `am_cond_tag_contns_to_set_fk` (`tag_set_id`),
  CONSTRAINT `am_cond_tag_contns_profile_fk` FOREIGN KEY (`profile_id`) REFERENCES `am_profile` (`id`),
  CONSTRAINT `am_cond_tag_contns_to_set_fk` FOREIGN KEY (`tag_set_id`) REFERENCES `am_tag_set` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_condition_tag_contains`
--

LOCK TABLES `am_condition_tag_contains` WRITE;
/*!40000 ALTER TABLE `am_condition_tag_contains` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_condition_tag_contains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_condition_tag_is`
--

DROP TABLE IF EXISTS `am_condition_tag_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_condition_tag_is` (
  `profile_id` int(11) NOT NULL,
  `condition_order` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `negated` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`condition_order`),
  KEY `am_cond_tag_is_to_tag_fk` (`tag_id`),
  CONSTRAINT `am_cond_tag_is_to_profile_fk` FOREIGN KEY (`profile_id`) REFERENCES `am_profile` (`id`),
  CONSTRAINT `am_cond_tag_is_to_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `am_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_condition_tag_is`
--

LOCK TABLES `am_condition_tag_is` WRITE;
/*!40000 ALTER TABLE `am_condition_tag_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_condition_tag_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_database_change_log`
--

DROP TABLE IF EXISTS `am_database_change_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_database_change_log` (
  `ID` varchar(63) COLLATE utf8_bin NOT NULL,
  `AUTHOR` varchar(63) COLLATE utf8_bin NOT NULL,
  `FILENAME` varchar(200) COLLATE utf8_bin NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) COLLATE utf8_bin NOT NULL,
  `MD5SUM` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LIQUIBASE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_database_change_log`
--

LOCK TABLES `am_database_change_log` WRITE;
/*!40000 ALTER TABLE `am_database_change_log` DISABLE KEYS */;
INSERT INTO `am_database_change_log` VALUES ('1.0.0','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',1,'EXECUTED','3:e9b54eaeb108371885ccfaf9f81b514b','Custom SQL','',NULL,'${project.version}'),('1.0.1','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',2,'EXECUTED','3:d1f5783d5e512a11d9f470a97ef67457','Custom SQL','',NULL,'${project.version}'),('1.0.10','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',11,'EXECUTED','3:e75b055f58c5c613626a6a20ec317f62','Custom SQL','',NULL,'${project.version}'),('1.0.11','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',12,'EXECUTED','3:9b9efc81ed78c1daa4210e155f187d73','Custom SQL','',NULL,'${project.version}'),('1.0.12','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',13,'EXECUTED','3:3676289cb101c207130522c3e5ba5231','Custom SQL','',NULL,'${project.version}'),('1.0.13','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',14,'EXECUTED','3:a562aff919ec0f7f8d0225d8a2a515ec','Custom SQL','',NULL,'${project.version}'),('1.0.14','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',15,'EXECUTED','3:96a8174ecf5c95b2ffdd178dae736262','Custom SQL','',NULL,'${project.version}'),('1.0.15','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',16,'EXECUTED','3:c944f33f690eeb559f9e8275d12489e4','Custom SQL','',NULL,'${project.version}'),('1.0.16','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',17,'EXECUTED','3:4fc8d941fad681962b53cd790855ea3a','Custom SQL','',NULL,'${project.version}'),('1.0.17','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',18,'EXECUTED','3:0a6919808c269d36034caccd841526f4','Custom SQL','',NULL,'${project.version}'),('1.0.18','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',19,'EXECUTED','3:062172f632c32b89aa8113fdf1997905','Custom SQL','',NULL,'${project.version}'),('1.0.19','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',20,'EXECUTED','3:527ac29ca10790f6462b13d09ed0721a','Custom SQL','',NULL,'${project.version}'),('1.0.2','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',3,'EXECUTED','3:8fd492a668dbd0dd03a3ae50e3a85821','Custom SQL','',NULL,'${project.version}'),('1.0.20','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',21,'EXECUTED','3:2ecef5dbb6dace6909e336d2a9efe3c4','Custom Change','Add best practices tag sets',NULL,'${project.version}'),('1.0.21','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',22,'EXECUTED','3:c205362bad11872ea9e6fa0492db076f','Custom Change','Add System tag sets',NULL,'${project.version}'),('1.0.22','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',23,'EXECUTED','3:d7a664fd8fb27dd3523e882d1d1991f1','Custom Change','Add System tags',NULL,'${project.version}'),('1.0.3','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',4,'EXECUTED','3:76e96e7f951e35034bd933c295dd00e6','Custom SQL','',NULL,'${project.version}'),('1.0.4','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',5,'EXECUTED','3:7b84c31bf2e878141793647a8cee15c7','Custom SQL','',NULL,'${project.version}'),('1.0.5','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',6,'EXECUTED','3:72ec1b1f08350eff04761714fb833188','Custom SQL','',NULL,'${project.version}'),('1.0.6','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',7,'EXECUTED','3:c2b146b107cd620d9d07c6c6d9e97319','Custom SQL','',NULL,'${project.version}'),('1.0.7','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',8,'EXECUTED','3:5d6839c5fd1fa52490a3fd8ee8ebf589','Custom SQL','',NULL,'${project.version}'),('1.0.8','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',9,'EXECUTED','3:5d39f839425f1193aac87246c02e0ec9','Custom SQL','',NULL,'${project.version}'),('1.0.9','tripwire','liquibase/changelog-1.0.xml','2013-02-15 09:04:58',10,'EXECUTED','3:a5d67ec17b89501475d25ad8589835b0','Custom SQL','',NULL,'${project.version}'),('1.1.0','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',24,'EXECUTED','3:81695287b38316c57c967ca149a32f87','Drop Table','Remove unused schema version table',NULL,'${project.version}'),('1.1.1','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',25,'EXECUTED','3:76f7a7bb37d186de0c1dd671b170e432','Custom SQL','Create \"hostname matches\" condition table',NULL,'${project.version}'),('1.1.2','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',26,'EXECUTED','3:0bae3d7b2aae4422c3adf735774aa95b','Rename Table, Rename Column','Rename am_condition_hostname table and keyword column',NULL,'${project.version}'),('1.1.2-mysql','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',27,'EXECUTED','3:056eedd3fdc755cb922175f3f2a828bd','Custom SQL','Set operand column back to NOT NULL (mysql only)',NULL,'${project.version}'),('1.1.3','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',28,'EXECUTED','3:0df0b9c81b8844b0947013eb44ef84b7','Custom Change','Migrate hostname matches conditions from combined table to matches table',NULL,'${project.version}'),('1.1.4','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',29,'EXECUTED','3:1a66a5f9e14def365783af3ea61ea3f6','Add Column','Add OID column to am_asset',NULL,'${project.version}'),('1.1.5','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',30,'EXECUTED','3:f7f8eb5754cb7c791aeba028e4d21e6e','Custom Change','Add health tag sets',NULL,'${project.version}'),('1.1.6','tripwire','liquibase/changelog-1.1.xml','2013-02-15 09:04:58',31,'EXECUTED','3:876a69277e15d2b9017899fdaf03ce6c','Custom Change','Add health tags',NULL,'${project.version}'),('1.2.0','tripwire','liquibase/changelog-1.2.xml','2013-02-25 08:15:17',32,'EXECUTED','3:ad3091e769e8149005aee46ba2257c9a','Custom Change','Add new TE 8.2.2 platforms',NULL,'${project.version}');
/*!40000 ALTER TABLE `am_database_change_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_database_change_log_lock`
--

DROP TABLE IF EXISTS `am_database_change_log_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_database_change_log_lock` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_database_change_log_lock`
--

LOCK TABLES `am_database_change_log_lock` WRITE;
/*!40000 ALTER TABLE `am_database_change_log_lock` DISABLE KEYS */;
INSERT INTO `am_database_change_log_lock` VALUES (1,0,NULL,NULL);
/*!40000 ALTER TABLE `am_database_change_log_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_profile`
--

DROP TABLE IF EXISTS `am_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_profile` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `operator` varchar(10) CHARACTER SET utf8 NOT NULL,
  `run_type` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_profile`
--

LOCK TABLES `am_profile` WRITE;
/*!40000 ALTER TABLE `am_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_profile_tag`
--

DROP TABLE IF EXISTS `am_profile_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_profile_tag` (
  `profile_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`tag_id`),
  KEY `am_profile_tag_tag_id_idx` (`tag_id`),
  CONSTRAINT `am_profile_tags_to_profile_fk` FOREIGN KEY (`profile_id`) REFERENCES `am_profile` (`id`),
  CONSTRAINT `am_profile_tags_to_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `am_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_profile_tag`
--

LOCK TABLES `am_profile_tag` WRITE;
/*!40000 ALTER TABLE `am_profile_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_profile_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_saved_filter`
--

DROP TABLE IF EXISTS `am_saved_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_saved_filter` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `search_terms` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_saved_filter`
--

LOCK TABLES `am_saved_filter` WRITE;
/*!40000 ALTER TABLE `am_saved_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_saved_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_saved_filter_tag`
--

DROP TABLE IF EXISTS `am_saved_filter_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_saved_filter_tag` (
  `saved_filter_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`saved_filter_id`,`tag_id`),
  KEY `am_saved_filtr_tag_tag_id_idx` (`tag_id`),
  CONSTRAINT `am_saved_filter_tag_to_tag_fk` FOREIGN KEY (`tag_id`) REFERENCES `am_tag` (`id`),
  CONSTRAINT `am_sfilter_tag_to_sfilter_fk` FOREIGN KEY (`saved_filter_id`) REFERENCES `am_saved_filter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_saved_filter_tag`
--

LOCK TABLES `am_saved_filter_tag` WRITE;
/*!40000 ALTER TABLE `am_saved_filter_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_saved_filter_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_saved_filter_tag_set`
--

DROP TABLE IF EXISTS `am_saved_filter_tag_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_saved_filter_tag_set` (
  `saved_filter_id` int(11) NOT NULL,
  `tag_set_id` int(11) NOT NULL,
  PRIMARY KEY (`saved_filter_id`,`tag_set_id`),
  KEY `am_sfiltr_tagset_tagset_id_idx` (`tag_set_id`),
  CONSTRAINT `am_saved_filter_tagset_fk` FOREIGN KEY (`saved_filter_id`) REFERENCES `am_saved_filter` (`id`),
  CONSTRAINT `am_sfilter_tagset_to_tagset_fk` FOREIGN KEY (`tag_set_id`) REFERENCES `am_tag_set` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_saved_filter_tag_set`
--

LOCK TABLES `am_saved_filter_tag_set` WRITE;
/*!40000 ALTER TABLE `am_saved_filter_tag_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_saved_filter_tag_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tag`
--

DROP TABLE IF EXISTS `am_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tag` (
  `id` int(11) NOT NULL DEFAULT '0',
  `tag_set_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tag_to_tag_set_fk` (`tag_set_id`),
  CONSTRAINT `am_tag_to_tag_set_fk` FOREIGN KEY (`tag_set_id`) REFERENCES `am_tag_set` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tag`
--

LOCK TABLES `am_tag` WRITE;
/*!40000 ALTER TABLE `am_tag` DISABLE KEYS */;
INSERT INTO `am_tag` VALUES (1,4,'Microsoft SQL Server 2012'),(2,4,'Microsoft SQL Server 2008 R2'),(3,4,'Microsoft SQL Server 2008'),(4,4,'Microsoft SQL Server 2005'),(5,4,'Microsoft SQL Server 2000'),(6,4,'IBM DB2/NT SQL09050'),(7,4,'IBM DB2/NT SQL08020'),(8,4,'Oracle 9i Enterprise Edition'),(9,4,'Oracle 10g Enterprise Edition'),(10,4,'Oracle 11g Enterprise Edition'),(11,5,'Sun Directory Server'),(12,5,'Microsoft Active Directory'),(13,7,'Oracle Solaris 11'),(14,7,'Sun Solaris 10'),(15,7,'Sun Solaris 9'),(16,7,'Sun Solaris 8'),(17,7,'Microsoft Windows Server 2008 R2'),(18,7,'Microsoft Windows Server 2008'),(19,7,'Microsoft Windows 7'),(20,7,'Microsoft Windows Vista'),(21,7,'Microsoft Windows 2003'),(22,7,'Microsoft Windows XP'),(23,7,'Microsoft Windows 2000'),(24,7,'HP-UX 11'),(25,7,'IBM AIX 5.2'),(26,7,'IBM AIX 5.3'),(27,7,'IBM AIX 6.1'),(28,7,'Red Hat Enterprise Linux Server 6'),(29,7,'Red Hat Enterprise Linux Server 5'),(30,7,'Red Hat Enterprise Linux Server 4'),(31,7,'SuSE Linux Enterprise Server 9'),(32,7,'SuSE Linux Enterprise Server 10'),(33,7,'SuSE Linux Enterprise Server 11'),(34,8,'Monitoring Enabled'),(35,8,'Monitoring Disabled'),(36,9,'VMware ESX 3.5'),(37,9,'VMware ESX 4.0'),(38,9,'VMware ESX 4.1'),(39,9,'VMware ESXi 4.0'),(40,9,'VMware ESXi 4.1'),(41,9,'VMware ESXi 5.0'),(42,9,'VMware dvSwitch 4.0'),(43,9,'VMware dvSwitch 4.1'),(44,9,'VMware dvSwitch 5.0'),(45,9,'VMware Template vmx-04'),(46,9,'VMware Template vmx-07'),(47,9,'VMware Template vmx-08'),(48,9,'VMware VM vmx-04'),(49,9,'VMware VM vmx-07'),(50,9,'VMware VM vmx-08'),(51,9,'VMware vSwitch 3.5'),(52,9,'VMware vSwitch 4.0'),(53,9,'VMware vSwitch 4.1'),(54,9,'VMware vSwitch 5.0'),(55,10,'Connection Errors'),(56,10,'Incompatible Agent Errors'),(57,10,'Out of Sync Errors'),(58,10,'Rule Run Errors'),(59,10,'Task Timeout Errors'),(60,10,'Uncategorized Errors'),(61,7,'Microsoft Windows Server 2012'),(62,7,'Microsoft Windows 8'),(63,7,'Apple Mac OS X 10.7'),(64,7,'Apple Mac OS X 10.8');
/*!40000 ALTER TABLE `am_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tag_set`
--

DROP TABLE IF EXISTS `am_tag_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tag_set` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tag_set`
--

LOCK TABLES `am_tag_set` WRITE;
/*!40000 ALTER TABLE `am_tag_set` DISABLE KEYS */;
INSERT INTO `am_tag_set` VALUES (1,'Location','USER'),(2,'Owner','USER'),(3,'Platform Family','USER'),(4,'Database Server','SYSTEM'),(5,'Directory Server','SYSTEM'),(6,'Network Device','SYSTEM'),(7,'Operating System','SYSTEM'),(8,'Status','SYSTEM'),(9,'Virtual Infrastructure','SYSTEM'),(10,'Health','OPERATIONAL');
/*!40000 ALTER TABLE `am_tag_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applytagresponse`
--

DROP TABLE IF EXISTS `applytagresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applytagresponse` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applytagresponse`
--

LOCK TABLES `applytagresponse` WRITE;
/*!40000 ALTER TABLE `applytagresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `applytagresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approvaltemplate`
--

DROP TABLE IF EXISTS `approvaltemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approvaltemplate` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `f_approvalId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `f_comment` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approvaltemplate`
--

LOCK TABLES `approvaltemplate` WRITE;
/*!40000 ALTER TABLE `approvaltemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `approvaltemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assobjs`
--

DROP TABLE IF EXISTS `assobjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assobjs` (
  `ownerID` bigint(20) NOT NULL,
  `objectID` bigint(20) NOT NULL,
  `typeID` bigint(20) NOT NULL,
  PRIMARY KEY (`ownerID`,`objectID`),
  KEY `AssObjs_3_ASC` (`objectID`,`ownerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assobjs`
--

LOCK TABLES `assobjs` WRITE;
/*!40000 ALTER TABLE `assobjs` DISABLE KEYS */;
INSERT INTO `assobjs` VALUES (-9223372036853275807,-9223372036854775105,-9223372036854775789),(-9223372036853275805,-9223372036854775105,-9223372036854775789),(-9223372036852775808,-9223372036854774467,-9223372036854775725),(-9223372036852275808,-9223372036854774467,-9223372036854775725),(-9223372036851775808,-9223372036854774467,-9223372036854775725),(-9223372036851775807,-9223372036854775105,-9223372036854775789),(-9223372036851775805,-9223372036854775105,-9223372036854775789),(-9223372036851775803,-9223372036854775134,-9223372036854775636),(-9223372036851775802,-9223372036854775134,-9223372036854775636),(-9223372036851775801,-9223372036854775134,-9223372036854775636),(-9223372036851775800,-9223372036854775134,-9223372036854775636),(-9223372036851775799,-9223372036854775134,-9223372036854775636),(-9223372036851775798,-9223372036854775134,-9223372036854775636),(-9223372036851275808,-9223372036854774467,-9223372036854775725),(-9223372036850775808,-9223372036854774467,-9223372036854775725),(-9223372036850775807,-9223372036854775134,-9223372036854775636),(-9223372036850775806,-9223372036854775134,-9223372036854775636);
/*!40000 ALTER TABLE `assobjs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribs`
--

DROP TABLE IF EXISTS `attribs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribs` (
  `F_ID` bigint(20) NOT NULL,
  `F_VAL` longblob,
  `F_VALVC` varbinary(2000) DEFAULT NULL,
  `F_MD5` varbinary(16) DEFAULT NULL,
  `F_SHA` varbinary(20) DEFAULT NULL,
  `F_SHA256` varbinary(32) DEFAULT NULL,
  `F_SHA512` varbinary(64) DEFAULT NULL,
  PRIMARY KEY (`F_ID`),
  KEY `ATTRIBS_3_ASC` (`F_MD5`),
  KEY `ATTRIBS_4_ASC` (`F_SHA`),
  KEY `ATTRIBS_5_ASC` (`F_SHA256`),
  KEY `ATTRIBS_6_ASC` (`F_SHA512`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribs`
--

LOCK TABLES `attribs` WRITE;
/*!40000 ALTER TABLE `attribs` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditaccesstype`
--

DROP TABLE IF EXISTS `auditaccesstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditaccesstype` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditaccesstype`
--

LOCK TABLES `auditaccesstype` WRITE;
/*!40000 ALTER TABLE `auditaccesstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditaccesstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditapptype`
--

DROP TABLE IF EXISTS `auditapptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditapptype` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditapptype`
--

LOCK TABLES `auditapptype` WRITE;
/*!40000 ALTER TABLE `auditapptype` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditapptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditeventtype`
--

DROP TABLE IF EXISTS `auditeventtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditeventtype` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditeventtype`
--

LOCK TABLES `auditeventtype` WRITE;
/*!40000 ALTER TABLE `auditeventtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditeventtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benchmarkcpelnks`
--

DROP TABLE IF EXISTS `benchmarkcpelnks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benchmarkcpelnks` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `BenchmarkCpeLnks_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benchmarkcpelnks`
--

LOCK TABLES `benchmarkcpelnks` WRITE;
/*!40000 ALTER TABLE `benchmarkcpelnks` DISABLE KEYS */;
/*!40000 ALTER TABLE `benchmarkcpelnks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booleantype`
--

DROP TABLE IF EXISTS `booleantype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booleantype` (
  `f_val` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booleantype`
--

LOCK TABLES `booleantype` WRITE;
/*!40000 ALTER TABLE `booleantype` DISABLE KEYS */;
/*!40000 ALTER TABLE `booleantype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booleanvalue`
--

DROP TABLE IF EXISTS `booleanvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booleanvalue` (
  `oid` bigint(20) NOT NULL,
  `f_type` bigint(20) NOT NULL,
  `f_val` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `BooleanValue_1_ASC` (`f_type`),
  KEY `BooleanValue_2_ASC` (`f_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booleanvalue`
--

LOCK TABLES `booleanvalue` WRITE;
/*!40000 ALTER TABLE `booleanvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `booleanvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bymatchrsp`
--

DROP TABLE IF EXISTS `bymatchrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bymatchrsp` (
  `matchFile` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `strategy` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bymatchrsp`
--

LOCK TABLES `bymatchrsp` WRITE;
/*!40000 ALTER TABLE `bymatchrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `bymatchrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `byrefrsp`
--

DROP TABLE IF EXISTS `byrefrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `byrefrsp` (
  `node` bigint(20) NOT NULL,
  `ruleFilter` bigint(20) NOT NULL,
  `refProps` longblob,
  `matchAny` tinyint(1) NOT NULL DEFAULT '0',
  `matchHash` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `byrefrsp`
--

LOCK TABLES `byrefrsp` WRITE;
/*!40000 ALTER TABLE `byrefrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `byrefrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cans`
--

DROP TABLE IF EXISTS `cans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cans` (
  `crit` bigint(20) NOT NULL,
  `et` smallint(6) NOT NULL,
  `an` bigint(20) NOT NULL,
  `severity` int(11) DEFAULT NULL,
  PRIMARY KEY (`crit`,`et`,`an`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cans`
--

LOCK TABLES `cans` WRITE;
/*!40000 ALTER TABLE `cans` DISABLE KEYS */;
INSERT INTO `cans` VALUES (-9223372036854774957,1,-9223372036854775756,NULL),(-9223372036854774957,1,-9223372036854775755,NULL),(-9223372036854774957,1,-9223372036854775754,NULL),(-9223372036854774957,1,-9223372036854775753,NULL),(-9223372036854774954,1,-9223372036854775756,NULL),(-9223372036854774954,1,-9223372036854775755,NULL),(-9223372036854774954,1,-9223372036854775754,NULL),(-9223372036854774954,1,-9223372036854775753,NULL),(-9223372036854774954,1,-9223372036854774953,NULL),(-9223372036854774954,1,-9223372036854774952,NULL),(-9223372036854774954,1,-9223372036854774951,NULL),(-9223372036854774954,1,-9223372036854774950,NULL),(-9223372036854774954,1,-9223372036854774949,NULL),(-9223372036854774954,1,-9223372036854774948,NULL),(-9223372036854774954,1,-9223372036854774947,NULL),(-9223372036854774954,1,-9223372036854774946,NULL),(-9223372036854774954,1,-9223372036854774945,NULL),(-9223372036854774954,1,-9223372036854774944,NULL),(-9223372036854774954,2,-9223372036854774952,NULL),(-9223372036854774954,2,-9223372036854774951,NULL),(-9223372036854774954,2,-9223372036854774950,NULL),(-9223372036854774954,2,-9223372036854774949,NULL),(-9223372036854774954,2,-9223372036854774947,NULL),(-9223372036854774954,2,-9223372036854774946,NULL),(-9223372036854774954,2,-9223372036854774945,NULL),(-9223372036854774942,1,-9223372036854775756,NULL),(-9223372036854774942,1,-9223372036854775755,NULL),(-9223372036854774942,1,-9223372036854775754,NULL),(-9223372036854774942,1,-9223372036854775753,NULL),(-9223372036854774942,1,-9223372036854774953,NULL),(-9223372036854774942,1,-9223372036854774948,NULL),(-9223372036854774942,1,-9223372036854774941,NULL),(-9223372036854774942,2,-9223372036854774950,NULL),(-9223372036854774942,2,-9223372036854774948,NULL),(-9223372036854774942,2,-9223372036854774940,NULL),(-9223372036854774942,2,-9223372036854774939,NULL),(-9223372036854774942,2,-9223372036854774938,NULL),(-9223372036854774942,2,-9223372036854774937,NULL),(-9223372036854774942,2,-9223372036854774936,NULL),(-9223372036854774934,1,-9223372036854775756,NULL),(-9223372036854774934,1,-9223372036854775755,NULL),(-9223372036854774934,1,-9223372036854775754,NULL),(-9223372036854774934,1,-9223372036854775753,NULL),(-9223372036854774934,1,-9223372036854774953,NULL),(-9223372036854774934,1,-9223372036854774952,NULL),(-9223372036854774934,1,-9223372036854774950,NULL),(-9223372036854774934,1,-9223372036854774948,NULL),(-9223372036854774934,1,-9223372036854774944,NULL),(-9223372036854774934,1,-9223372036854774940,NULL),(-9223372036854774934,1,-9223372036854774939,NULL),(-9223372036854774934,1,-9223372036854774938,NULL),(-9223372036854774934,1,-9223372036854774937,NULL),(-9223372036854774934,1,-9223372036854774936,NULL),(-9223372036854774934,1,-9223372036854774933,NULL),(-9223372036854774934,1,-9223372036854774932,NULL),(-9223372036854774934,1,-9223372036854774931,NULL),(-9223372036854774934,1,-9223372036854774930,NULL),(-9223372036854774934,1,-9223372036854774929,NULL),(-9223372036854774934,1,-9223372036854774928,NULL),(-9223372036854774934,1,-9223372036854774927,NULL),(-9223372036854774934,1,-9223372036854774926,NULL),(-9223372036854774934,1,-9223372036854774925,NULL),(-9223372036854774934,1,-9223372036854774924,NULL),(-9223372036854774934,1,-9223372036854774923,NULL),(-9223372036854774934,1,-9223372036854774922,NULL),(-9223372036854774934,1,-9223372036854774921,NULL),(-9223372036854774934,1,-9223372036854774920,NULL),(-9223372036854774934,1,-9223372036854774919,NULL),(-9223372036854774934,1,-9223372036854774918,NULL),(-9223372036854774934,2,-9223372036854774952,NULL),(-9223372036854774934,2,-9223372036854774950,NULL),(-9223372036854774934,2,-9223372036854774940,NULL),(-9223372036854774934,2,-9223372036854774939,NULL),(-9223372036854774934,2,-9223372036854774938,NULL),(-9223372036854774934,2,-9223372036854774937,NULL),(-9223372036854774934,2,-9223372036854774936,NULL),(-9223372036854774934,2,-9223372036854774933,NULL),(-9223372036854774934,2,-9223372036854774932,NULL),(-9223372036854774934,2,-9223372036854774931,NULL),(-9223372036854774934,2,-9223372036854774930,NULL),(-9223372036854774934,2,-9223372036854774929,NULL),(-9223372036854774934,2,-9223372036854774928,NULL),(-9223372036854774934,2,-9223372036854774927,NULL),(-9223372036854774934,2,-9223372036854774926,NULL),(-9223372036854774934,2,-9223372036854774925,NULL),(-9223372036854774934,2,-9223372036854774924,NULL),(-9223372036854774934,2,-9223372036854774923,NULL),(-9223372036854774934,2,-9223372036854774922,NULL),(-9223372036854774934,2,-9223372036854774921,NULL),(-9223372036854774934,2,-9223372036854774919,NULL),(-9223372036854774934,2,-9223372036854774918,NULL),(-9223372036854774916,1,-9223372036854774915,NULL),(-9223372036854774912,3,-9223372036854775756,NULL),(-9223372036854774912,3,-9223372036854775755,NULL),(-9223372036854774912,3,-9223372036854775754,NULL),(-9223372036854774912,3,-9223372036854775753,NULL),(-9223372036854774912,3,-9223372036854774953,NULL),(-9223372036854774912,3,-9223372036854774951,NULL),(-9223372036854774912,3,-9223372036854774950,NULL),(-9223372036854774912,3,-9223372036854774949,NULL),(-9223372036854774912,3,-9223372036854774946,NULL),(-9223372036854774912,3,-9223372036854774944,NULL),(-9223372036854774912,3,-9223372036854774936,NULL),(-9223372036854774912,3,-9223372036854774933,NULL),(-9223372036854774912,3,-9223372036854774932,NULL),(-9223372036854774912,3,-9223372036854774929,NULL),(-9223372036854774912,3,-9223372036854774928,NULL),(-9223372036854774912,3,-9223372036854774926,NULL),(-9223372036854774912,3,-9223372036854774911,NULL),(-9223372036854774912,3,-9223372036854774910,NULL),(-9223372036854774912,3,-9223372036854774909,NULL),(-9223372036854774912,3,-9223372036854774908,NULL),(-9223372036854774912,3,-9223372036854774907,NULL),(-9223372036854774912,3,-9223372036854774906,NULL),(-9223372036854774912,3,-9223372036854774905,NULL),(-9223372036854774912,3,-9223372036854774904,NULL),(-9223372036854774912,3,-9223372036854774903,NULL),(-9223372036854774912,3,-9223372036854774902,NULL),(-9223372036854774912,3,-9223372036854774901,NULL),(-9223372036854774912,3,-9223372036854774900,NULL),(-9223372036854774912,3,-9223372036854774899,NULL),(-9223372036854774912,3,-9223372036854774898,NULL),(-9223372036854774912,3,-9223372036854774897,NULL),(-9223372036854774912,3,-9223372036854774896,NULL),(-9223372036854774912,3,-9223372036854774895,NULL),(-9223372036854774912,3,-9223372036854774894,NULL),(-9223372036854774912,3,-9223372036854774893,NULL),(-9223372036854774912,3,-9223372036854774892,NULL),(-9223372036854774912,3,-9223372036854774891,NULL),(-9223372036854774912,3,-9223372036854774890,NULL),(-9223372036854774912,3,-9223372036854774889,NULL),(-9223372036854774912,3,-9223372036854774888,NULL),(-9223372036854774912,3,-9223372036854774887,NULL),(-9223372036854774912,3,-9223372036854774886,NULL),(-9223372036854774912,3,-9223372036854774885,NULL),(-9223372036854774912,3,-9223372036854774884,NULL),(-9223372036854774912,3,-9223372036854774883,NULL),(-9223372036854774912,3,-9223372036854774882,NULL),(-9223372036854774912,3,-9223372036854774881,NULL),(-9223372036854774912,3,-9223372036854774880,NULL),(-9223372036854774912,3,-9223372036854774879,NULL),(-9223372036854774912,3,-9223372036854774878,NULL),(-9223372036854774912,3,-9223372036854774877,NULL),(-9223372036854774912,3,-9223372036854774876,NULL),(-9223372036854774912,3,-9223372036854774875,NULL),(-9223372036854774912,3,-9223372036854774874,NULL),(-9223372036854774912,3,-9223372036854774873,NULL),(-9223372036854774912,3,-9223372036854774872,NULL),(-9223372036854774912,3,-9223372036854774871,NULL),(-9223372036854774912,3,-9223372036854774870,NULL),(-9223372036854774912,3,-9223372036854774869,NULL),(-9223372036854774912,3,-9223372036854774868,NULL),(-9223372036854774912,3,-9223372036854774867,NULL),(-9223372036854774912,3,-9223372036854774866,NULL),(-9223372036854774912,3,-9223372036854774865,NULL),(-9223372036854774912,3,-9223372036854774864,NULL),(-9223372036854774912,3,-9223372036854774863,NULL),(-9223372036854774912,3,-9223372036854774862,NULL),(-9223372036854774912,3,-9223372036854774861,NULL),(-9223372036854774912,3,-9223372036854774860,NULL),(-9223372036854774912,3,-9223372036854774859,NULL),(-9223372036854774912,3,-9223372036854774858,NULL),(-9223372036854774912,3,-9223372036854774857,NULL),(-9223372036854774912,3,-9223372036854774856,NULL),(-9223372036854774912,3,-9223372036854774855,NULL),(-9223372036854774912,3,-9223372036854774854,NULL),(-9223372036854774912,3,-9223372036854774853,NULL),(-9223372036854774912,3,-9223372036854774852,NULL),(-9223372036854774912,3,-9223372036854774851,NULL),(-9223372036854774912,3,-9223372036854774850,NULL),(-9223372036854774912,3,-9223372036854774849,NULL),(-9223372036854774912,3,-9223372036854774848,NULL),(-9223372036854774912,3,-9223372036854774847,NULL),(-9223372036854774912,3,-9223372036854774846,NULL),(-9223372036854774912,3,-9223372036854774845,NULL),(-9223372036854774912,3,-9223372036854774844,NULL),(-9223372036854774912,3,-9223372036854774843,NULL),(-9223372036854774912,3,-9223372036854774842,NULL),(-9223372036854774912,3,-9223372036854774841,NULL),(-9223372036854774912,3,-9223372036854774840,NULL),(-9223372036854774912,3,-9223372036854774839,NULL),(-9223372036854774912,3,-9223372036854774838,NULL),(-9223372036854774912,3,-9223372036854774837,NULL),(-9223372036854774912,3,-9223372036854774836,NULL),(-9223372036854774835,1,-9223372036854775755,NULL),(-9223372036854774835,1,-9223372036854774953,NULL),(-9223372036854774835,1,-9223372036854774925,NULL),(-9223372036854774835,1,-9223372036854774924,NULL),(-9223372036854774835,2,-9223372036854774925,NULL),(-9223372036854774835,2,-9223372036854774924,NULL),(-9223372036854774834,1,-9223372036854774950,NULL),(-9223372036854774834,1,-9223372036854774940,NULL),(-9223372036854774834,1,-9223372036854774939,NULL),(-9223372036854774834,1,-9223372036854774936,NULL),(-9223372036854774834,1,-9223372036854774926,NULL),(-9223372036854774834,2,-9223372036854774950,NULL),(-9223372036854774834,2,-9223372036854774940,NULL),(-9223372036854774834,2,-9223372036854774939,NULL),(-9223372036854774834,2,-9223372036854774936,NULL),(-9223372036854774834,2,-9223372036854774926,NULL),(-9223372036854774833,1,-9223372036854775755,NULL),(-9223372036854774833,1,-9223372036854774953,NULL),(-9223372036854774833,1,-9223372036854774950,NULL),(-9223372036854774833,1,-9223372036854774940,NULL),(-9223372036854774833,1,-9223372036854774939,NULL),(-9223372036854774833,1,-9223372036854774936,NULL),(-9223372036854774833,1,-9223372036854774926,NULL),(-9223372036854774833,1,-9223372036854774925,NULL),(-9223372036854774833,1,-9223372036854774924,NULL),(-9223372036854774833,2,-9223372036854774950,NULL),(-9223372036854774833,2,-9223372036854774940,NULL),(-9223372036854774833,2,-9223372036854774939,NULL),(-9223372036854774833,2,-9223372036854774936,NULL),(-9223372036854774833,2,-9223372036854774926,NULL),(-9223372036854774833,2,-9223372036854774925,NULL),(-9223372036854774833,2,-9223372036854774924,NULL),(-9223372036854774832,1,-9223372036854775755,NULL),(-9223372036854774832,1,-9223372036854774953,NULL),(-9223372036854774832,1,-9223372036854774941,NULL),(-9223372036854774831,2,-9223372036854774950,NULL),(-9223372036854774831,2,-9223372036854774940,NULL),(-9223372036854774831,2,-9223372036854774939,NULL),(-9223372036854774831,2,-9223372036854774936,NULL),(-9223372036854774830,1,-9223372036854775755,NULL),(-9223372036854774830,1,-9223372036854774953,NULL),(-9223372036854774830,1,-9223372036854774941,NULL),(-9223372036854774830,2,-9223372036854774950,NULL),(-9223372036854774830,2,-9223372036854774940,NULL),(-9223372036854774830,2,-9223372036854774939,NULL),(-9223372036854774830,2,-9223372036854774936,NULL),(-9223372036854774829,1,-9223372036854775755,NULL),(-9223372036854774829,1,-9223372036854774953,NULL),(-9223372036854774828,1,-9223372036854774950,NULL),(-9223372036854774828,1,-9223372036854774947,NULL),(-9223372036854774828,1,-9223372036854774946,NULL),(-9223372036854774828,1,-9223372036854774945,NULL),(-9223372036854774828,2,-9223372036854774950,NULL),(-9223372036854774828,2,-9223372036854774947,NULL),(-9223372036854774828,2,-9223372036854774946,NULL),(-9223372036854774828,2,-9223372036854774945,NULL),(-9223372036854774827,1,-9223372036854775755,NULL),(-9223372036854774827,1,-9223372036854774953,NULL),(-9223372036854774827,1,-9223372036854774950,NULL),(-9223372036854774827,1,-9223372036854774947,NULL),(-9223372036854774827,1,-9223372036854774946,NULL),(-9223372036854774827,1,-9223372036854774945,NULL),(-9223372036854774827,2,-9223372036854774950,NULL),(-9223372036854774827,2,-9223372036854774947,NULL),(-9223372036854774827,2,-9223372036854774946,NULL),(-9223372036854774827,2,-9223372036854774945,NULL),(-9223372036854774826,1,-9223372036854775755,NULL),(-9223372036854774825,3,-9223372036854775755,NULL),(-9223372036854774825,3,-9223372036854774953,NULL),(-9223372036854774824,3,-9223372036854774950,NULL),(-9223372036854774824,3,-9223372036854774946,NULL),(-9223372036854774824,3,-9223372036854774911,NULL),(-9223372036854774824,3,-9223372036854774908,NULL),(-9223372036854774824,3,-9223372036854774907,NULL),(-9223372036854774824,3,-9223372036854774906,NULL),(-9223372036854774824,3,-9223372036854774903,NULL),(-9223372036854774824,3,-9223372036854774902,NULL),(-9223372036854774824,3,-9223372036854774900,NULL),(-9223372036854774823,3,-9223372036854775755,NULL),(-9223372036854774823,3,-9223372036854774953,NULL),(-9223372036854774823,3,-9223372036854774951,NULL),(-9223372036854774823,3,-9223372036854774950,NULL),(-9223372036854774823,3,-9223372036854774949,NULL),(-9223372036854774823,3,-9223372036854774946,NULL),(-9223372036854774823,3,-9223372036854774933,NULL),(-9223372036854774823,3,-9223372036854774929,NULL),(-9223372036854774823,3,-9223372036854774928,NULL),(-9223372036854774823,3,-9223372036854774926,NULL),(-9223372036854774823,3,-9223372036854774911,NULL),(-9223372036854774823,3,-9223372036854774910,NULL),(-9223372036854774823,3,-9223372036854774909,NULL),(-9223372036854774823,3,-9223372036854774908,NULL),(-9223372036854774823,3,-9223372036854774907,NULL),(-9223372036854774823,3,-9223372036854774906,NULL),(-9223372036854774823,3,-9223372036854774904,NULL),(-9223372036854774823,3,-9223372036854774903,NULL),(-9223372036854774823,3,-9223372036854774902,NULL),(-9223372036854774823,3,-9223372036854774901,NULL),(-9223372036854774823,3,-9223372036854774900,NULL),(-9223372036854774823,3,-9223372036854774898,NULL),(-9223372036854774823,3,-9223372036854774897,NULL),(-9223372036854774823,3,-9223372036854774896,NULL),(-9223372036854774823,3,-9223372036854774895,NULL),(-9223372036854774822,3,-9223372036854774950,NULL),(-9223372036854774822,3,-9223372036854774936,NULL),(-9223372036854774822,3,-9223372036854774902,NULL),(-9223372036854774822,3,-9223372036854774900,NULL),(-9223372036854774821,3,-9223372036854774953,NULL),(-9223372036854774821,3,-9223372036854774951,NULL),(-9223372036854774821,3,-9223372036854774950,NULL),(-9223372036854774821,3,-9223372036854774936,NULL),(-9223372036854774821,3,-9223372036854774933,NULL),(-9223372036854774821,3,-9223372036854774911,NULL),(-9223372036854774821,3,-9223372036854774908,NULL),(-9223372036854774821,3,-9223372036854774907,NULL),(-9223372036854774821,3,-9223372036854774902,NULL),(-9223372036854774821,3,-9223372036854774901,NULL),(-9223372036854774821,3,-9223372036854774900,NULL),(-9223372036854774821,3,-9223372036854774898,NULL),(-9223372036854774821,3,-9223372036854774897,NULL),(-9223372036854774821,3,-9223372036854774896,NULL),(-9223372036854774821,3,-9223372036854774895,NULL),(-9223372036854774820,3,-9223372036854774953,NULL),(-9223372036854774820,3,-9223372036854774951,NULL),(-9223372036854774820,3,-9223372036854774950,NULL),(-9223372036854774820,3,-9223372036854774936,NULL),(-9223372036854774820,3,-9223372036854774933,NULL),(-9223372036854774820,3,-9223372036854774911,NULL),(-9223372036854774820,3,-9223372036854774908,NULL),(-9223372036854774820,3,-9223372036854774907,NULL),(-9223372036854774820,3,-9223372036854774902,NULL),(-9223372036854774820,3,-9223372036854774901,NULL),(-9223372036854774820,3,-9223372036854774900,NULL),(-9223372036854774820,3,-9223372036854774898,NULL),(-9223372036854774820,3,-9223372036854774897,NULL),(-9223372036854774820,3,-9223372036854774896,NULL),(-9223372036854774820,3,-9223372036854774895,NULL),(-9223372036854774820,3,-9223372036854774886,NULL),(-9223372036854774820,3,-9223372036854774885,NULL),(-9223372036854774820,3,-9223372036854774884,NULL),(-9223372036854774820,3,-9223372036854774883,NULL),(-9223372036854774820,3,-9223372036854774882,NULL),(-9223372036854774820,3,-9223372036854774881,NULL),(-9223372036854774820,3,-9223372036854774880,NULL),(-9223372036854774820,3,-9223372036854774879,NULL),(-9223372036854774820,3,-9223372036854774874,NULL),(-9223372036854774820,3,-9223372036854774873,NULL),(-9223372036854774820,3,-9223372036854774838,NULL),(-9223372036854774820,3,-9223372036854774836,NULL),(-9223372036854774819,3,-9223372036854774953,NULL),(-9223372036854774819,3,-9223372036854774951,NULL),(-9223372036854774819,3,-9223372036854774950,NULL),(-9223372036854774819,3,-9223372036854774936,NULL),(-9223372036854774819,3,-9223372036854774933,NULL),(-9223372036854774819,3,-9223372036854774911,NULL),(-9223372036854774819,3,-9223372036854774908,NULL),(-9223372036854774819,3,-9223372036854774907,NULL),(-9223372036854774819,3,-9223372036854774902,NULL),(-9223372036854774819,3,-9223372036854774901,NULL),(-9223372036854774819,3,-9223372036854774900,NULL),(-9223372036854774819,3,-9223372036854774898,NULL),(-9223372036854774819,3,-9223372036854774897,NULL),(-9223372036854774819,3,-9223372036854774896,NULL),(-9223372036854774819,3,-9223372036854774895,NULL),(-9223372036854774819,3,-9223372036854774878,NULL),(-9223372036854774819,3,-9223372036854774877,NULL),(-9223372036854774819,3,-9223372036854774876,NULL),(-9223372036854774819,3,-9223372036854774875,NULL),(-9223372036854774819,3,-9223372036854774872,NULL),(-9223372036854774819,3,-9223372036854774871,NULL),(-9223372036854774819,3,-9223372036854774870,NULL),(-9223372036854774819,3,-9223372036854774869,NULL),(-9223372036854774819,3,-9223372036854774868,NULL),(-9223372036854774819,3,-9223372036854774867,NULL),(-9223372036854774819,3,-9223372036854774866,NULL),(-9223372036854774819,3,-9223372036854774865,NULL),(-9223372036854774819,3,-9223372036854774864,NULL),(-9223372036854774819,3,-9223372036854774863,NULL),(-9223372036854774819,3,-9223372036854774857,NULL),(-9223372036854774818,3,-9223372036854774953,NULL),(-9223372036854774818,3,-9223372036854774951,NULL),(-9223372036854774818,3,-9223372036854774950,NULL),(-9223372036854774818,3,-9223372036854774936,NULL),(-9223372036854774818,3,-9223372036854774933,NULL),(-9223372036854774818,3,-9223372036854774911,NULL),(-9223372036854774818,3,-9223372036854774908,NULL),(-9223372036854774818,3,-9223372036854774907,NULL),(-9223372036854774818,3,-9223372036854774902,NULL),(-9223372036854774818,3,-9223372036854774901,NULL),(-9223372036854774818,3,-9223372036854774900,NULL),(-9223372036854774818,3,-9223372036854774898,NULL),(-9223372036854774818,3,-9223372036854774897,NULL),(-9223372036854774818,3,-9223372036854774896,NULL),(-9223372036854774818,3,-9223372036854774895,NULL),(-9223372036854774818,3,-9223372036854774862,NULL),(-9223372036854774818,3,-9223372036854774861,NULL),(-9223372036854774818,3,-9223372036854774860,NULL),(-9223372036854774818,3,-9223372036854774859,NULL),(-9223372036854774818,3,-9223372036854774858,NULL),(-9223372036854774818,3,-9223372036854774856,NULL),(-9223372036854774818,3,-9223372036854774855,NULL),(-9223372036854774818,3,-9223372036854774854,NULL),(-9223372036854774818,3,-9223372036854774853,NULL),(-9223372036854774818,3,-9223372036854774852,NULL),(-9223372036854774818,3,-9223372036854774851,NULL),(-9223372036854774818,3,-9223372036854774850,NULL),(-9223372036854774818,3,-9223372036854774849,NULL),(-9223372036854774818,3,-9223372036854774848,NULL),(-9223372036854774818,3,-9223372036854774847,NULL),(-9223372036854774818,3,-9223372036854774846,NULL),(-9223372036854774818,3,-9223372036854774844,NULL),(-9223372036854774818,3,-9223372036854774843,NULL),(-9223372036854774818,3,-9223372036854774842,NULL),(-9223372036854774818,3,-9223372036854774841,NULL),(-9223372036854774818,3,-9223372036854774840,NULL),(-9223372036854774818,3,-9223372036854774839,NULL),(-9223372036854774817,3,-9223372036854775756,NULL),(-9223372036854774817,3,-9223372036854775755,NULL),(-9223372036854774817,3,-9223372036854774953,NULL),(-9223372036854774817,3,-9223372036854774951,NULL),(-9223372036854774817,3,-9223372036854774950,NULL),(-9223372036854774817,3,-9223372036854774936,NULL),(-9223372036854774817,3,-9223372036854774933,NULL),(-9223372036854774817,3,-9223372036854774911,NULL),(-9223372036854774817,3,-9223372036854774908,NULL),(-9223372036854774817,3,-9223372036854774907,NULL),(-9223372036854774817,3,-9223372036854774902,NULL),(-9223372036854774817,3,-9223372036854774901,NULL),(-9223372036854774817,3,-9223372036854774900,NULL),(-9223372036854774817,3,-9223372036854774898,NULL),(-9223372036854774817,3,-9223372036854774897,NULL),(-9223372036854774817,3,-9223372036854774896,NULL),(-9223372036854774817,3,-9223372036854774895,NULL),(-9223372036854774817,3,-9223372036854774894,NULL),(-9223372036854774817,3,-9223372036854774893,NULL),(-9223372036854774817,3,-9223372036854774892,NULL),(-9223372036854774817,3,-9223372036854774891,NULL),(-9223372036854774817,3,-9223372036854774890,NULL),(-9223372036854774817,3,-9223372036854774889,NULL),(-9223372036854774817,3,-9223372036854774888,NULL),(-9223372036854774817,3,-9223372036854774887,NULL),(-9223372036854774816,3,-9223372036854774953,NULL),(-9223372036854774816,3,-9223372036854774951,NULL),(-9223372036854774816,3,-9223372036854774950,NULL),(-9223372036854774816,3,-9223372036854774936,NULL),(-9223372036854774816,3,-9223372036854774933,NULL),(-9223372036854774816,3,-9223372036854774911,NULL),(-9223372036854774816,3,-9223372036854774908,NULL),(-9223372036854774816,3,-9223372036854774907,NULL),(-9223372036854774816,3,-9223372036854774902,NULL),(-9223372036854774816,3,-9223372036854774901,NULL),(-9223372036854774816,3,-9223372036854774900,NULL),(-9223372036854774816,3,-9223372036854774898,NULL),(-9223372036854774816,3,-9223372036854774897,NULL),(-9223372036854774816,3,-9223372036854774896,NULL),(-9223372036854774816,3,-9223372036854774895,NULL),(-9223372036854774816,3,-9223372036854774845,NULL),(-9223372036854774816,3,-9223372036854774837,NULL),(-9223372036854774815,1,-9223372036854774915,NULL),(-9223372036854774792,1,-9223372036854775756,NULL),(-9223372036854774792,1,-9223372036854775755,NULL),(-9223372036854774792,1,-9223372036854775754,NULL),(-9223372036854774792,1,-9223372036854775753,NULL),(-9223372036854774790,1,-9223372036854775756,NULL),(-9223372036854774790,1,-9223372036854775755,NULL),(-9223372036854774790,1,-9223372036854775754,NULL),(-9223372036854774790,1,-9223372036854775753,NULL),(-9223372036854774784,1,-9223372036854775756,NULL),(-9223372036854774784,1,-9223372036854775755,NULL),(-9223372036854774784,1,-9223372036854775754,NULL),(-9223372036854774784,1,-9223372036854775753,NULL),(-9223372036854774781,1,-9223372036854775756,NULL),(-9223372036854774781,1,-9223372036854775755,NULL),(-9223372036854774781,1,-9223372036854775754,NULL),(-9223372036854774781,1,-9223372036854775753,NULL),(-9223372036854774778,1,-9223372036854775756,NULL),(-9223372036854774778,1,-9223372036854775755,NULL),(-9223372036854774778,1,-9223372036854775754,NULL),(-9223372036854774778,1,-9223372036854775753,NULL),(-9223372036854774775,1,-9223372036854775756,NULL),(-9223372036854774775,1,-9223372036854775755,NULL),(-9223372036854774775,1,-9223372036854775754,NULL),(-9223372036854774775,1,-9223372036854775753,NULL),(-9223372036854774771,1,-9223372036854775755,NULL),(-9223372036854774757,1,-9223372036854775756,NULL),(-9223372036854774757,1,-9223372036854775755,NULL),(-9223372036854774757,1,-9223372036854775754,NULL),(-9223372036854774757,1,-9223372036854775753,NULL),(-9223372036854774755,1,-9223372036854775756,NULL),(-9223372036854774755,1,-9223372036854775755,NULL),(-9223372036854774755,1,-9223372036854775754,NULL),(-9223372036854774755,1,-9223372036854775753,NULL),(-9223372036854774753,1,-9223372036854775756,NULL),(-9223372036854774753,1,-9223372036854775755,NULL),(-9223372036854774753,1,-9223372036854775754,NULL),(-9223372036854774753,1,-9223372036854775753,NULL),(-9223372036854774751,1,-9223372036854775756,NULL),(-9223372036854774751,1,-9223372036854775755,NULL),(-9223372036854774751,1,-9223372036854775754,NULL),(-9223372036854774751,1,-9223372036854775753,NULL),(-9223372036854774749,1,-9223372036854775756,NULL),(-9223372036854774749,1,-9223372036854775755,NULL),(-9223372036854774749,1,-9223372036854775754,NULL),(-9223372036854774749,1,-9223372036854775753,NULL);
/*!40000 ALTER TABLE `cans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_1900`
--

DROP TABLE IF EXISTS `cat_1900`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_1900` (
  `f_telnetPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_enableName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_enablePassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_1900`
--

LOCK TABLES `cat_1900` WRITE;
/*!40000 ALTER TABLE `cat_1900` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_1900` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_1900_config`
--

DROP TABLE IF EXISTS `cat_1900_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_1900_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_1900_config`
--

LOCK TABLES `cat_1900_config` WRITE;
/*!40000 ALTER TABLE `cat_1900_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_1900_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_1900_restoreconfig`
--

DROP TABLE IF EXISTS `cat_1900_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_1900_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_1900_restoreconfig`
--

LOCK TABLES `cat_1900_restoreconfig` WRITE;
/*!40000 ALTER TABLE `cat_1900_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_1900_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccedefinition`
--

DROP TABLE IF EXISTS `ccedefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccedefinition` (
  `cceId` varchar(20) COLLATE utf8_bin NOT NULL,
  `description` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `dateGenerated` datetime NOT NULL,
  `dateImported` datetime NOT NULL,
  PRIMARY KEY (`cceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccedefinition`
--

LOCK TABLES `ccedefinition` WRITE;
/*!40000 ALTER TABLE `ccedefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccedefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccemechanism`
--

DROP TABLE IF EXISTS `ccemechanism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccemechanism` (
  `cceId` varchar(20) COLLATE utf8_bin NOT NULL,
  `valueIndex` int(11) NOT NULL,
  `mechanism` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cceId`,`valueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccemechanism`
--

LOCK TABLES `ccemechanism` WRITE;
/*!40000 ALTER TABLE `ccemechanism` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccemechanism` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cceparameter`
--

DROP TABLE IF EXISTS `cceparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cceparameter` (
  `cceId` varchar(20) COLLATE utf8_bin NOT NULL,
  `valueIndex` int(11) NOT NULL,
  `parameter` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cceId`,`valueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cceparameter`
--

LOCK TABLES `cceparameter` WRITE;
/*!40000 ALTER TABLE `cceparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `cceparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changetypersp`
--

DROP TABLE IF EXISTS `changetypersp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changetypersp` (
  `T_ADDED` tinyint(1) NOT NULL DEFAULT '0',
  `T_MODIFIED` tinyint(1) NOT NULL DEFAULT '0',
  `T_REMOVED` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changetypersp`
--

LOCK TABLES `changetypersp` WRITE;
/*!40000 ALTER TABLE `changetypersp` DISABLE KEYS */;
/*!40000 ALTER TABLE `changetypersp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_catos`
--

DROP TABLE IF EXISTS `cisco_catos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_catos` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_enableName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_enablePassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_osversion` bigint(20) NOT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_catos`
--

LOCK TABLES `cisco_catos` WRITE;
/*!40000 ALTER TABLE `cisco_catos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_catos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_catos_config`
--

DROP TABLE IF EXISTS `cisco_catos_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_catos_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_catos_config`
--

LOCK TABLES `cisco_catos_config` WRITE;
/*!40000 ALTER TABLE `cisco_catos_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_catos_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_catos_restoreconfig`
--

DROP TABLE IF EXISTS `cisco_catos_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_catos_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_catos_restoreconfig`
--

LOCK TABLES `cisco_catos_restoreconfig` WRITE;
/*!40000 ALTER TABLE `cisco_catos_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_catos_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_ios`
--

DROP TABLE IF EXISTS `cisco_ios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_ios` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_enableName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_enablePassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_altTftpCommand` tinyint(1) NOT NULL DEFAULT '0',
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_fileNames` longtext COLLATE utf8_bin,
  `f_interactiveMode` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_ios`
--

LOCK TABLES `cisco_ios` WRITE;
/*!40000 ALTER TABLE `cisco_ios` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_ios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_ios_config`
--

DROP TABLE IF EXISTS `cisco_ios_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_ios_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_ios_config`
--

LOCK TABLES `cisco_ios_config` WRITE;
/*!40000 ALTER TABLE `cisco_ios_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_ios_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_ios_restoreconfig`
--

DROP TABLE IF EXISTS `cisco_ios_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_ios_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_ios_restoreconfig`
--

LOCK TABLES `cisco_ios_restoreconfig` WRITE;
/*!40000 ALTER TABLE `cisco_ios_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_ios_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_pix`
--

DROP TABLE IF EXISTS `cisco_pix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_pix` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_enableName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_enablePassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_pix`
--

LOCK TABLES `cisco_pix` WRITE;
/*!40000 ALTER TABLE `cisco_pix` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_pix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_pix7`
--

DROP TABLE IF EXISTS `cisco_pix7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_pix7` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_enableName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_enablePassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_pix7`
--

LOCK TABLES `cisco_pix7` WRITE;
/*!40000 ALTER TABLE `cisco_pix7` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_pix7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_pix7_config`
--

DROP TABLE IF EXISTS `cisco_pix7_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_pix7_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_pix7_config`
--

LOCK TABLES `cisco_pix7_config` WRITE;
/*!40000 ALTER TABLE `cisco_pix7_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_pix7_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_pix_config`
--

DROP TABLE IF EXISTS `cisco_pix_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_pix_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_pix_config`
--

LOCK TABLES `cisco_pix_config` WRITE;
/*!40000 ALTER TABLE `cisco_pix_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_pix_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_pix_restoreconfig`
--

DROP TABLE IF EXISTS `cisco_pix_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_pix_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_pix_restoreconfig`
--

LOCK TABLES `cisco_pix_restoreconfig` WRITE;
/*!40000 ALTER TABLE `cisco_pix_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_pix_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_vpn`
--

DROP TABLE IF EXISTS `cisco_vpn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_vpn` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_usePASV` tinyint(1) NOT NULL DEFAULT '0',
  `f_ftpPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_vpn`
--

LOCK TABLES `cisco_vpn` WRITE;
/*!40000 ALTER TABLE `cisco_vpn` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_vpn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cisco_vpn_rule`
--

DROP TABLE IF EXISTS `cisco_vpn_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cisco_vpn_rule` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cisco_vpn_rule`
--

LOCK TABLES `cisco_vpn_rule` WRITE;
/*!40000 ALTER TABLE `cisco_vpn_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `cisco_vpn_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `F_ID` bigint(20) NOT NULL,
  `F_CLASS` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (-9223372036854774652,'com.tripwire.space.common.attribute.BooleanAttributeValue'),(-9223372036854774651,'com.tripwire.si.common.element.TypeAttributeValue'),(-9223372036854774650,'com.tripwire.space.common.attribute.MD5AttributeValue'),(-9223372036854774649,'com.tripwire.space.common.attribute.ByteArrayAttributeValue'),(-9223372036854774648,'com.tripwire.space.common.attribute.LongAttributeValue'),(-9223372036854774647,'com.tripwire.space.common.attribute.DateAttributeValue'),(-9223372036854774646,'com.tripwire.space.common.attribute.IntAttributeValue'),(-9223372036854774645,'com.tripwire.space.common.attribute.ShaAttributeValue'),(-9223372036854774644,'com.tripwire.space.common.attribute.StringAttributeValue'),(-9223372036854774643,'com.tripwire.si.common.platform.windows.SidAttributeValue'),(-9223372036854774642,'com.tripwire.si.common.platform.windows.AclAttributeValue'),(-9223372036854774641,'com.tripwire.si.common.fs.posix.AclAttributeValue'),(-9223372036854774640,'com.tripwire.si.common.fs.aix.AixAclAttributeValue'),(-9223372036854774639,'com.tripwire.space.common.attribute.ShortAttributeValue'),(-9223372036854774638,'com.tripwire.si.common.fs.posix.UserIdAttributeValue'),(-9223372036854774637,'com.tripwire.si.common.platform.windows.SdcAttributeValue'),(-9223372036854774636,'com.tripwire.si.common.fs.posix.PermissionsAttributeValue'),(-9223372036854774635,'com.tripwire.space.common.attribute.MultipleStringAttributeValue'),(-9223372036854774634,'com.tripwire.si.common.fs.posix.PosixFileSystemName'),(-9223372036854774633,'com.tripwire.si.common.fs.windows.WindowsFileSystemName'),(-9223372036854774632,'com.tripwire.si.common.fs.registry.WindowsRegistryName'),(-9223372036854774631,'com.tripwire.si.common.ds.common.DirectoryServerName'),(-9223372036854774630,'com.tripwire.space.common.element.StringElementName'),(-9223372036854774629,'com.tripwire.si.common.db.oracle.OracleElementName'),(-9223372036854774628,'com.tripwire.si.common.gp.RsopElementName'),(-9223372036854774627,'com.tripwire.space.common.attribute.GrowingAttributeValue'),(-9223372036854774626,'com.tripwire.si.common.db.mssql.SqlServerElementName'),(-9223372036854774625,'com.tripwire.si.common.vi.vmware.VmwareApiElementName'),(-9223372036854774624,'com.tripwire.si.common.vi.vmware.VmwareHttpElementName'),(-9223372036854774623,'com.tripwire.space.common.attribute.MultipleIntAttributeValue'),(-9223372036854774622,'com.tripwire.si.common.db.db2.Db2ElementName'),(-9223372036854774621,'com.tripwire.si.common.fs.i5os.UserAuthorityAttributeValue'),(-9223372036854774620,'com.tripwire.si.common.fs.i5os.ScanDispositionAttributeValue'),(-9223372036854774619,'com.tripwire.si.common.fs.i5os.SpecialAuthoritiesAttributeValue'),(-9223372036854774618,'com.tripwire.si.common.fs.i5os.UserActionAuditingAttributeValue'),(-9223372036854774617,'com.tripwire.si.common.fs.i5os.JournalStateAttributeValue'),(-9223372036854774616,'com.tripwire.si.common.fs.i5os.JournalDeliveryModeAttributeValue'),(-9223372036854774615,'com.tripwire.si.common.fs.i5os.StoragePoolInformationAttributeValue'),(-9223372036854774614,'com.tripwire.si.common.fs.i5os.DateOnlyAttributeValue'),(-9223372036854774613,'com.tripwire.si.common.fs.i5os.OS400NameValueElementName'),(-9223372036854774612,'com.tripwire.si.common.fs.i5os.ArrayAttributeValue'),(-9223372036854774611,'com.tripwire.si.common.fs.macosx.MacOSXAclAttributeValue'),(-9223372036854774610,'com.tripwire.space.common.attribute.Sha256AttributeValue'),(-9223372036854774609,'com.tripwire.space.common.attribute.Sha512AttributeValue'),(-9223372036854774608,'com.tripwire.si.common.platform.windows.EffectiveRightsAttributeValue'),(-9223372036854774607,'com.tripwire.si.common.db.sybase.SybaseElementName'),(-9223372036854774606,'com.tripwire.si.common.fs.solaris.SolarisAclAttributeValue');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clm`
--

DROP TABLE IF EXISTS `clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clm` (
  `clm_type` smallint(6) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `clm_0_ASC` (`clm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clm`
--

LOCK TABLES `clm` WRITE;
/*!40000 ALTER TABLE `clm` DISABLE KEYS */;
INSERT INTO `clm` VALUES (3,-9223372036853275806),(3,-9223372036851775806);
/*!40000 ALTER TABLE `clm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command_response`
--

DROP TABLE IF EXISTS `command_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command_response` (
  `f_responseCommand` longtext COLLATE utf8_bin,
  `f_errorPatterns` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_logResponse` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_response`
--

LOCK TABLES `command_response` WRITE;
/*!40000 ALTER TABLE `command_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `command_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command_validation_rule`
--

DROP TABLE IF EXISTS `command_validation_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command_validation_rule` (
  `f_preCommand` longtext COLLATE utf8_bin,
  `f_command` longtext COLLATE utf8_bin,
  `f_postCommand` longtext COLLATE utf8_bin,
  `f_elementName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_selectionMethod` bigint(20) NOT NULL,
  `f_linePattern` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_advancedPattern` longtext COLLATE utf8_bin,
  `f_nodeType` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_exclusionFilter` longtext COLLATE utf8_bin,
  `f_replacement` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_baseline` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_validation_rule`
--

LOCK TABLES `command_validation_rule` WRITE;
/*!40000 ALTER TABLE `command_validation_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `command_validation_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componentinstalls`
--

DROP TABLE IF EXISTS `componentinstalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componentinstalls` (
  `componentId` bigint(20) NOT NULL,
  `clientHost` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`componentId`,`clientHost`),
  KEY `ComponentInstalls_1_ASC` (`clientHost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componentinstalls`
--

LOCK TABLES `componentinstalls` WRITE;
/*!40000 ALTER TABLE `componentinstalls` DISABLE KEYS */;
INSERT INTO `componentinstalls` VALUES (-9223372036854775065,'172.31.2.70'),(-9223372036854775063,'172.31.2.70');
/*!40000 ALTER TABLE `componentinstalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components` (
  `oid` bigint(20) NOT NULL,
  `componentType` int(11) NOT NULL,
  `componentClass` longtext COLLATE utf8_bin,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` VALUES (-9223372036854775065,0,'com.tripwire.ipdevice.ui.web.plugin.IPDeviceWebPlugInComponent'),(-9223372036854775063,0,'com.tripwire.si.ui.web.plugin.ServerIntegrityWebPlugInComponent');
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condrsp`
--

DROP TABLE IF EXISTS `condrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condrsp` (
  `f_cond` longblob,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condrsp`
--

LOCK TABLES `condrsp` WRITE;
/*!40000 ALTER TABLE `condrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `condrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `console_info`
--

DROP TABLE IF EXISTS `console_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `console_info` (
  `mostSigBits` bigint(20) NOT NULL,
  `leastSigBits` bigint(20) NOT NULL,
  `inetAddress` varchar(39) COLLATE utf8_bin NOT NULL,
  `hostName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `versionNumber` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `timeZone` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `console_info`
--

LOCK TABLES `console_info` WRITE;
/*!40000 ALTER TABLE `console_info` DISABLE KEYS */;
INSERT INTO `console_info` VALUES (-6044109675236949700,-2391310107477475328,'172.31.2.70','172.31.2.70','8.2.2.b8.2.2.r2750.b195','America/Los_Angeles');
/*!40000 ALTER TABLE `console_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `oid` bigint(20) NOT NULL,
  `C_TYPE` tinyint(1) NOT NULL DEFAULT '0',
  `C_SZ` int(11) NOT NULL,
  `C_DATA_TXT` longtext COLLATE utf8_bin,
  `C_DATA_BIN` longblob,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpenametype`
--

DROP TABLE IF EXISTS `cpenametype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpenametype` (
  `f_val` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpenametype`
--

LOCK TABLES `cpenametype` WRITE;
/*!40000 ALTER TABLE `cpenametype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpenametype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpenamevalue`
--

DROP TABLE IF EXISTS `cpenamevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpenamevalue` (
  `oid` bigint(20) NOT NULL,
  `f_type` bigint(20) NOT NULL,
  `f_val` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `CpeNameValue_1_ASC` (`f_type`),
  KEY `CpeNameValue_2_ASC` (`f_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpenamevalue`
--

LOCK TABLES `cpenamevalue` WRITE;
/*!40000 ALTER TABLE `cpenamevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpenamevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crit`
--

DROP TABLE IF EXISTS `crit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crit` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `c_genre` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crit`
--

LOCK TABLES `crit` WRITE;
/*!40000 ALTER TABLE `crit` DISABLE KEYS */;
INSERT INTO `crit` VALUES (-9223372036854774959,-9223372036854774963,'com.tripwire.si.core.rule.ElementSpecifierRule:canonical',NULL,-9223372036854774960),(-9223372036854774957,-9223372036854774963,'com.tripwire.si.core.gp.RsopRule:canonical',NULL,-9223372036854774958),(-9223372036854774954,-9223372036854774963,'com.tripwire.si.core.fs.posix.PosixFileSystemRule:canonical',NULL,-9223372036854774955),(-9223372036854774942,-9223372036854774963,'com.tripwire.si.core.fs.registry.WindowsRegistryRule:canonical',NULL,-9223372036854774943),(-9223372036854774934,-9223372036854774963,'com.tripwire.si.core.fs.windows.WindowsFileSystemRule:canonical',NULL,-9223372036854774935),(-9223372036854774916,-9223372036854774963,'com.tripwire.si.core.fs.i5os.OS400NameValueRule:canonical',NULL,-9223372036854774917),(-9223372036854774912,-9223372036854774963,'com.tripwire.si.core.fs.i5os.IfsFileSystemRule:canonical',NULL,-9223372036854774913),(-9223372036854774835,-9223372036854774964,'Windows - Content Only',NULL,-9223372036854774935),(-9223372036854774834,-9223372036854774964,'Windows - Permissions Only',NULL,-9223372036854774935),(-9223372036854774833,-9223372036854774964,'Windows - Content and Permissions',NULL,-9223372036854774935),(-9223372036854774832,-9223372036854774964,'Windows Registry - Content Only',NULL,-9223372036854774943),(-9223372036854774831,-9223372036854774964,'Windows Registry - Permissions Only',NULL,-9223372036854774943),(-9223372036854774830,-9223372036854774964,'Windows Registry - Content and Permissions',NULL,-9223372036854774943),(-9223372036854774829,-9223372036854774964,'Unix - Content Only',NULL,-9223372036854774955),(-9223372036854774828,-9223372036854774964,'Unix - Permissions Only',NULL,-9223372036854774955),(-9223372036854774827,-9223372036854774964,'Unix - Content and Permissions',NULL,-9223372036854774955),(-9223372036854774826,-9223372036854774964,'RSoP - Default',NULL,-9223372036854774958),(-9223372036854774825,-9223372036854774964,'i5/OS - Content Only',NULL,-9223372036854774913),(-9223372036854774824,-9223372036854774964,'i5/OS IFS - Permissions Only',NULL,-9223372036854774913),(-9223372036854774823,-9223372036854774964,'i5/OS IFS - General',NULL,-9223372036854774913),(-9223372036854774822,-9223372036854774964,'i5/OS QSYS - Permissions Only',NULL,-9223372036854774913),(-9223372036854774821,-9223372036854774964,'i5/OS QSYS - General',NULL,-9223372036854774913),(-9223372036854774820,-9223372036854774964,'i5/OS QSYS - User Profiles',NULL,-9223372036854774913),(-9223372036854774819,-9223372036854774964,'i5/OS QSYS - Job Descriptions',NULL,-9223372036854774913),(-9223372036854774818,-9223372036854774964,'i5/OS QSYS - Journals',NULL,-9223372036854774913),(-9223372036854774817,-9223372036854774964,'i5/OS QSYS - File Members',NULL,-9223372036854774913),(-9223372036854774816,-9223372036854774964,'i5/OS QSYS - Subsystem Descriptions',NULL,-9223372036854774913),(-9223372036854774815,-9223372036854774964,'i5/OS System Values - Default',NULL,-9223372036854774917),(-9223372036854774809,-9223372036854774963,'com.tripwire.si.core.ds.common.DirectoryServerRule:canonical',NULL,-9223372036854774810),(-9223372036854774805,-9223372036854774963,'com.tripwire.si.core.ds.ad.ActiveDirectoryRule:canonical',NULL,-9223372036854774806),(-9223372036854774802,-9223372036854774963,'com.tripwire.si.core.ds.sunone.SunOneRule:canonical',NULL,-9223372036854774803),(-9223372036854774799,-9223372036854774963,'com.tripwire.si.core.ds.edir.EdirectoryRule:canonical',NULL,-9223372036854774800),(-9223372036854774792,-9223372036854774963,'DatabaseServerRule:canonical',NULL,-9223372036854774793),(-9223372036854774790,-9223372036854774963,'DatabaseServerQueryRule:canonical',NULL,-9223372036854774791),(-9223372036854774784,-9223372036854774963,'OracleDatabaseServerRule:canonical',NULL,-9223372036854774785),(-9223372036854774781,-9223372036854774963,'MsSqlServerRule:canonical',NULL,-9223372036854774782),(-9223372036854774778,-9223372036854774963,'Db2Rule:canonical',NULL,-9223372036854774779),(-9223372036854774775,-9223372036854774963,'SybaseDatabaseServerRule:canonical',NULL,-9223372036854774776),(-9223372036854774771,-9223372036854774964,'Database - Default',NULL,-9223372036854774793),(-9223372036854774757,-9223372036854774963,'com.tripwire.si.core.vi.vmware.VmWareRule:canonical',NULL,-9223372036854774758),(-9223372036854774755,-9223372036854774963,'com.tripwire.si.core.vi.vmware.VmRule:canonical',NULL,-9223372036854774756),(-9223372036854774753,-9223372036854774963,'com.tripwire.si.core.vi.vmware.VSwitchRule:canonical',NULL,-9223372036854774754),(-9223372036854774751,-9223372036854774963,'com.tripwire.si.core.vi.vmware.EsxRule:canonical',NULL,-9223372036854774752),(-9223372036854774749,-9223372036854774963,'com.tripwire.si.core.vi.vmware.DVSwitchRule:canonical',NULL,-9223372036854774750);
/*!40000 ALTER TABLE `crit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custtype`
--

DROP TABLE IF EXISTS `custtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custtype` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `f_targType` bigint(20) NOT NULL,
  `f_isDef` tinyint(1) NOT NULL DEFAULT '0',
  `f_isEdit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `CustType_7_ASC` (`nme`,`f_targType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custtype`
--

LOCK TABLES `custtype` WRITE;
/*!40000 ALTER TABLE `custtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `custtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvlnks_elems`
--

DROP TABLE IF EXISTS `cvlnks_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvlnks_elems` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `CVLnks_ELEMS_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvlnks_elems`
--

LOCK TABLES `cvlnks_elems` WRITE;
/*!40000 ALTER TABLE `cvlnks_elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvlnks_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvlnks_node`
--

DROP TABLE IF EXISTS `cvlnks_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvlnks_node` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `CVLnks_Node_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvlnks_node`
--

LOCK TABLES `cvlnks_node` WRITE;
/*!40000 ALTER TABLE `cvlnks_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvlnks_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvlnks_vers`
--

DROP TABLE IF EXISTS `cvlnks_vers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvlnks_vers` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `CVLnks_Vers_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvlnks_vers`
--

LOCK TABLES `cvlnks_vers` WRITE;
/*!40000 ALTER TABLE `cvlnks_vers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvlnks_vers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashbrdlnks`
--

DROP TABLE IF EXISTS `dashbrdlnks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashbrdlnks` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  `cIndx` int(11) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `DashbrdLnks_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashbrdlnks`
--

LOCK TABLES `dashbrdlnks` WRITE;
/*!40000 ALTER TABLE `dashbrdlnks` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashbrdlnks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datetype`
--

DROP TABLE IF EXISTS `datetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datetype` (
  `f_val` datetime NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datetype`
--

LOCK TABLES `datetype` WRITE;
/*!40000 ALTER TABLE `datetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `datetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datevalue`
--

DROP TABLE IF EXISTS `datevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datevalue` (
  `oid` bigint(20) NOT NULL,
  `f_type` bigint(20) NOT NULL,
  `f_val` datetime NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `DateValue_1_ASC` (`f_type`),
  KEY `DateValue_2_ASC` (`f_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datevalue`
--

LOCK TABLES `datevalue` WRITE;
/*!40000 ALTER TABLE `datevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `datevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db2node`
--

DROP TABLE IF EXISTS `db2node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db2node` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db2node`
--

LOCK TABLES `db2node` WRITE;
/*!40000 ALTER TABLE `db2node` DISABLE KEYS */;
/*!40000 ALTER TABLE `db2node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbsnode`
--

DROP TABLE IF EXISTS `dbsnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbsnode` (
  `dbs_port` int(11) NOT NULL,
  `dbs_user` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `dbs_pw` longblob,
  `dbs_ca` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbsnode`
--

LOCK TABLES `dbsnode` WRITE;
/*!40000 ALTER TABLE `dbsnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbsnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dntable`
--

DROP TABLE IF EXISTS `dntable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dntable` (
  `DN_NODE` bigint(20) NOT NULL,
  `DN_MAPPING` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dntable`
--

LOCK TABLES `dntable` WRITE;
/*!40000 ALTER TABLE `dntable` DISABLE KEYS */;
/*!40000 ALTER TABLE `dntable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dsnode`
--

DROP TABLE IF EXISTS `dsnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dsnode` (
  `DS_USER` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `DS_PP` longblob,
  `DS_SSL` tinyint(1) NOT NULL DEFAULT '0',
  `DS_PORT` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsnode`
--

LOCK TABLES `dsnode` WRITE;
/*!40000 ALTER TABLE `dsnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `dsnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementsummary`
--

DROP TABLE IF EXISTS `elementsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementsummary` (
  `f_nodeID` bigint(20) NOT NULL,
  `f_ruleID` bigint(20) NOT NULL,
  `f_elementCount` int(11) NOT NULL,
  `f_maxSeverity` int(11) NOT NULL,
  PRIMARY KEY (`f_nodeID`,`f_ruleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementsummary`
--

LOCK TABLES `elementsummary` WRITE;
/*!40000 ALTER TABLE `elementsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elems`
--

DROP TABLE IF EXISTS `elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elems` (
  `oid` bigint(20) NOT NULL,
  `E_NID` bigint(20) NOT NULL,
  `E_RID` bigint(20) NOT NULL,
  `E_NMID` bigint(20) NOT NULL,
  `E_RESTORE` tinyint(1) NOT NULL DEFAULT '0',
  `E_BLID` bigint(20) NOT NULL,
  `E_LCID` bigint(20) NOT NULL,
  `E_LCTYP` smallint(6) NOT NULL,
  `E_LCSEV` smallint(6) NOT NULL,
  `E_LCNO` smallint(6) NOT NULL,
  `E_DSC` varchar(1024) COLLATE utf8_bin DEFAULT '',
  `E_INSC` tinyint(1) NOT NULL DEFAULT '0',
  `E_ET` smallint(6) NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `ELEMS_13_ASC` (`E_NMID`,`E_NID`,`E_RID`),
  KEY `ELEMS_6_ASC` (`E_LCID`),
  KEY `ELEMS_14_ASC` (`E_NID`,`E_LCID`),
  KEY `ELEMS_15_ASC` (`E_LCTYP`,`E_NID`),
  KEY `ELEMS_16_ASC` (`E_NID`,`E_RID`,`E_LCTYP`,`E_LCSEV`),
  KEY `ELEMS_17_ASC` (`E_RID`,`E_LCTYP`,`E_LCSEV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elems`
--

LOCK TABLES `elems` WRITE;
/*!40000 ALTER TABLE `elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `elems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER ELEMS_DELETEON AFTER DELETE ON ELEMS FOR EACH ROW
BEGIN
  DELETE FROM Vers WHERE V_EID=OLD.oid;
  DELETE FROM CVLnks_ELEMS WHERE pId=OLD.oid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `emailresp`
--

DROP TABLE IF EXISTS `emailresp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailresp` (
  `typ` int(11) NOT NULL,
  `diflns` int(11) NOT NULL,
  `diftol` int(11) NOT NULL,
  `maxdif` int(11) NOT NULL,
  `eservId` bigint(20) NOT NULL,
  `addnlEmailAddrs` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailresp`
--

LOCK TABLES `emailresp` WRITE;
/*!40000 ALTER TABLE `emailresp` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailresp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enames`
--

DROP TABLE IF EXISTS `enames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enames` (
  `EN_OID` bigint(20) NOT NULL,
  `EN_DISPLAY` varchar(1536) COLLATE utf8_bin NOT NULL,
  `EN_DIGEST` varbinary(16) NOT NULL,
  `EN_CS` tinyint(1) NOT NULL DEFAULT '0',
  `EN_RAW` longblob,
  `EN_CLASS` bigint(20) NOT NULL,
  `EN_UC_MD5` varbinary(16) NOT NULL,
  PRIMARY KEY (`EN_OID`),
  UNIQUE KEY `EN_DIGEST` (`EN_DIGEST`),
  KEY `ENAMES_6_ASC` (`EN_UC_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enames`
--

LOCK TABLES `enames` WRITE;
/*!40000 ALTER TABLE `enames` DISABLE KEYS */;
/*!40000 ALTER TABLE `enames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esxmanagednode`
--

DROP TABLE IF EXISTS `esxmanagednode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `esxmanagednode` (
  `esxNodeId` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esxmanagednode`
--

LOCK TABLES `esxmanagednode` WRITE;
/*!40000 ALTER TABLE `esxmanagednode` DISABLE KEYS */;
/*!40000 ALTER TABLE `esxmanagednode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esxnode`
--

DROP TABLE IF EXISTS `esxnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `esxnode` (
  `username` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `passphrase` longblob,
  `defaultAuth` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esxnode`
--

LOCK TABLES `esxnode` WRITE;
/*!40000 ALTER TABLE `esxnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `esxnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esxsshnode`
--

DROP TABLE IF EXISTS `esxsshnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `esxsshnode` (
  `defaultSshAuth` tinyint(1) NOT NULL DEFAULT '0',
  `sshUsername` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `sshPassphrase` longblob,
  `suPassphrase` longblob,
  `sshKeyFile` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `sshPort` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esxsshnode`
--

LOCK TABLES `esxsshnode` WRITE;
/*!40000 ALTER TABLE `esxsshnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `esxsshnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excludednodes`
--

DROP TABLE IF EXISTS `excludednodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `excludednodes` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `ExcludedNodes_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excludednodes`
--

LOCK TABLES `excludednodes` WRITE;
/*!40000 ALTER TABLE `excludednodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `excludednodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `execresp`
--

DROP TABLE IF EXISTS `execresp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `execresp` (
  `cmdmode` int(11) NOT NULL,
  `cmdline` longtext COLLATE utf8_bin,
  `rptattr` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `rptdiffs` tinyint(1) NOT NULL DEFAULT '0',
  `rptfmt` int(11) NOT NULL,
  `alwaysRun` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `execresp`
--

LOCK TABLES `execresp` WRITE;
/*!40000 ALTER TABLE `execresp` DISABLE KEYS */;
/*!40000 ALTER TABLE `execresp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `execrule`
--

DROP TABLE IF EXISTS `execrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `execrule` (
  `commandLine` longtext COLLATE utf8_bin,
  `excludeStr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `replaceStr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `commandTimeout` bigint(20) DEFAULT NULL,
  `elementName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `execrule`
--

LOCK TABLES `execrule` WRITE;
/*!40000 ALTER TABLE `execrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `execrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extreme`
--

DROP TABLE IF EXISTS `extreme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extreme` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extreme`
--

LOCK TABLES `extreme` WRITE;
/*!40000 ALTER TABLE `extreme` DISABLE KEYS */;
/*!40000 ALTER TABLE `extreme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extreme_config`
--

DROP TABLE IF EXISTS `extreme_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extreme_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extreme_config`
--

LOCK TABLES `extreme_config` WRITE;
/*!40000 ALTER TABLE `extreme_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `extreme_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extreme_restoreconfig`
--

DROP TABLE IF EXISTS `extreme_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extreme_restoreconfig` (
  `f_saveToLocation` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extreme_restoreconfig`
--

LOCK TABLES `extreme_restoreconfig` WRITE;
/*!40000 ALTER TABLE `extreme_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `extreme_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f5_bigip`
--

DROP TABLE IF EXISTS `f5_bigip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f5_bigip` (
  `f_sshPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f5_bigip`
--

LOCK TABLES `f5_bigip` WRITE;
/*!40000 ALTER TABLE `f5_bigip` DISABLE KEYS */;
/*!40000 ALTER TABLE `f5_bigip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f5_bigip_config`
--

DROP TABLE IF EXISTS `f5_bigip_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f5_bigip_config` (
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f5_bigip_config`
--

LOCK TABLES `f5_bigip_config` WRITE;
/*!40000 ALTER TABLE `f5_bigip_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `f5_bigip_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f5_bigip_config_restore`
--

DROP TABLE IF EXISTS `f5_bigip_config_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f5_bigip_config_restore` (
  `f_reboot` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f5_bigip_config_restore`
--

LOCK TABLES `f5_bigip_config_restore` WRITE;
/*!40000 ALTER TABLE `f5_bigip_config_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `f5_bigip_config_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `licenseString` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `licenseString` (`licenseString`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (-9223372036854775717,-9223372036854775718,'FSI'),(-9223372036854775715,-9223372036854775716,'FSI-Policy'),(-9223372036854775713,-9223372036854775714,'FSI-Remediation'),(-9223372036854775711,-9223372036854775712,'I5OS-FSI'),(-9223372036854775709,-9223372036854775710,'I5OS-Policy'),(-9223372036854775707,-9223372036854775708,'I5OS-Remediation'),(-9223372036854775067,-9223372036854775068,'DataMart'),(-9223372036854774978,-9223372036854774979,'TWRouter'),(-9223372036854774976,-9223372036854774977,'TWRouter-Policy'),(-9223372036854774974,-9223372036854774975,'TWRouter-Remediation'),(-9223372036854774973,-9223372036854775631,'VMWare-ESX'),(-9223372036854774972,-9223372036854775630,'VMWare-ESX-Policy'),(-9223372036854774971,-9223372036854775628,'VMWare-ESX-Remediation'),(-9223372036854774798,-9223372036854774814,'DSI'),(-9223372036854774797,-9223372036854774813,'DSI-Policy'),(-9223372036854774796,-9223372036854774812,'DSI-Remediation'),(-9223372036854774774,-9223372036854774789,'DBI'),(-9223372036854774773,-9223372036854774788,'DBI-Policy'),(-9223372036854774772,-9223372036854774787,'DBI-Remediation');
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foundry`
--

DROP TABLE IF EXISTS `foundry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foundry` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_enableName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_enablePassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foundry`
--

LOCK TABLES `foundry` WRITE;
/*!40000 ALTER TABLE `foundry` DISABLE KEYS */;
/*!40000 ALTER TABLE `foundry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foundry_config`
--

DROP TABLE IF EXISTS `foundry_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foundry_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foundry_config`
--

LOCK TABLES `foundry_config` WRITE;
/*!40000 ALTER TABLE `foundry_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `foundry_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foundry_restoreconfig`
--

DROP TABLE IF EXISTS `foundry_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foundry_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foundry_restoreconfig`
--

LOCK TABLES `foundry_restoreconfig` WRITE;
/*!40000 ALTER TABLE `foundry_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `foundry_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_rule`
--

DROP TABLE IF EXISTS `generic_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_rule` (
  `f_fileName` longtext COLLATE utf8_bin,
  `f_nodeType` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_rule`
--

LOCK TABLES `generic_rule` WRITE;
/*!40000 ALTER TABLE `generic_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grpbl`
--

DROP TABLE IF EXISTS `grpbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grpbl` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` longtext COLLATE utf8_bin,
  `p_n` int(11) NOT NULL DEFAULT '0',
  `c_n` int(11) NOT NULL DEFAULT '0',
  `cg_n` int(11) NOT NULL DEFAULT '0',
  `g_id` bigint(20) NOT NULL,
  `g_type` int(11) NOT NULL,
  `g_updatable` tinyint(1) NOT NULL DEFAULT '1',
  `g_controllable` tinyint(1) NOT NULL DEFAULT '1',
  `modifiedTime` bigint(20) DEFAULT NULL,
  `importedTime` bigint(20) DEFAULT NULL,
  `trackingId` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `isScap` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `Grpbl_15_ASC` (`nme`),
  KEY `Grpbl_16_ASC` (`p_n`,`g_type`,`g_id`),
  KEY `Grpbl_17_ASC` (`g_type`,`g_id`,`oid`),
  KEY `Grpbl_18_ASC` (`trackingId`),
  KEY `Grpbl_ref_pmId` (`ref_pmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grpbl`
--

LOCK TABLES `grpbl` WRITE;
/*!40000 ALTER TABLE `grpbl` DISABLE KEYS */;
INSERT INTO `grpbl` VALUES (-9223372036854775758,-9223372036854775791,'Root Task Group','Root Task Group',0,3,0,-9223372036854775800,1,1,1,1360947865590,1360947865590,NULL,0),(-9223372036854775757,-9223372036854775791,'Unlinked','Unlinked',0,0,0,-9223372036854775800,2,1,1,1360947865594,1360947865594,NULL,0),(-9223372036854775536,-9223372036854775727,'Root Node Group','Root Node Group',0,1,1,-9223372036854775740,1,1,1,1360947869778,1360947869778,NULL,0),(-9223372036854775535,-9223372036854775727,'Unlinked','Unlinked',0,0,0,-9223372036854775740,2,1,1,1360947869780,1360947869780,NULL,0),(-9223372036854775534,-9223372036854775727,'Discovered','Discovered',0,0,0,-9223372036854775740,4,1,1,1360947869781,1360947869781,NULL,0),(-9223372036854775530,-9223372036854775704,'Root Rule Group','Root Rule Group',0,0,0,-9223372036854775734,1,1,1,1360947869801,1360947869801,NULL,0),(-9223372036854775529,-9223372036854775704,'Unlinked','Unlinked',0,0,0,-9223372036854775734,2,1,1,1360947869802,1360947869802,NULL,0),(-9223372036854775526,-9223372036854775689,'Root Action Group','Root Action Group',0,2,0,-9223372036854775694,1,1,1,1360947869817,1360947869817,NULL,0),(-9223372036854775525,-9223372036854775689,'Unlinked','Unlinked',0,0,0,-9223372036854775694,2,1,1,1360947869818,1360947869818,NULL,0),(-9223372036854775522,-9223372036854775649,'Root Job Group','Root Job Group',0,0,0,-9223372036854775653,1,1,1,1360947869832,1360947869832,NULL,0),(-9223372036854775521,-9223372036854775649,'Unlinked','Unlinked',0,0,0,-9223372036854775653,2,1,1,1360947869833,1360947869833,NULL,0),(-9223372036854775518,-9223372036854775599,'Root Policy Test Group','Root Policy Test Group',0,0,0,-9223372036854775610,1,1,1,1360947869843,1360947869843,NULL,0),(-9223372036854775517,-9223372036854775599,'Unlinked','Unlinked',0,0,0,-9223372036854775610,2,1,1,1360947869844,1360947869844,NULL,0),(-9223372036854775514,-9223372036854775543,'Root Report Group','Root Report Group',0,0,0,-9223372036854775545,1,1,1,1360947869855,1360947869855,NULL,0),(-9223372036854775513,-9223372036854775543,'Unlinked','Unlinked',0,0,0,-9223372036854775545,2,1,1,1360947869856,1360947869856,NULL,0),(-9223372036854775106,-9223372036854775729,'Compact Element Versions','Removes content and attributes from element versions.',1,0,0,-9223372036854775800,0,1,1,1360947870315,1360947870315,NULL,0),(-9223372036854775105,-9223372036854775789,'Archive Log Messages','Archives log messages.',1,0,0,-9223372036854775800,0,1,1,1364799601068,1360947870328,NULL,0),(-9223372036854775103,-9223372036854775104,'Clear Unlinked Groups','Permanently deletes the content of the \n\'Unlinked\' group in every manager.',1,0,0,-9223372036854775800,0,1,1,1360947870341,1360947870341,NULL,0),(-9223372036854775099,-9223372036854775678,'Promote to Baseline','Makes a specified version the current baseline',1,0,0,-9223372036854775694,0,1,1,1360947870347,1360947870347,NULL,0),(-9223372036854775098,-9223372036854775687,'Outside Change Window','Marks a specified version as outside of the change window',1,0,0,-9223372036854775694,0,1,1,1360947870359,1360947870359,NULL,0),(-9223372036854775088,-9223372036854775705,'Smart Node Groups',NULL,1,4,4,-9223372036854775740,3,1,1,1360947870406,1360947870406,NULL,0),(-9223372036854775087,-9223372036854775705,'Tag Sets',NULL,1,0,0,-9223372036854775740,3,1,1,1360947870413,1360947870413,NULL,0),(-9223372036854775086,-9223372036854775705,'Saved Filters',NULL,1,0,0,-9223372036854775740,3,1,1,1360947870416,1360947870416,NULL,0),(-9223372036854775085,-9223372036854775705,'System Tag Sets',NULL,1,5,5,-9223372036854775740,3,1,1,1360947870418,1360947870418,NULL,0),(-9223372036854775084,-9223372036854775705,'Operational Tag Sets',NULL,1,1,1,-9223372036854775740,3,1,1,1360947870420,1360947870420,NULL,0),(-9223372036854774599,-9223372036854775705,'VMware vSwitch 3.5',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908641,1360947908641,NULL,0),(-9223372036854774598,-9223372036854775705,'Virtual Infrastructure',NULL,1,19,19,-9223372036854775740,3,1,1,1360947908643,1360947908643,NULL,0),(-9223372036854774597,-9223372036854775705,'Sun Directory Server',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908654,1360947908654,NULL,0),(-9223372036854774596,-9223372036854775705,'Directory Server',NULL,1,2,2,-9223372036854775740,3,1,1,1360947908656,1360947908656,NULL,0),(-9223372036854774595,-9223372036854775705,'VMware vSwitch 4.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908663,1360947908663,NULL,0),(-9223372036854774594,-9223372036854775705,'VMware ESXi 4.1',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908670,1360947908670,NULL,0),(-9223372036854774593,-9223372036854775705,'VMware Template vmx-04',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908677,1360947908677,NULL,0),(-9223372036854774592,-9223372036854775705,'Oracle Solaris 11',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908683,1360947908683,NULL,0),(-9223372036854774591,-9223372036854775705,'Operating System',NULL,1,25,25,-9223372036854775740,3,1,1,1360947908685,1360947908685,NULL,0),(-9223372036854774590,-9223372036854775705,'HP-UX 11',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908693,1360947908693,NULL,0),(-9223372036854774589,-9223372036854775705,'Red Hat Enterprise Linux Server 6',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908700,1360947908700,NULL,0),(-9223372036854774588,-9223372036854775705,'Microsoft Windows 2000',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908706,1360947908706,NULL,0),(-9223372036854774587,-9223372036854775705,'VMware vSwitch 5.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908715,1360947908715,NULL,0),(-9223372036854774586,-9223372036854775705,'Oracle 9i Enterprise Edition',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908722,1360947908722,NULL,0),(-9223372036854774585,-9223372036854775705,'Database Server',NULL,1,10,10,-9223372036854775740,3,1,1,1360947908724,1360947908724,NULL,0),(-9223372036854774584,-9223372036854775705,'SuSE Linux Enterprise Server 10',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908732,1360947908732,NULL,0),(-9223372036854774583,-9223372036854775705,'VMware dvSwitch 4.1',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908738,1360947908738,NULL,0),(-9223372036854774582,-9223372036854775705,'Sun Solaris 9',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908744,1360947908744,NULL,0),(-9223372036854774581,-9223372036854775705,'Uncategorized Errors',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908751,1360947908751,NULL,0),(-9223372036854774580,-9223372036854775705,'Health',NULL,1,6,6,-9223372036854775740,3,1,1,1360947908753,1360947908753,NULL,0),(-9223372036854774579,-9223372036854775705,'Microsoft Windows 2003',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908762,1360947908762,NULL,0),(-9223372036854774578,-9223372036854775705,'IBM AIX 5.3',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908768,1360947908768,NULL,0),(-9223372036854774577,-9223372036854775705,'Microsoft SQL Server 2008 R2',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908774,1360947908774,NULL,0),(-9223372036854774576,-9223372036854775705,'IBM DB2/NT SQL09050',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908780,1360947908780,NULL,0),(-9223372036854774575,-9223372036854775705,'Microsoft Windows 7',NULL,1,1,0,-9223372036854775740,3,1,1,1360947908785,1360947908785,NULL,0),(-9223372036854774574,-9223372036854775705,'VMware vSwitch 4.1',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908794,1360947908794,NULL,0),(-9223372036854774573,-9223372036854775705,'Sun Solaris 8',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908803,1360947908803,NULL,0),(-9223372036854774572,-9223372036854775705,'VMware VM vmx-04',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908809,1360947908809,NULL,0),(-9223372036854774571,-9223372036854775705,'Microsoft SQL Server 2000',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908815,1360947908815,NULL,0),(-9223372036854774570,-9223372036854775705,'Microsoft SQL Server 2008',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908821,1360947908821,NULL,0),(-9223372036854774569,-9223372036854775705,'SuSE Linux Enterprise Server 9',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908827,1360947908827,NULL,0),(-9223372036854774568,-9223372036854775705,'SuSE Linux Enterprise Server 11',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908834,1360947908834,NULL,0),(-9223372036854774567,-9223372036854775705,'VMware ESXi 4.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908842,1360947908842,NULL,0),(-9223372036854774566,-9223372036854775705,'Red Hat Enterprise Linux Server 5',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908850,1360947908850,NULL,0),(-9223372036854774565,-9223372036854775705,'VMware ESX 4.1',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908858,1360947908858,NULL,0),(-9223372036854774564,-9223372036854775705,'VMware dvSwitch 5.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908865,1360947908865,NULL,0),(-9223372036854774563,-9223372036854775705,'IBM AIX 5.2',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908873,1360947908873,NULL,0),(-9223372036854774562,-9223372036854775705,'Microsoft Windows XP',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908880,1360947908880,NULL,0),(-9223372036854774561,-9223372036854775705,'Microsoft SQL Server 2012',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908886,1360947908886,NULL,0),(-9223372036854774560,-9223372036854775705,'Rule Run Errors',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908894,1360947908894,NULL,0),(-9223372036854774559,-9223372036854775705,'VMware VM vmx-07',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908901,1360947908901,NULL,0),(-9223372036854774558,-9223372036854775705,'Red Hat Enterprise Linux Server 4',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908908,1360947908908,NULL,0),(-9223372036854774557,-9223372036854775705,'VMware ESX 4.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908915,1360947908915,NULL,0),(-9223372036854774556,-9223372036854775705,'Out of Sync Errors',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908923,1360947908923,NULL,0),(-9223372036854774555,-9223372036854775705,'Microsoft Windows Server 2008 R2',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908932,1360947908932,NULL,0),(-9223372036854774554,-9223372036854775705,'VMware ESX 3.5',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908938,1360947908938,NULL,0),(-9223372036854774553,-9223372036854775705,'Incompatible Agent Errors',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908945,1360947908945,NULL,0),(-9223372036854774552,-9223372036854775705,'Oracle 10g Enterprise Edition',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908952,1360947908952,NULL,0),(-9223372036854774551,-9223372036854775705,'VMware Template vmx-07',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908959,1360947908959,NULL,0),(-9223372036854774550,-9223372036854775705,'Connection Errors',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908967,1360947908967,NULL,0),(-9223372036854774549,-9223372036854775705,'Monitoring Enabled',NULL,1,1,0,-9223372036854775740,3,1,1,1360947908973,1360947908973,NULL,0),(-9223372036854774548,-9223372036854775705,'Status',NULL,1,2,2,-9223372036854775740,3,1,1,1360947908975,1360947908975,NULL,0),(-9223372036854774547,-9223372036854775705,'VMware ESXi 5.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908982,1360947908982,NULL,0),(-9223372036854774546,-9223372036854775705,'Microsoft Windows Server 2008',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908988,1360947908988,NULL,0),(-9223372036854774545,-9223372036854775705,'IBM AIX 6.1',NULL,1,0,0,-9223372036854775740,3,1,1,1360947908994,1360947908994,NULL,0),(-9223372036854774544,-9223372036854775705,'Monitoring Disabled',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909001,1360947909001,NULL,0),(-9223372036854774543,-9223372036854775705,'Sun Solaris 10',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909007,1360947909007,NULL,0),(-9223372036854774542,-9223372036854775705,'VMware dvSwitch 4.0',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909013,1360947909013,NULL,0),(-9223372036854774541,-9223372036854775705,'VMware VM vmx-08',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909019,1360947909019,NULL,0),(-9223372036854774540,-9223372036854775705,'Microsoft Active Directory',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909025,1360947909025,NULL,0),(-9223372036854774539,-9223372036854775705,'Task Timeout Errors',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909031,1360947909031,NULL,0),(-9223372036854774538,-9223372036854775705,'Microsoft SQL Server 2005',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909038,1360947909038,NULL,0),(-9223372036854774537,-9223372036854775705,'Microsoft Windows Vista',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909043,1360947909043,NULL,0),(-9223372036854774536,-9223372036854775705,'Oracle 11g Enterprise Edition',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909050,1360947909050,NULL,0),(-9223372036854774535,-9223372036854775705,'VMware Template vmx-08',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909057,1360947909057,NULL,0),(-9223372036854774534,-9223372036854775705,'IBM DB2/NT SQL08020',NULL,1,0,0,-9223372036854775740,3,1,1,1360947909062,1360947909062,NULL,0),(-9223372036854774467,-9223372036854775725,'PDXBGlasserD.tripwire.com','Microsoft Windows 7 6.1, amd64',2,0,0,-9223372036854775740,0,1,1,1366221186940,1360947929646,'USR.49b5bfd0-f36a-487c-851f-ac44274c2388',0),(-9223372036853775808,-9223372036854775705,'Apple Mac OS X 10.8',NULL,1,0,0,-9223372036854775740,3,1,1,1361808930762,1361808930762,NULL,0),(-9223372036853775807,-9223372036854775705,'Apple Mac OS X 10.7',NULL,1,0,0,-9223372036854775740,3,1,1,1361808930991,1361808930991,NULL,0),(-9223372036853775806,-9223372036854775705,'Microsoft Windows Server 2012',NULL,1,0,0,-9223372036854775740,3,1,1,1361808931034,1361808931034,NULL,0),(-9223372036853775805,-9223372036854775705,'Microsoft Windows 8',NULL,1,0,0,-9223372036854775740,3,1,1,1361808931042,1361808931042,NULL,0);
/*!40000 ALTER TABLE `grpbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grpbluniquenames`
--

DROP TABLE IF EXISTS `grpbluniquenames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grpbluniquenames` (
  `nameMD5` varbinary(16) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY (`nameMD5`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grpbluniquenames`
--

LOCK TABLES `grpbluniquenames` WRITE;
/*!40000 ALTER TABLE `grpbluniquenames` DISABLE KEYS */;
INSERT INTO `grpbluniquenames` VALUES ('\rNgè─·₧1┘╕╖B┼é;',-9223372036854774598),('∙-ôfP/¿ⁿ·ìG┴',-9223372036854775758),('à╔ú╔°÷:R]₧αA',-9223372036854774580),('«êΣ√oτ▐╪Z{]',-9223372036854774580),('Q&┼Ü╒ß.╪ΘLw?ÜÜü',-9223372036854774596),('╒kLAò│╘▌»d╩⌐.;═',-9223372036854775085),('hûó¥Lîû°π╒01╚├',-9223372036854774585),('╥─¼ⁿÆ╝iìÑ▀╬α╧¥',-9223372036854774548),('%╥¬8╒=[Ä4▓φ ç╦',-9223372036854775526),('*¢ô«I╪π*▐▄o,╣¥',-9223372036854774598),('4╜~¿█╒r½àq┐7«GΣ≡',-9223372036854774585),('6ΓuÅ╖╫Å╓MRTè⌠M',-9223372036854774598),('9)ê⌠²Jⁿ╫╙ûÑ±D²²',-9223372036854775085),(';v)ì¼Å┬6]┌JG┘ó',-9223372036854774598),('E5ò?áaW\0q├╟Ü',-9223372036854774591),('FgM7\'{╛╫\rδ£Å╠L|╜',-9223372036854774591),('K╓α╘²í┬FtA ⌐íz',-9223372036854774591),('L▓φ╙▐ºï╚%╕v┤ùkZ',-9223372036854774585),('Nq╬8s£xC╙∩Ä┌ï|ï^',-9223372036854774591),('O─⌡│N¬┴1Häâ░±c',-9223372036854774591),('Pv4Ö╡]╕*ⁿUZÜ$',-9223372036854774591),('U▒;0]εÖe7└√g└Éé',-9223372036854774598),('`Vi╩╣b┐öMÖ╬ë╧₧X┘',-9223372036854775084),('d╙T▄Xy╧Wτ┤∩gnu╜',-9223372036854775085),('eó}\Z═ªA■╤÷¿a7',-9223372036854774591),('h╗%ê╔üCßìZ■ÿwOî',-9223372036854774591),('k╬∩@HJ\0▄╒«╜üg1$',-9223372036854774598),('l┴>!≡┼µK±n0',-9223372036854774591),('n9Æ┼░≈&┼w«╟U^╟\Z½',-9223372036854774591),('nÄδ┬K¼BGê9T⌡}≈',-9223372036854774580),('nµ.ÆÇO\r╓$LæN÷√D',-9223372036854774585),('sHVαÆ:ë∙d,\"ÿ½π',-9223372036854774591),('sεLHα1┐L½@üµ',-9223372036854774591),('t▄α\rJcçδw⌡║¡»8É',-9223372036854775088),('v¡)[┤s½?ó≤R═╜:',-9223372036854774598),('v┴+αª¢\\rφφ╡<ù▓',-9223372036854775758),('w┼ ╓ecP*D║┘}]╚╒',-9223372036854774591),('y▄U╬╨╣=vàìM,≤t▒N',-9223372036854775088),('z├└EÄ1R^ß`.\'▄½ñL',-9223372036854774591),('zδu╪/]╧äd·≡Cr╩─ñ',-9223372036854774598),('{ƒá▄├s2kbzWæÖ╦',-9223372036854774585),('}]\0M⌠▄_£ÅGK┘á╬█',-9223372036854775088),('éNâE▒αZ╩┼Lº║ÿ⌐Θ╖',-9223372036854774548),('â╘1≥\n╞byb;~╥îyèV',-9223372036854774580),('à═╜╠░|4⌡+Z▀╖╤∙n',-9223372036854774598),('è0b┬╨tyßδFm\nàCΣ',-9223372036854774591),('ï\nG╬√oa≤ßσ<xÄ5∞',-9223372036854775085),('á¡â6ë╧Γ²[⌡/[é÷',-9223372036854774598),('í¡»x═ \nñ/╖┌-{C6',-9223372036854774591),('úwó╬╣u7@├₧▓N6K╟',-9223372036854774591),('¬_`·ñaS/2ô═,î¡ ╬',-9223372036854774591),('¬åτ¢fOh¢ì├U£±└',-9223372036854774591),('¡╛à/K)∩79├Q╡₧O╚',-9223372036854774585),('«)[ΘLÖÇ^δçg]╙ê╗ë',-9223372036854774585),('╜{┘╙ªçïx(¬4Σ6Ω├',-9223372036854774591),('┬yá╬~K\"╞\0-%vSε»',-9223372036854774580),('┼fÄ╙6Vö}DÆ%q╦T∙',-9223372036854774598),('╞ÜaU┘ΦⁿLP`\0-ï',-9223372036854774585),('╞áΓτMèƒ^ Σ┘J╪²',-9223372036854775536),('╚░ûÖ°£EH\nJñ║9',-9223372036854774598),('╦P▐ü║u≈╢rP╒«|≤',-9223372036854774596),('╥YÖ½»ß╜In¿áL',-9223372036854774585),('╘∙M9!┐M\r─▐qöA0	ú',-9223372036854774591),('╪îö░á╬Ñ╜FÇ╗╡à<7',-9223372036854774598),('┌2Θ▐/±┘u\0■╪▒-',-9223372036854774598),('▐@╤~v½ÿ╛É{╫╚┐,',-9223372036854775526),('ßw╬û <Ω½±çì#6<X',-9223372036854774598),('πΦà`⌠q╠%ÑM\ZÉh╠',-9223372036854774598),('σewy╟╟GIß:r╨â',-9223372036854774591),('σí√╡∞&KAäW╤5y┐Z',-9223372036854775088),('µ&«ë╬½j{N⌡√τxσ╬',-9223372036854774591),('τ;Σ╚α½^°┬╛wT│,½╬',-9223372036854774580),('∞S¿─≡{«╒╪éPr╚ùÖ╛',-9223372036854775085),('≡(╦R╙LçΓc▄ò╗▄,·▄',-9223372036854775758),('≥ë┬kΘ~╒ÿv╪╠æÆ╬Ç',-9223372036854774598),('≥£!@├\\j╗±m╨°&',-9223372036854774598),('÷▓≡╜ÜÖ	gó║ë┬?Æª',-9223372036854774585),('∙{╥±LtφS│m∩│',-9223372036854774598),('·	√édï∙í»vÜⁿ8,L',-9223372036854774591),('  ╟░ⁿüù3 ╗ì╥ε',-9223372036854774591);
/*!40000 ALTER TABLE `grpbluniquenames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_ag_nodeerror`
--

DROP TABLE IF EXISTS `hp_ag_nodeerror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_ag_nodeerror` (
  `f_nodeOid` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_ag_nodeerror`
--

LOCK TABLES `hp_ag_nodeerror` WRITE;
/*!40000 ALTER TABLE `hp_ag_nodeerror` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_ag_nodeerror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_ag_policyscorechange`
--

DROP TABLE IF EXISTS `hp_ag_policyscorechange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_ag_policyscorechange` (
  `f_policyOid` bigint(20) NOT NULL,
  `f_nodeOid` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_ag_policyscorechange`
--

LOCK TABLES `hp_ag_policyscorechange` WRITE;
/*!40000 ALTER TABLE `hp_ag_policyscorechange` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_ag_policyscorechange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_ag_vcnodechange`
--

DROP TABLE IF EXISTS `hp_ag_vcnodechange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_ag_vcnodechange` (
  `f_nodeOid` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_ag_vcnodechange`
--

LOCK TABLES `hp_ag_vcnodechange` WRITE;
/*!40000 ALTER TABLE `hp_ag_vcnodechange` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_ag_vcnodechange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_ag_waiverexp`
--

DROP TABLE IF EXISTS `hp_ag_waiverexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_ag_waiverexp` (
  `f_policyOid` bigint(20) NOT NULL,
  `f_nodeOid` bigint(20) NOT NULL,
  `f_grantedBy` bigint(20) DEFAULT NULL,
  `f_responsible` bigint(20) DEFAULT NULL,
  `f_duration` bigint(20) DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_ag_waiverexp`
--

LOCK TABLES `hp_ag_waiverexp` WRITE;
/*!40000 ALTER TABLE `hp_ag_waiverexp` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_ag_waiverexp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_alertgenerator`
--

DROP TABLE IF EXISTS `hp_alertgenerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_alertgenerator` (
  `f_alertWidget` bigint(20) NOT NULL,
  `f_ordinal` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `HP_AlertGenerator_0_ASC` (`f_alertWidget`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_alertgenerator`
--

LOCK TABLES `hp_alertgenerator` WRITE;
/*!40000 ALTER TABLE `hp_alertgenerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_alertgenerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_alertwidget`
--

DROP TABLE IF EXISTS `hp_alertwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_alertwidget` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_alertwidget`
--

LOCK TABLES `hp_alertwidget` WRITE;
/*!40000 ALTER TABLE `hp_alertwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_alertwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_embeddedreportwidget`
--

DROP TABLE IF EXISTS `hp_embeddedreportwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_embeddedreportwidget` (
  `f_reportOid` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_embeddedreportwidget`
--

LOCK TABLES `hp_embeddedreportwidget` WRITE;
/*!40000 ALTER TABLE `hp_embeddedreportwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_embeddedreportwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_failingtestwidget`
--

DROP TABLE IF EXISTS `hp_failingtestwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_failingtestwidget` (
  `f_policyId` bigint(20) NOT NULL,
  `f_nodeId` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_failingtestwidget`
--

LOCK TABLES `hp_failingtestwidget` WRITE;
/*!40000 ALTER TABLE `hp_failingtestwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_failingtestwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_homepage`
--

DROP TABLE IF EXISTS `hp_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_homepage` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `trackingId` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `heightN` smallint(6) NOT NULL DEFAULT '200',
  `heightS` smallint(6) NOT NULL DEFAULT '200',
  `collapsedN` tinyint(1) NOT NULL DEFAULT '1',
  `collapsedS` tinyint(1) NOT NULL DEFAULT '1',
  `columnsN` smallint(6) NOT NULL DEFAULT '2',
  `columnsC` smallint(6) NOT NULL DEFAULT '2',
  `columnsS` smallint(6) NOT NULL DEFAULT '2',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_homepage`
--

LOCK TABLES `hp_homepage` WRITE;
/*!40000 ALTER TABLE `hp_homepage` DISABLE KEYS */;
INSERT INTO `hp_homepage` VALUES (-9223372036854775078,-9223372036854775550,'Customer Center Home Page','Customer Center Home Page',NULL,0,0,0,0,0,4,0);
/*!40000 ALTER TABLE `hp_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_homepagewidget`
--

DROP TABLE IF EXISTS `hp_homepagewidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_homepagewidget` (
  `f_page` bigint(20) NOT NULL,
  `f_ordinal` int(11) NOT NULL,
  `f_index` int(11) NOT NULL,
  `f_collapsed` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`oid`),
  KEY `HP_HomePageWidget_0_ASC` (`f_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_homepagewidget`
--

LOCK TABLES `hp_homepagewidget` WRITE;
/*!40000 ALTER TABLE `hp_homepagewidget` DISABLE KEYS */;
INSERT INTO `hp_homepagewidget` VALUES (-9223372036854775078,0,-1,0,-9223372036854775077,-9223372036854775565,'Announcements',NULL),(-9223372036854775078,1,-1,0,-9223372036854775076,-9223372036854775565,'Recent Blog Posts',NULL),(-9223372036854775078,2,-1,0,-9223372036854775075,-9223372036854775565,'Find Us',NULL),(-9223372036854775078,3,-65533,0,-9223372036854775074,-9223372036854775565,'Visit Us',NULL);
/*!40000 ALTER TABLE `hp_homepagewidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_htmlcontentwidget`
--

DROP TABLE IF EXISTS `hp_htmlcontentwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_htmlcontentwidget` (
  `f_contentUrl` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `f_htmlContentType` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_htmlcontentwidget`
--

LOCK TABLES `hp_htmlcontentwidget` WRITE;
/*!40000 ALTER TABLE `hp_htmlcontentwidget` DISABLE KEYS */;
INSERT INTO `hp_htmlcontentwidget` VALUES ('https://www.tripwire.com/_widget/enterprise.cfm?type=3',104,-9223372036854775077),('https://www.tripwire.com/_widget/enterprise.cfm?type=2',105,-9223372036854775076),('https://www.tripwire.com/_widget/enterprise.cfm',106,-9223372036854775075),('/plugins/console/visitUs.jsp',107,-9223372036854775074);
/*!40000 ALTER TABLE `hp_htmlcontentwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_procurve`
--

DROP TABLE IF EXISTS `hp_procurve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_procurve` (
  `f_vlan` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_username` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_password` longblob,
  `f_managerUsername` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_managerPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_procurve`
--

LOCK TABLES `hp_procurve` WRITE;
/*!40000 ALTER TABLE `hp_procurve` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_procurve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_procurve_config`
--

DROP TABLE IF EXISTS `hp_procurve_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_procurve_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_procurve_config`
--

LOCK TABLES `hp_procurve_config` WRITE;
/*!40000 ALTER TABLE `hp_procurve_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_procurve_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_procurve_config_restore`
--

DROP TABLE IF EXISTS `hp_procurve_config_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_procurve_config_restore` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_procurve_config_restore`
--

LOCK TABLES `hp_procurve_config_restore` WRITE;
/*!40000 ALTER TABLE `hp_procurve_config_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_procurve_config_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_remworkorderwidget`
--

DROP TABLE IF EXISTS `hp_remworkorderwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_remworkorderwidget` (
  `f_incCreated` smallint(6) NOT NULL,
  `f_incApproved` smallint(6) NOT NULL,
  `f_incComplete` smallint(6) NOT NULL,
  `f_incClosed` smallint(6) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_remworkorderwidget`
--

LOCK TABLES `hp_remworkorderwidget` WRITE;
/*!40000 ALTER TABLE `hp_remworkorderwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_remworkorderwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_reportlistwidget`
--

DROP TABLE IF EXISTS `hp_reportlistwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_reportlistwidget` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_reportlistwidget`
--

LOCK TABLES `hp_reportlistwidget` WRITE;
/*!40000 ALTER TABLE `hp_reportlistwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_reportlistwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_scapwidget`
--

DROP TABLE IF EXISTS `hp_scapwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_scapwidget` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_scapwidget`
--

LOCK TABLES `hp_scapwidget` WRITE;
/*!40000 ALTER TABLE `hp_scapwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_scapwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_shortcutwidget`
--

DROP TABLE IF EXISTS `hp_shortcutwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_shortcutwidget` (
  `f_dummy` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_shortcutwidget`
--

LOCK TABLES `hp_shortcutwidget` WRITE;
/*!40000 ALTER TABLE `hp_shortcutwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_shortcutwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_tlceventwidget`
--

DROP TABLE IF EXISTS `hp_tlceventwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_tlceventwidget` (
  `f_eventPeriod` int(11) NOT NULL,
  `f_eventPriority` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `f_eventDatabaseId` int(11) NOT NULL,
  `f_eventState` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `f_eventType` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_tlceventwidget`
--

LOCK TABLES `hp_tlceventwidget` WRITE;
/*!40000 ALTER TABLE `hp_tlceventwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_tlceventwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_userhomepages`
--

DROP TABLE IF EXISTS `hp_userhomepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_userhomepages` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `HP_UserHomePages_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_userhomepages`
--

LOCK TABLES `hp_userhomepages` WRITE;
/*!40000 ALTER TABLE `hp_userhomepages` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_userhomepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_widgetreports`
--

DROP TABLE IF EXISTS `hp_widgetreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_widgetreports` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `HP_WidgetReports_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_widgetreports`
--

LOCK TABLES `hp_widgetreports` WRITE;
/*!40000 ALTER TABLE `hp_widgetreports` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_widgetreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_workflowwgtcreators`
--

DROP TABLE IF EXISTS `hp_workflowwgtcreators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_workflowwgtcreators` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `HP_WorkflowWgtCreators_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_workflowwgtcreators`
--

LOCK TABLES `hp_workflowwgtcreators` WRITE;
/*!40000 ALTER TABLE `hp_workflowwgtcreators` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_workflowwgtcreators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_workflowwgtownerg`
--

DROP TABLE IF EXISTS `hp_workflowwgtownerg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_workflowwgtownerg` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `HP_WorkflowWgtOwnerG_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_workflowwgtownerg`
--

LOCK TABLES `hp_workflowwgtownerg` WRITE;
/*!40000 ALTER TABLE `hp_workflowwgtownerg` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_workflowwgtownerg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_workflowwgtowners`
--

DROP TABLE IF EXISTS `hp_workflowwgtowners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_workflowwgtowners` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `HP_WorkflowWgtOwners_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_workflowwgtowners`
--

LOCK TABLES `hp_workflowwgtowners` WRITE;
/*!40000 ALTER TABLE `hp_workflowwgtowners` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_workflowwgtowners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_xlgl`
--

DROP TABLE IF EXISTS `hp_xlgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_xlgl` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_sshKeyFile` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_xlgl`
--

LOCK TABLES `hp_xlgl` WRITE;
/*!40000 ALTER TABLE `hp_xlgl` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_xlgl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hp_xlgl_config`
--

DROP TABLE IF EXISTS `hp_xlgl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hp_xlgl_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hp_xlgl_config`
--

LOCK TABLES `hp_xlgl_config` WRITE;
/*!40000 ALTER TABLE `hp_xlgl_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `hp_xlgl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i5ifsr`
--

DROP TABLE IF EXISTS `i5ifsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i5ifsr` (
  `traverse` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i5ifsr`
--

LOCK TABLES `i5ifsr` WRITE;
/*!40000 ALTER TABLE `i5ifsr` DISABLE KEYS */;
/*!40000 ALTER TABLE `i5ifsr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i5ossval`
--

DROP TABLE IF EXISTS `i5ossval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i5ossval` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i5ossval`
--

LOCK TABLES `i5ossval` WRITE;
/*!40000 ALTER TABLE `i5ossval` DISABLE KEYS */;
/*!40000 ALTER TABLE `i5ossval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idgen`
--

DROP TABLE IF EXISTS `idgen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idgen` (
  `last_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idgen`
--

LOCK TABLES `idgen` WRITE;
/*!40000 ALTER TABLE `idgen` DISABLE KEYS */;
INSERT INTO `idgen` VALUES (-9223372036850275808);
/*!40000 ALTER TABLE `idgen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ios_access_lists_rule`
--

DROP TABLE IF EXISTS `ios_access_lists_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ios_access_lists_rule` (
  `f_type` bigint(20) NOT NULL,
  `f_accessListName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ios_access_lists_rule`
--

LOCK TABLES `ios_access_lists_rule` WRITE;
/*!40000 ALTER TABLE `ios_access_lists_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ios_access_lists_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jnelems`
--

DROP TABLE IF EXISTS `jnelems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jnelems` (
  `jobId` bigint(20) NOT NULL,
  `nodeId` bigint(20) NOT NULL,
  `ename` varchar(1536) COLLATE utf8_bin NOT NULL,
  `md5` varbinary(16) NOT NULL,
  `md5_uc` varbinary(16) NOT NULL,
  KEY `jnElems_3_ASC` (`md5`),
  KEY `jnElems_4_ASC` (`md5_uc`),
  KEY `jnElems_5_ASC` (`jobId`,`nodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jnelems`
--

LOCK TABLES `jnelems` WRITE;
/*!40000 ALTER TABLE `jnelems` DISABLE KEYS */;
/*!40000 ALTER TABLE `jnelems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobmatch`
--

DROP TABLE IF EXISTS `jobmatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobmatch` (
  `strategy` int(11) NOT NULL,
  `fileName` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobmatch`
--

LOCK TABLES `jobmatch` WRITE;
/*!40000 ALTER TABLE `jobmatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobmatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobnodelnks`
--

DROP TABLE IF EXISTS `jobnodelnks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobnodelnks` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  `pct` decimal(8,5) DEFAULT NULL,
  `cdate` datetime DEFAULT NULL,
  `init` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pId`,`cId`),
  KEY `JobNodeLnks_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobnodelnks`
--

LOCK TABLES `jobnodelnks` WRITE;
/*!40000 ALTER TABLE `jobnodelnks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobnodelnks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobref`
--

DROP TABLE IF EXISTS `jobref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobref` (
  `refNode` bigint(20) DEFAULT NULL,
  `ruleGpbl` bigint(20) DEFAULT NULL,
  `anyBaseline` tinyint(1) NOT NULL DEFAULT '0',
  `matchHash` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobref`
--

LOCK TABLES `jobref` WRITE;
/*!40000 ALTER TABLE `jobref` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobrulelnks`
--

DROP TABLE IF EXISTS `jobrulelnks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobrulelnks` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `JobRuleLnks_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobrulelnks`
--

LOCK TABLES `jobrulelnks` WRITE;
/*!40000 ALTER TABLE `jobrulelnks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobrulelnks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `jobId` varchar(32) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `completion` datetime DEFAULT NULL,
  `expiration` datetime DEFAULT NULL,
  `fails` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `jobId` (`jobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsacls`
--

DROP TABLE IF EXISTS `jobsacls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsacls` (
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `permId` bigint(20) NOT NULL,
  PRIMARY KEY (`objId`,`prinId`,`permId`),
  KEY `jobsACLS_1_ASC` (`prinId`),
  KEY `jobsACLS_2_ASC` (`permId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsacls`
--

LOCK TABLES `jobsacls` WRITE;
/*!40000 ALTER TABLE `jobsacls` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsacls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobslnk`
--

DROP TABLE IF EXISTS `jobslnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobslnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  PRIMARY KEY (`pop`,`kid`),
  KEY `jobsLnk_1_ASC` (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobslnk`
--

LOCK TABLES `jobslnk` WRITE;
/*!40000 ALTER TABLE `jobslnk` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobslnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertonjobsLnk
  AFTER INSERT ON jobsLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteonjobsLnk
  AFTER DELETE ON jobsLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jobspath`
--

DROP TABLE IF EXISTS `jobspath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobspath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `jobsPath_1_ASC` (`did`),
  KEY `jobsPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobspath`
--

LOCK TABLES `jobspath` WRITE;
/*!40000 ALTER TABLE `jobspath` DISABLE KEYS */;
INSERT INTO `jobspath` VALUES (-9223372036854775522,-9223372036854775522,0);
/*!40000 ALTER TABLE `jobspath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juniper_m`
--

DROP TABLE IF EXISTS `juniper_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juniper_m` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_usePASV` tinyint(1) NOT NULL DEFAULT '0',
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_fileName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_timeout` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juniper_m`
--

LOCK TABLES `juniper_m` WRITE;
/*!40000 ALTER TABLE `juniper_m` DISABLE KEYS */;
/*!40000 ALTER TABLE `juniper_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juniper_m_config`
--

DROP TABLE IF EXISTS `juniper_m_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juniper_m_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juniper_m_config`
--

LOCK TABLES `juniper_m_config` WRITE;
/*!40000 ALTER TABLE `juniper_m_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `juniper_m_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juniper_m_config_restore`
--

DROP TABLE IF EXISTS `juniper_m_config_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juniper_m_config_restore` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juniper_m_config_restore`
--

LOCK TABLES `juniper_m_config_restore` WRITE;
/*!40000 ALTER TABLE `juniper_m_config_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `juniper_m_config_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keymgr`
--

DROP TABLE IF EXISTS `keymgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keymgr` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keymgr`
--

LOCK TABLES `keymgr` WRITE;
/*!40000 ALTER TABLE `keymgr` DISABLE KEYS */;
INSERT INTO `keymgr` VALUES (-9223372036854774945,'ACL'),(-9223372036854774952,'Access'),(-9223372036854774932,'Archive'),(-9223372036854774907,'Auditing Mode'),(-9223372036854774902,'Authorities For Users'),(-9223372036854774900,'Authorization List'),(-9223372036854774949,'Change'),(-9223372036854774895,'Changed By Program'),(-9223372036854774927,'Compressed'),(-9223372036854774933,'Create'),(-9223372036854774940,'DACL'),(-9223372036854774941,'Data Type'),(-9223372036854774938,'Effective Rights'),(-9223372036854774656,'Exists'),(-9223372036854774950,'Group'),(-9223372036854774944,'Growing'),(-9223372036854774929,'Hidden'),(-9223372036854774910,'IFS Created Objects Are Scanned'),(-9223372036854774904,'IFS Created Objects Auditing Mode'),(-9223372036854774899,'IFS Journal Start Date'),(-9223372036854774909,'IFS Scan Status'),(-9223372036854774906,'IFS Set Effective GID'),(-9223372036854774903,'IFS Set Effective UID'),(-9223372036854774911,'Is Journaled'),(-9223372036854774875,'Job Date'),(-9223372036854774866,'Job End Severity'),(-9223372036854774876,'Job Hold On Queue'),(-9223372036854774871,'Job Library List'),(-9223372036854774864,'Job Message Logging Level'),(-9223372036854774863,'Job Message Logging Severity'),(-9223372036854774869,'Job Message Queue Full Action'),(-9223372036854774870,'Job Message Queue Maximum'),(-9223372036854774868,'Job Output Queue'),(-9223372036854774867,'Job Output Queue Priority'),(-9223372036854774857,'Job Printer Device'),(-9223372036854774877,'Job Priority'),(-9223372036854774878,'Job Queue'),(-9223372036854774865,'Job Syntax Check Severity'),(-9223372036854774872,'Job User'),(-9223372036854774846,'Journal Access Path Count'),(-9223372036854774856,'Journal Delete Unneeded Receivers'),(-9223372036854774850,'Journal Delivery Mode'),(-9223372036854774843,'Journal File Count'),(-9223372036854774848,'Journal Include Job Name'),(-9223372036854774842,'Journal Include Logical Unit of Work'),(-9223372036854774851,'Journal Include Program Library Name'),(-9223372036854774854,'Journal Include Program Name'),(-9223372036854774840,'Journal Include Remote Address'),(-9223372036854774852,'Journal Include System Sequence Number'),(-9223372036854774839,'Journal Include Thread Identifier'),(-9223372036854774841,'Journal Include Transaction Identifier'),(-9223372036854774853,'Journal Include User Profile'),(-9223372036854774858,'Journal Message Queue'),(-9223372036854774859,'Journal Minimize Data Areas'),(-9223372036854774860,'Journal Minimize Data For Files'),(-9223372036854774844,'Journal Object Count'),(-9223372036854774861,'Journal Receiver Size Maximum'),(-9223372036854774862,'Journal Remove Fixed-Length Data'),(-9223372036854774847,'Journal Remove System Data'),(-9223372036854774849,'Journal State'),(-9223372036854774855,'Journal System-Managed Receivers'),(-9223372036854774920,'Last Execute Event'),(-9223372036854774653,'Last Other Event'),(-9223372036854774919,'Last Read Event'),(-9223372036854774905,'Last Used Date'),(-9223372036854774918,'Last Write Event'),(-9223372036851775804,'LoginPreferences'),(-9223372036854775756,'MD5'),(-9223372036854774889,'Member Allow Delete'),(-9223372036854774894,'Member Allow Read'),(-9223372036854774888,'Member Allow Update'),(-9223372036854774887,'Member Allow Write'),(-9223372036854774892,'Member Deleted Record Count'),(-9223372036854774890,'Member Expiration'),(-9223372036854774891,'Member Record Count'),(-9223372036854774893,'Member Source Change Or Table Refresh'),(-9223372036854774951,'Modify'),(-9223372036854774908,'Name Of Journal'),(-9223372036854774896,'Object Restored'),(-9223372036854774901,'Object Saved'),(-9223372036854774931,'Offline'),(-9223372036854774897,'Omit Open And Close Journal Entries'),(-9223372036854774936,'Owner'),(-9223372036854774948,'Package Data'),(-9223372036854774947,'Permissions'),(-9223372036854774926,'Read-Only'),(-9223372036854774654,'Return Code'),(-9223372036854774939,'SACL'),(-9223372036854775755,'SHA-1'),(-9223372036854775754,'SHA-256'),(-9223372036854775753,'SHA-512'),(-9223372036854774898,'Saves Journal Before Images'),(-9223372036854774953,'Size'),(-9223372036854774925,'Stream Count'),(-9223372036854774923,'Stream MD5'),(-9223372036854774924,'Stream SHA-1'),(-9223372036854774922,'Stream SHA-256'),(-9223372036854774921,'Stream SHA-512'),(-9223372036854774845,'Subsystem Maximum Active Jobs'),(-9223372036854774837,'Subsystem Storage Pool Information'),(-9223372036854774928,'System'),(-9223372036854775807,'SystemPreferences'),(-9223372036854774930,'Temp'),(-9223372036854774655,'Type'),(-9223372036854774946,'User'),(-9223372036854774885,'User Action Auditing'),(-9223372036854774880,'User Capabilities Limited'),(-9223372036854774881,'User Device Sessions Limited'),(-9223372036854774879,'User Group Authority'),(-9223372036854774836,'User Group Profile'),(-9223372036854774874,'User Highest Scheduling Priority'),(-9223372036854774886,'User Invalid Sign-on Attempts'),(-9223372036854774882,'User Maximum Storage'),(-9223372036854774873,'User Object Auditing Mode'),(-9223372036854774838,'User Password Changed'),(-9223372036854774884,'User Profile Enabled'),(-9223372036854774883,'User Special Authorities'),(-9223372036854774915,'Value'),(-9223372036854774937,'Write'),(-9223372036854775056,'action'),(-9223372036854775055,'actionGroup'),(-9223372036854774795,'dirServerPrefs'),(-9223372036854775060,'element'),(-9223372036854775059,'elementVersion'),(-9223372036854775078,'homepage.cchp.oid'),(-9223372036854775053,'job'),(-9223372036854775653,'jobs'),(-9223372036854775048,'logMessage'),(-9223372036854775061,'node'),(-9223372036854775062,'nodeGroup'),(-9223372036854775740,'nodes'),(-9223372036854775610,'policy'),(-9223372036854775049,'policyTestGroup'),(-9223372036854775052,'policytest'),(-9223372036854775051,'policytestresult'),(-9223372036854775050,'policywaiver'),(-9223372036854775046,'report'),(-9223372036854775545,'reports'),(-9223372036854775694,'responses'),(-9223372036854775098,'rsp.outsidemaintwin'),(-9223372036854775099,'rsp.update'),(-9223372036854775057,'ruleGroup'),(-9223372036854775058,'ruleSearch'),(-9223372036854775734,'rules'),(-9223372036854775054,'task'),(-9223372036854775800,'tasks'),(-9223372036854775047,'tlcLogMessageSearch');
/*!40000 ALTER TABLE `keymgr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lastpolicytestresult`
--

DROP TABLE IF EXISTS `lastpolicytestresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lastpolicytestresult` (
  `f_nodeID` bigint(20) NOT NULL,
  `f_policyTestID` bigint(20) NOT NULL,
  `f_policyTestResultID` bigint(20) NOT NULL,
  PRIMARY KEY (`f_nodeID`,`f_policyTestID`),
  UNIQUE KEY `LastPolicyTestResult_3_ASC` (`f_policyTestResultID`),
  UNIQUE KEY `LastPolicyTestResult_4_ASC` (`f_policyTestID`,`f_policyTestResultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastpolicytestresult`
--

LOCK TABLES `lastpolicytestresult` WRITE;
/*!40000 ALTER TABLE `lastpolicytestresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `lastpolicytestresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lastrulerunstatus`
--

DROP TABLE IF EXISTS `lastrulerunstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lastrulerunstatus` (
  `f_ruleID` bigint(20) NOT NULL,
  `f_nodeID` bigint(20) NOT NULL,
  `f_runDate` datetime NOT NULL,
  `f_success` tinyint(1) NOT NULL DEFAULT '0',
  `f_successDate` datetime DEFAULT NULL,
  PRIMARY KEY (`f_ruleID`,`f_nodeID`),
  KEY `LastRuleRunStatus_1_ASC` (`f_nodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastrulerunstatus`
--

LOCK TABLES `lastrulerunstatus` WRITE;
/*!40000 ALTER TABLE `lastrulerunstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `lastrulerunstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lastversiontestresult`
--

DROP TABLE IF EXISTS `lastversiontestresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lastversiontestresult` (
  `f_nodeId` bigint(20) NOT NULL,
  `f_versionTestID` bigint(20) NOT NULL,
  `f_elementID` bigint(20) NOT NULL,
  `f_versionTestResultId` bigint(20) NOT NULL,
  PRIMARY KEY (`f_nodeId`,`f_versionTestID`,`f_elementID`),
  UNIQUE KEY `LastVersionTestResult_4_ASC` (`f_versionTestResultId`),
  UNIQUE KEY `LastVersionTestResult_6_ASC` (`f_versionTestID`,`f_versionTestResultId`),
  KEY `LastVersionTestResult_5_ASC` (`f_versionTestID`,`f_elementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastversiontestresult`
--

LOCK TABLES `lastversiontestresult` WRITE;
/*!40000 ALTER TABLE `lastversiontestresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `lastversiontestresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `le`
--

DROP TABLE IF EXISTS `le`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `le` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `le_lev` smallint(6) NOT NULL,
  `le_tm` datetime NOT NULL,
  `le_usr` bigint(20) NOT NULL,
  `le_msg` longtext COLLATE utf8_bin,
  `le_version` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`oid`),
  KEY `le_7_ASC` (`ref_pmId`),
  KEY `le_8_ASC` (`le_version`),
  KEY `le_9_ASC` (`le_tm`,`oid`),
  KEY `le_10_ASC` (`le_lev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `le`
--

LOCK TABLES `le` WRITE;
/*!40000 ALTER TABLE `le` DISABLE KEYS */;
INSERT INTO `le` VALUES (-9223372036853275807,-9223372036854775780,1,'2013-03-01 08:00:00',-9223372036854775745,'Task \'Archive Log Messages\' was started.',9223372036854775807),(-9223372036853275806,-9223372036854775795,1,'2013-03-01 08:00:00',-9223372036854775745,'Task Archive Log Messages did not delete any log messages.',9223372036854775807),(-9223372036853275805,-9223372036854775780,1,'2013-03-01 08:00:00',-9223372036854775745,'Task \'Archive Log Messages\' was completed in 0 seconds.',9223372036854775807),(-9223372036852775808,-9223372036854775782,1,'2013-03-15 20:05:02',-9223372036854775745,'Node Windows Server (PDXBGlasserD.tripwire.com) started.',9223372036854775807),(-9223372036852275808,-9223372036854775782,1,'2013-03-20 08:35:05',-9223372036854775745,'Node Windows Server (PDXBGlasserD.tripwire.com) started.',9223372036854775807),(-9223372036851775808,-9223372036854775782,1,'2013-03-25 15:47:06',-9223372036854775745,'Node Windows Server (PDXBGlasserD.tripwire.com) started.',9223372036854775807),(-9223372036851775807,-9223372036854775780,1,'2013-04-01 07:00:01',-9223372036854775745,'Task \'Archive Log Messages\' was started.',9223372036854775807),(-9223372036851775806,-9223372036854775795,1,'2013-04-01 07:00:01',-9223372036854775745,'Task Archive Log Messages deleted 399 log messages.',9223372036854775807),(-9223372036851775805,-9223372036854775780,1,'2013-04-01 07:00:01',-9223372036854775745,'Task \'Archive Log Messages\' was completed in 1 seconds.',9223372036854775807),(-9223372036851775803,-9223372036854775784,1,'2013-04-15 18:53:04',-9223372036854775107,'User \'administrator\' logged in.',9223372036854775807),(-9223372036851775802,-9223372036854775784,1,'2013-04-15 18:53:04',-9223372036854775107,'User \'administrator\' logged out.',9223372036854775807),(-9223372036851775801,-9223372036854775784,1,'2013-04-15 18:53:22',-9223372036854775107,'User \'administrator\' logged in.',9223372036854775807),(-9223372036851775800,-9223372036854775784,1,'2013-04-15 18:53:22',-9223372036854775107,'User \'administrator\' logged out.',9223372036854775807),(-9223372036851775799,-9223372036854775784,1,'2013-04-15 18:53:40',-9223372036854775107,'User \'administrator\' logged in.',9223372036854775807),(-9223372036851775798,-9223372036854775784,1,'2013-04-15 18:53:40',-9223372036854775107,'User \'administrator\' logged out.',9223372036854775807),(-9223372036851275808,-9223372036854775782,1,'2013-04-17 08:34:17',-9223372036854775745,'Node Windows Server (PDXBGlasserD.tripwire.com) started.',9223372036854775807),(-9223372036850775808,-9223372036854775782,1,'2013-04-17 17:53:07',-9223372036854775745,'Node Windows Server (PDXBGlasserD.tripwire.com) started.',9223372036854775807),(-9223372036850775807,-9223372036854775784,1,'2013-04-17 17:55:15',-9223372036854775107,'User \'administrator\' logged in.',9223372036854775807),(-9223372036850775806,-9223372036854775784,1,'2013-04-17 17:55:15',-9223372036854775107,'User \'administrator\' logged out.',9223372036854775807);
/*!40000 ALTER TABLE `le` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `featureId` bigint(20) NOT NULL,
  `host` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pool` int(11) NOT NULL,
  `issued` datetime NOT NULL,
  `expires` datetime NOT NULL,
  `certificate` longtext COLLATE utf8_bin,
  `version` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `featureId` (`featureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lmtt`
--

DROP TABLE IF EXISTS `lmtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lmtt` (
  `cnt` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `cntEn` tinyint(1) NOT NULL DEFAULT '0',
  `ageEn` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lmtt`
--

LOCK TABLES `lmtt` WRITE;
/*!40000 ALTER TABLE `lmtt` DISABLE KEYS */;
INSERT INTO `lmtt` VALUES (10000,31,1,1,-9223372036854775105);
/*!40000 ALTER TABLE `lmtt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lmusrnme`
--

DROP TABLE IF EXISTS `lmusrnme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lmusrnme` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lmusrnme`
--

LOCK TABLES `lmusrnme` WRITE;
/*!40000 ALTER TABLE `lmusrnme` DISABLE KEYS */;
INSERT INTO `lmusrnme` VALUES (-9223372036854775107,'administrator'),(-9223372036854775745,'system');
/*!40000 ALTER TABLE `lmusrnme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logtransferrule`
--

DROP TABLE IF EXISTS `logtransferrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logtransferrule` (
  `commandLine` longtext COLLATE utf8_bin,
  `excludeStr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `replaceStr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `commandTimeout` bigint(20) DEFAULT NULL,
  `host` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `port` int(11) NOT NULL,
  `userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` longblob,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logtransferrule`
--

LOCK TABLES `logtransferrule` WRITE;
/*!40000 ALTER TABLE `logtransferrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `logtransferrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `longtype`
--

DROP TABLE IF EXISTS `longtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `longtype` (
  `f_val` bigint(20) DEFAULT NULL,
  `f_min` bigint(20) DEFAULT NULL,
  `f_max` bigint(20) DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `longtype`
--

LOCK TABLES `longtype` WRITE;
/*!40000 ALTER TABLE `longtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `longtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lsdesc`
--

DROP TABLE IF EXISTS `lsdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lsdesc` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `isDef` tinyint(1) NOT NULL DEFAULT '0',
  `lsClass` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `props` longblob,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lsdesc`
--

LOCK TABLES `lsdesc` WRITE;
/*!40000 ALTER TABLE `lsdesc` DISABLE KEYS */;
INSERT INTO `lsdesc` VALUES (-9223372036854775127,-9223372036854775641,'Tripwire Username/Password','Uses the default Tripwire username/password login strategy. The user has to be enabled, assigned a role and a password for the user has to be set.',1,'com.tripwire.space.core.security.login.TripwireUserStrategy','¼φ\0p'),(-9223372036854775126,-9223372036854775641,'LDAP/Active Directory','Authenticates using LDAP/Active Directory passwords. Users still need to be created and assigned a role in the Tripwire system.',0,'com.tripwire.space.core.security.login.LDAPUserLoginStrategy','¼φ\0p'),(-9223372036854775125,-9223372036854775641,'Tripwire Administrator','Uses the default Tripwire username/password login strategy. The user must be an Administrator, enabled and have a valid password.',0,'com.tripwire.space.core.security.login.TripwireAdministratorStrategy','¼φ\0p'),(-9223372036854775124,-9223372036854775641,'Tripwire Service','Performs login as a specified user by an authorized service. The user has to exist, be enabled, and have been assigned a role.',0,'com.tripwire.space.core.security.login.TripwireServiceStrategy','¼φ\0p');
/*!40000 ALTER TABLE `lsdesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marconi_asx`
--

DROP TABLE IF EXISTS `marconi_asx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marconi_asx` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marconi_asx`
--

LOCK TABLES `marconi_asx` WRITE;
/*!40000 ALTER TABLE `marconi_asx` DISABLE KEYS */;
/*!40000 ALTER TABLE `marconi_asx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marconi_asx_config`
--

DROP TABLE IF EXISTS `marconi_asx_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marconi_asx_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marconi_asx_config`
--

LOCK TABLES `marconi_asx_config` WRITE;
/*!40000 ALTER TABLE `marconi_asx_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `marconi_asx_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marconi_asx_restoreconfig`
--

DROP TABLE IF EXISTS `marconi_asx_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marconi_asx_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marconi_asx_restoreconfig`
--

LOCK TABLES `marconi_asx_restoreconfig` WRITE;
/*!40000 ALTER TABLE `marconi_asx_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `marconi_asx_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mssqldbsnode`
--

DROP TABLE IF EXISTS `mssqldbsnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mssqldbsnode` (
  `dbs_useSsl` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `dbs_useNtlmv2` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mssqldbsnode`
--

LOCK TABLES `mssqldbsnode` WRITE;
/*!40000 ALTER TABLE `mssqldbsnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `mssqldbsnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netscreen`
--

DROP TABLE IF EXISTS `netscreen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `netscreen` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_cipher` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netscreen`
--

LOCK TABLES `netscreen` WRITE;
/*!40000 ALTER TABLE `netscreen` DISABLE KEYS */;
/*!40000 ALTER TABLE `netscreen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netscreen_config`
--

DROP TABLE IF EXISTS `netscreen_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `netscreen_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netscreen_config`
--

LOCK TABLES `netscreen_config` WRITE;
/*!40000 ALTER TABLE `netscreen_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `netscreen_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `netscreen_restoreconfig`
--

DROP TABLE IF EXISTS `netscreen_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `netscreen_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `netscreen_restoreconfig`
--

LOCK TABLES `netscreen_restoreconfig` WRITE;
/*!40000 ALTER TABLE `netscreen_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `netscreen_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `F_MAKE` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `F_MODEL` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `F_VER` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `F_DISABLED` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES ('Microsoft','Windows 7','6.1',0,-9223372036854774467);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodefeature`
--

DROP TABLE IF EXISTS `nodefeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodefeature` (
  `nodeId` bigint(20) NOT NULL,
  `featureId` bigint(20) NOT NULL,
  PRIMARY KEY (`nodeId`,`featureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodefeature`
--

LOCK TABLES `nodefeature` WRITE;
/*!40000 ALTER TABLE `nodefeature` DISABLE KEYS */;
INSERT INTO `nodefeature` VALUES (-9223372036854774467,-9223372036854775717),(-9223372036854774467,-9223372036854775715),(-9223372036854774467,-9223372036854775713);
/*!40000 ALTER TABLE `nodefeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeg`
--

DROP TABLE IF EXISTS `nodeg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeg` (
  `MAXSEV` smallint(6) NOT NULL DEFAULT '0',
  `ELCNT` int(11) NOT NULL DEFAULT '0',
  `FAILS` tinyint(1) NOT NULL DEFAULT '0',
  `F_CHECKED` datetime NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `NODEG_0_ASC` (`MAXSEV`),
  KEY `NODEG_1_ASC` (`ELCNT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeg`
--

LOCK TABLES `nodeg` WRITE;
/*!40000 ALTER TABLE `nodeg` DISABLE KEYS */;
INSERT INTO `nodeg` VALUES (0,0,0,'1970-01-02 00:00:00',-9223372036854775536),(0,0,0,'1970-01-02 00:00:00',-9223372036854775535),(0,0,0,'1970-01-02 00:00:00',-9223372036854775534),(0,0,0,'1970-01-02 00:00:00',-9223372036854775088),(0,0,0,'1970-01-02 00:00:00',-9223372036854775087),(0,0,0,'1970-01-02 00:00:00',-9223372036854775086),(0,0,0,'1970-01-02 00:00:00',-9223372036854775085),(0,0,0,'1970-01-02 00:00:00',-9223372036854775084),(0,0,0,'1970-01-02 00:00:00',-9223372036854774599),(0,0,0,'1970-01-02 00:00:00',-9223372036854774598),(0,0,0,'1970-01-02 00:00:00',-9223372036854774597),(0,0,0,'1970-01-02 00:00:00',-9223372036854774596),(0,0,0,'1970-01-02 00:00:00',-9223372036854774595),(0,0,0,'1970-01-02 00:00:00',-9223372036854774594),(0,0,0,'1970-01-02 00:00:00',-9223372036854774593),(0,0,0,'1970-01-02 00:00:00',-9223372036854774592),(0,0,0,'1970-01-02 00:00:00',-9223372036854774591),(0,0,0,'1970-01-02 00:00:00',-9223372036854774590),(0,0,0,'1970-01-02 00:00:00',-9223372036854774589),(0,0,0,'1970-01-02 00:00:00',-9223372036854774588),(0,0,0,'1970-01-02 00:00:00',-9223372036854774587),(0,0,0,'1970-01-02 00:00:00',-9223372036854774586),(0,0,0,'1970-01-02 00:00:00',-9223372036854774585),(0,0,0,'1970-01-02 00:00:00',-9223372036854774584),(0,0,0,'1970-01-02 00:00:00',-9223372036854774583),(0,0,0,'1970-01-02 00:00:00',-9223372036854774582),(0,0,0,'1970-01-02 00:00:00',-9223372036854774581),(0,0,0,'1970-01-02 00:00:00',-9223372036854774580),(0,0,0,'1970-01-02 00:00:00',-9223372036854774579),(0,0,0,'1970-01-02 00:00:00',-9223372036854774578),(0,0,0,'1970-01-02 00:00:00',-9223372036854774577),(0,0,0,'1970-01-02 00:00:00',-9223372036854774576),(0,0,0,'1970-01-02 00:00:00',-9223372036854774575),(0,0,0,'1970-01-02 00:00:00',-9223372036854774574),(0,0,0,'1970-01-02 00:00:00',-9223372036854774573),(0,0,0,'1970-01-02 00:00:00',-9223372036854774572),(0,0,0,'1970-01-02 00:00:00',-9223372036854774571),(0,0,0,'1970-01-02 00:00:00',-9223372036854774570),(0,0,0,'1970-01-02 00:00:00',-9223372036854774569),(0,0,0,'1970-01-02 00:00:00',-9223372036854774568),(0,0,0,'1970-01-02 00:00:00',-9223372036854774567),(0,0,0,'1970-01-02 00:00:00',-9223372036854774566),(0,0,0,'1970-01-02 00:00:00',-9223372036854774565),(0,0,0,'1970-01-02 00:00:00',-9223372036854774564),(0,0,0,'1970-01-02 00:00:00',-9223372036854774563),(0,0,0,'1970-01-02 00:00:00',-9223372036854774562),(0,0,0,'1970-01-02 00:00:00',-9223372036854774561),(0,0,0,'1970-01-02 00:00:00',-9223372036854774560),(0,0,0,'1970-01-02 00:00:00',-9223372036854774559),(0,0,0,'1970-01-02 00:00:00',-9223372036854774558),(0,0,0,'1970-01-02 00:00:00',-9223372036854774557),(0,0,0,'1970-01-02 00:00:00',-9223372036854774556),(0,0,0,'1970-01-02 00:00:00',-9223372036854774555),(0,0,0,'1970-01-02 00:00:00',-9223372036854774554),(0,0,0,'1970-01-02 00:00:00',-9223372036854774553),(0,0,0,'1970-01-02 00:00:00',-9223372036854774552),(0,0,0,'1970-01-02 00:00:00',-9223372036854774551),(0,0,0,'1970-01-02 00:00:00',-9223372036854774550),(0,0,0,'1970-01-02 00:00:00',-9223372036854774549),(0,0,0,'1970-01-02 00:00:00',-9223372036854774548),(0,0,0,'1970-01-02 00:00:00',-9223372036854774547),(0,0,0,'1970-01-02 00:00:00',-9223372036854774546),(0,0,0,'1970-01-02 00:00:00',-9223372036854774545),(0,0,0,'1970-01-02 00:00:00',-9223372036854774544),(0,0,0,'1970-01-02 00:00:00',-9223372036854774543),(0,0,0,'1970-01-02 00:00:00',-9223372036854774542),(0,0,0,'1970-01-02 00:00:00',-9223372036854774541),(0,0,0,'1970-01-02 00:00:00',-9223372036854774540),(0,0,0,'1970-01-02 00:00:00',-9223372036854774539),(0,0,0,'1970-01-02 00:00:00',-9223372036854774538),(0,0,0,'1970-01-02 00:00:00',-9223372036854774537),(0,0,0,'1970-01-02 00:00:00',-9223372036854774536),(0,0,0,'1970-01-02 00:00:00',-9223372036854774535),(0,0,0,'1970-01-02 00:00:00',-9223372036854774534),(0,0,0,'1970-01-02 00:00:00',-9223372036854774467),(0,0,0,'1970-01-02 00:00:00',-9223372036853775808),(0,0,0,'1970-01-02 00:00:00',-9223372036853775807),(0,0,0,'1970-01-02 00:00:00',-9223372036853775806),(0,0,0,'1970-01-02 00:00:00',-9223372036853775805);
/*!40000 ALTER TABLE `nodeg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeip`
--

DROP TABLE IF EXISTS `nodeip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeip` (
  `nodeId` bigint(20) NOT NULL,
  `ip` varchar(39) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`nodeId`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeip`
--

LOCK TABLES `nodeip` WRITE;
/*!40000 ALTER TABLE `nodeip` DISABLE KEYS */;
INSERT INTO `nodeip` VALUES (-9223372036854774467,'172.31.2.70');
/*!40000 ALTER TABLE `nodeip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodesacls`
--

DROP TABLE IF EXISTS `nodesacls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodesacls` (
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `permId` bigint(20) NOT NULL,
  PRIMARY KEY (`objId`,`prinId`,`permId`),
  KEY `nodesACLS_1_ASC` (`prinId`),
  KEY `nodesACLS_2_ASC` (`permId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodesacls`
--

LOCK TABLES `nodesacls` WRITE;
/*!40000 ALTER TABLE `nodesacls` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodesacls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeslnk`
--

DROP TABLE IF EXISTS `nodeslnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeslnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  PRIMARY KEY (`pop`,`kid`),
  KEY `nodesLnk_1_ASC` (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeslnk`
--

LOCK TABLES `nodeslnk` WRITE;
/*!40000 ALTER TABLE `nodeslnk` DISABLE KEYS */;
INSERT INTO `nodeslnk` VALUES (-9223372036854775536,-9223372036854775088),(-9223372036854775088,-9223372036854775087),(-9223372036854775088,-9223372036854775086),(-9223372036854775088,-9223372036854775085),(-9223372036854775088,-9223372036854775084),(-9223372036854774598,-9223372036854774599),(-9223372036854775085,-9223372036854774598),(-9223372036854774596,-9223372036854774597),(-9223372036854775085,-9223372036854774596),(-9223372036854774598,-9223372036854774595),(-9223372036854774598,-9223372036854774594),(-9223372036854774598,-9223372036854774593),(-9223372036854774591,-9223372036854774592),(-9223372036854775085,-9223372036854774591),(-9223372036854774591,-9223372036854774590),(-9223372036854774591,-9223372036854774589),(-9223372036854774591,-9223372036854774588),(-9223372036854774598,-9223372036854774587),(-9223372036854774585,-9223372036854774586),(-9223372036854775085,-9223372036854774585),(-9223372036854774591,-9223372036854774584),(-9223372036854774598,-9223372036854774583),(-9223372036854774591,-9223372036854774582),(-9223372036854774580,-9223372036854774581),(-9223372036854775084,-9223372036854774580),(-9223372036854774591,-9223372036854774579),(-9223372036854774591,-9223372036854774578),(-9223372036854774585,-9223372036854774577),(-9223372036854774585,-9223372036854774576),(-9223372036854774591,-9223372036854774575),(-9223372036854774598,-9223372036854774574),(-9223372036854774591,-9223372036854774573),(-9223372036854774598,-9223372036854774572),(-9223372036854774585,-9223372036854774571),(-9223372036854774585,-9223372036854774570),(-9223372036854774591,-9223372036854774569),(-9223372036854774591,-9223372036854774568),(-9223372036854774598,-9223372036854774567),(-9223372036854774591,-9223372036854774566),(-9223372036854774598,-9223372036854774565),(-9223372036854774598,-9223372036854774564),(-9223372036854774591,-9223372036854774563),(-9223372036854774591,-9223372036854774562),(-9223372036854774585,-9223372036854774561),(-9223372036854774580,-9223372036854774560),(-9223372036854774598,-9223372036854774559),(-9223372036854774591,-9223372036854774558),(-9223372036854774598,-9223372036854774557),(-9223372036854774580,-9223372036854774556),(-9223372036854774591,-9223372036854774555),(-9223372036854774598,-9223372036854774554),(-9223372036854774580,-9223372036854774553),(-9223372036854774585,-9223372036854774552),(-9223372036854774598,-9223372036854774551),(-9223372036854774580,-9223372036854774550),(-9223372036854774548,-9223372036854774549),(-9223372036854775085,-9223372036854774548),(-9223372036854774598,-9223372036854774547),(-9223372036854774591,-9223372036854774546),(-9223372036854774591,-9223372036854774545),(-9223372036854774548,-9223372036854774544),(-9223372036854774591,-9223372036854774543),(-9223372036854774598,-9223372036854774542),(-9223372036854774598,-9223372036854774541),(-9223372036854774596,-9223372036854774540),(-9223372036854774580,-9223372036854774539),(-9223372036854774585,-9223372036854774538),(-9223372036854774591,-9223372036854774537),(-9223372036854774585,-9223372036854774536),(-9223372036854774598,-9223372036854774535),(-9223372036854774585,-9223372036854774534),(-9223372036854774575,-9223372036854774467),(-9223372036854774549,-9223372036854774467),(-9223372036854774591,-9223372036853775808),(-9223372036854774591,-9223372036853775807),(-9223372036854774591,-9223372036853775806),(-9223372036854774591,-9223372036853775805);
/*!40000 ALTER TABLE `nodeslnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertonnodesLnk
  AFTER INSERT ON nodesLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteonnodesLnk
  AFTER DELETE ON nodesLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nodespath`
--

DROP TABLE IF EXISTS `nodespath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodespath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `nodesPath_1_ASC` (`did`),
  KEY `nodesPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodespath`
--

LOCK TABLES `nodespath` WRITE;
/*!40000 ALTER TABLE `nodespath` DISABLE KEYS */;
INSERT INTO `nodespath` VALUES (-9223372036854775536,-9223372036854775536,0),(-9223372036854775088,-9223372036854775088,0),(-9223372036854775087,-9223372036854775087,0),(-9223372036854775086,-9223372036854775086,0),(-9223372036854775085,-9223372036854775085,0),(-9223372036854775084,-9223372036854775084,0),(-9223372036854774599,-9223372036854774599,0),(-9223372036854774598,-9223372036854774598,0),(-9223372036854774597,-9223372036854774597,0),(-9223372036854774596,-9223372036854774596,0),(-9223372036854774595,-9223372036854774595,0),(-9223372036854774594,-9223372036854774594,0),(-9223372036854774593,-9223372036854774593,0),(-9223372036854774592,-9223372036854774592,0),(-9223372036854774591,-9223372036854774591,0),(-9223372036854774590,-9223372036854774590,0),(-9223372036854774589,-9223372036854774589,0),(-9223372036854774588,-9223372036854774588,0),(-9223372036854774587,-9223372036854774587,0),(-9223372036854774586,-9223372036854774586,0),(-9223372036854774585,-9223372036854774585,0),(-9223372036854774584,-9223372036854774584,0),(-9223372036854774583,-9223372036854774583,0),(-9223372036854774582,-9223372036854774582,0),(-9223372036854774581,-9223372036854774581,0),(-9223372036854774580,-9223372036854774580,0),(-9223372036854774579,-9223372036854774579,0),(-9223372036854774578,-9223372036854774578,0),(-9223372036854774577,-9223372036854774577,0),(-9223372036854774576,-9223372036854774576,0),(-9223372036854774575,-9223372036854774575,0),(-9223372036854774574,-9223372036854774574,0),(-9223372036854774573,-9223372036854774573,0),(-9223372036854774572,-9223372036854774572,0),(-9223372036854774571,-9223372036854774571,0),(-9223372036854774570,-9223372036854774570,0),(-9223372036854774569,-9223372036854774569,0),(-9223372036854774568,-9223372036854774568,0),(-9223372036854774567,-9223372036854774567,0),(-9223372036854774566,-9223372036854774566,0),(-9223372036854774565,-9223372036854774565,0),(-9223372036854774564,-9223372036854774564,0),(-9223372036854774563,-9223372036854774563,0),(-9223372036854774562,-9223372036854774562,0),(-9223372036854774561,-9223372036854774561,0),(-9223372036854774560,-9223372036854774560,0),(-9223372036854774559,-9223372036854774559,0),(-9223372036854774558,-9223372036854774558,0),(-9223372036854774557,-9223372036854774557,0),(-9223372036854774556,-9223372036854774556,0),(-9223372036854774555,-9223372036854774555,0),(-9223372036854774554,-9223372036854774554,0),(-9223372036854774553,-9223372036854774553,0),(-9223372036854774552,-9223372036854774552,0),(-9223372036854774551,-9223372036854774551,0),(-9223372036854774550,-9223372036854774550,0),(-9223372036854774549,-9223372036854774549,0),(-9223372036854774548,-9223372036854774548,0),(-9223372036854774547,-9223372036854774547,0),(-9223372036854774546,-9223372036854774546,0),(-9223372036854774545,-9223372036854774545,0),(-9223372036854774544,-9223372036854774544,0),(-9223372036854774543,-9223372036854774543,0),(-9223372036854774542,-9223372036854774542,0),(-9223372036854774541,-9223372036854774541,0),(-9223372036854774540,-9223372036854774540,0),(-9223372036854774539,-9223372036854774539,0),(-9223372036854774538,-9223372036854774538,0),(-9223372036854774537,-9223372036854774537,0),(-9223372036854774536,-9223372036854774536,0),(-9223372036854774535,-9223372036854774535,0),(-9223372036854774534,-9223372036854774534,0),(-9223372036853775808,-9223372036853775808,0),(-9223372036853775807,-9223372036853775807,0),(-9223372036853775806,-9223372036853775806,0),(-9223372036853775805,-9223372036853775805,0),(-9223372036854775536,-9223372036854775088,1),(-9223372036854775088,-9223372036854775087,1),(-9223372036854775088,-9223372036854775086,1),(-9223372036854775088,-9223372036854775085,1),(-9223372036854775088,-9223372036854775084,1),(-9223372036854775085,-9223372036854774598,1),(-9223372036854775085,-9223372036854774596,1),(-9223372036854775085,-9223372036854774591,1),(-9223372036854775085,-9223372036854774585,1),(-9223372036854775085,-9223372036854774548,1),(-9223372036854775084,-9223372036854774580,1),(-9223372036854774598,-9223372036854774599,1),(-9223372036854774598,-9223372036854774595,1),(-9223372036854774598,-9223372036854774594,1),(-9223372036854774598,-9223372036854774593,1),(-9223372036854774598,-9223372036854774587,1),(-9223372036854774598,-9223372036854774583,1),(-9223372036854774598,-9223372036854774574,1),(-9223372036854774598,-9223372036854774572,1),(-9223372036854774598,-9223372036854774567,1),(-9223372036854774598,-9223372036854774565,1),(-9223372036854774598,-9223372036854774564,1),(-9223372036854774598,-9223372036854774559,1),(-9223372036854774598,-9223372036854774557,1),(-9223372036854774598,-9223372036854774554,1),(-9223372036854774598,-9223372036854774551,1),(-9223372036854774598,-9223372036854774547,1),(-9223372036854774598,-9223372036854774542,1),(-9223372036854774598,-9223372036854774541,1),(-9223372036854774598,-9223372036854774535,1),(-9223372036854774596,-9223372036854774597,1),(-9223372036854774596,-9223372036854774540,1),(-9223372036854774591,-9223372036854774592,1),(-9223372036854774591,-9223372036854774590,1),(-9223372036854774591,-9223372036854774589,1),(-9223372036854774591,-9223372036854774588,1),(-9223372036854774591,-9223372036854774584,1),(-9223372036854774591,-9223372036854774582,1),(-9223372036854774591,-9223372036854774579,1),(-9223372036854774591,-9223372036854774578,1),(-9223372036854774591,-9223372036854774575,1),(-9223372036854774591,-9223372036854774573,1),(-9223372036854774591,-9223372036854774569,1),(-9223372036854774591,-9223372036854774568,1),(-9223372036854774591,-9223372036854774566,1),(-9223372036854774591,-9223372036854774563,1),(-9223372036854774591,-9223372036854774562,1),(-9223372036854774591,-9223372036854774558,1),(-9223372036854774591,-9223372036854774555,1),(-9223372036854774591,-9223372036854774546,1),(-9223372036854774591,-9223372036854774545,1),(-9223372036854774591,-9223372036854774543,1),(-9223372036854774591,-9223372036854774537,1),(-9223372036854774591,-9223372036853775808,1),(-9223372036854774591,-9223372036853775807,1),(-9223372036854774591,-9223372036853775806,1),(-9223372036854774591,-9223372036853775805,1),(-9223372036854774585,-9223372036854774586,1),(-9223372036854774585,-9223372036854774577,1),(-9223372036854774585,-9223372036854774576,1),(-9223372036854774585,-9223372036854774571,1),(-9223372036854774585,-9223372036854774570,1),(-9223372036854774585,-9223372036854774561,1),(-9223372036854774585,-9223372036854774552,1),(-9223372036854774585,-9223372036854774538,1),(-9223372036854774585,-9223372036854774536,1),(-9223372036854774585,-9223372036854774534,1),(-9223372036854774580,-9223372036854774581,1),(-9223372036854774580,-9223372036854774560,1),(-9223372036854774580,-9223372036854774556,1),(-9223372036854774580,-9223372036854774553,1),(-9223372036854774580,-9223372036854774550,1),(-9223372036854774580,-9223372036854774539,1),(-9223372036854774548,-9223372036854774549,1),(-9223372036854774548,-9223372036854774544,1),(-9223372036854775536,-9223372036854775087,2),(-9223372036854775536,-9223372036854775086,2),(-9223372036854775536,-9223372036854775085,2),(-9223372036854775536,-9223372036854775084,2),(-9223372036854775088,-9223372036854774598,2),(-9223372036854775088,-9223372036854774596,2),(-9223372036854775088,-9223372036854774591,2),(-9223372036854775088,-9223372036854774585,2),(-9223372036854775088,-9223372036854774580,2),(-9223372036854775088,-9223372036854774548,2),(-9223372036854775085,-9223372036854774599,2),(-9223372036854775085,-9223372036854774597,2),(-9223372036854775085,-9223372036854774595,2),(-9223372036854775085,-9223372036854774594,2),(-9223372036854775085,-9223372036854774593,2),(-9223372036854775085,-9223372036854774592,2),(-9223372036854775085,-9223372036854774590,2),(-9223372036854775085,-9223372036854774589,2),(-9223372036854775085,-9223372036854774588,2),(-9223372036854775085,-9223372036854774587,2),(-9223372036854775085,-9223372036854774586,2),(-9223372036854775085,-9223372036854774584,2),(-9223372036854775085,-9223372036854774583,2),(-9223372036854775085,-9223372036854774582,2),(-9223372036854775085,-9223372036854774579,2),(-9223372036854775085,-9223372036854774578,2),(-9223372036854775085,-9223372036854774577,2),(-9223372036854775085,-9223372036854774576,2),(-9223372036854775085,-9223372036854774575,2),(-9223372036854775085,-9223372036854774574,2),(-9223372036854775085,-9223372036854774573,2),(-9223372036854775085,-9223372036854774572,2),(-9223372036854775085,-9223372036854774571,2),(-9223372036854775085,-9223372036854774570,2),(-9223372036854775085,-9223372036854774569,2),(-9223372036854775085,-9223372036854774568,2),(-9223372036854775085,-9223372036854774567,2),(-9223372036854775085,-9223372036854774566,2),(-9223372036854775085,-9223372036854774565,2),(-9223372036854775085,-9223372036854774564,2),(-9223372036854775085,-9223372036854774563,2),(-9223372036854775085,-9223372036854774562,2),(-9223372036854775085,-9223372036854774561,2),(-9223372036854775085,-9223372036854774559,2),(-9223372036854775085,-9223372036854774558,2),(-9223372036854775085,-9223372036854774557,2),(-9223372036854775085,-9223372036854774555,2),(-9223372036854775085,-9223372036854774554,2),(-9223372036854775085,-9223372036854774552,2),(-9223372036854775085,-9223372036854774551,2),(-9223372036854775085,-9223372036854774549,2),(-9223372036854775085,-9223372036854774547,2),(-9223372036854775085,-9223372036854774546,2),(-9223372036854775085,-9223372036854774545,2),(-9223372036854775085,-9223372036854774544,2),(-9223372036854775085,-9223372036854774543,2),(-9223372036854775085,-9223372036854774542,2),(-9223372036854775085,-9223372036854774541,2),(-9223372036854775085,-9223372036854774540,2),(-9223372036854775085,-9223372036854774538,2),(-9223372036854775085,-9223372036854774537,2),(-9223372036854775085,-9223372036854774536,2),(-9223372036854775085,-9223372036854774535,2),(-9223372036854775085,-9223372036854774534,2),(-9223372036854775085,-9223372036853775808,2),(-9223372036854775085,-9223372036853775807,2),(-9223372036854775085,-9223372036853775806,2),(-9223372036854775085,-9223372036853775805,2),(-9223372036854775084,-9223372036854774581,2),(-9223372036854775084,-9223372036854774560,2),(-9223372036854775084,-9223372036854774556,2),(-9223372036854775084,-9223372036854774553,2),(-9223372036854775084,-9223372036854774550,2),(-9223372036854775084,-9223372036854774539,2),(-9223372036854775536,-9223372036854774598,3),(-9223372036854775536,-9223372036854774596,3),(-9223372036854775536,-9223372036854774591,3),(-9223372036854775536,-9223372036854774585,3),(-9223372036854775536,-9223372036854774580,3),(-9223372036854775536,-9223372036854774548,3),(-9223372036854775088,-9223372036854774599,3),(-9223372036854775088,-9223372036854774597,3),(-9223372036854775088,-9223372036854774595,3),(-9223372036854775088,-9223372036854774594,3),(-9223372036854775088,-9223372036854774593,3),(-9223372036854775088,-9223372036854774592,3),(-9223372036854775088,-9223372036854774590,3),(-9223372036854775088,-9223372036854774589,3),(-9223372036854775088,-9223372036854774588,3),(-9223372036854775088,-9223372036854774587,3),(-9223372036854775088,-9223372036854774586,3),(-9223372036854775088,-9223372036854774584,3),(-9223372036854775088,-9223372036854774583,3),(-9223372036854775088,-9223372036854774582,3),(-9223372036854775088,-9223372036854774581,3),(-9223372036854775088,-9223372036854774579,3),(-9223372036854775088,-9223372036854774578,3),(-9223372036854775088,-9223372036854774577,3),(-9223372036854775088,-9223372036854774576,3),(-9223372036854775088,-9223372036854774575,3),(-9223372036854775088,-9223372036854774574,3),(-9223372036854775088,-9223372036854774573,3),(-9223372036854775088,-9223372036854774572,3),(-9223372036854775088,-9223372036854774571,3),(-9223372036854775088,-9223372036854774570,3),(-9223372036854775088,-9223372036854774569,3),(-9223372036854775088,-9223372036854774568,3),(-9223372036854775088,-9223372036854774567,3),(-9223372036854775088,-9223372036854774566,3),(-9223372036854775088,-9223372036854774565,3),(-9223372036854775088,-9223372036854774564,3),(-9223372036854775088,-9223372036854774563,3),(-9223372036854775088,-9223372036854774562,3),(-9223372036854775088,-9223372036854774561,3),(-9223372036854775088,-9223372036854774560,3),(-9223372036854775088,-9223372036854774559,3),(-9223372036854775088,-9223372036854774558,3),(-9223372036854775088,-9223372036854774557,3),(-9223372036854775088,-9223372036854774556,3),(-9223372036854775088,-9223372036854774555,3),(-9223372036854775088,-9223372036854774554,3),(-9223372036854775088,-9223372036854774553,3),(-9223372036854775088,-9223372036854774552,3),(-9223372036854775088,-9223372036854774551,3),(-9223372036854775088,-9223372036854774550,3),(-9223372036854775088,-9223372036854774549,3),(-9223372036854775088,-9223372036854774547,3),(-9223372036854775088,-9223372036854774546,3),(-9223372036854775088,-9223372036854774545,3),(-9223372036854775088,-9223372036854774544,3),(-9223372036854775088,-9223372036854774543,3),(-9223372036854775088,-9223372036854774542,3),(-9223372036854775088,-9223372036854774541,3),(-9223372036854775088,-9223372036854774540,3),(-9223372036854775088,-9223372036854774539,3),(-9223372036854775088,-9223372036854774538,3),(-9223372036854775088,-9223372036854774537,3),(-9223372036854775088,-9223372036854774536,3),(-9223372036854775088,-9223372036854774535,3),(-9223372036854775088,-9223372036854774534,3),(-9223372036854775088,-9223372036853775808,3),(-9223372036854775088,-9223372036853775807,3),(-9223372036854775088,-9223372036853775806,3),(-9223372036854775088,-9223372036853775805,3),(-9223372036854775536,-9223372036854774599,4),(-9223372036854775536,-9223372036854774597,4),(-9223372036854775536,-9223372036854774595,4),(-9223372036854775536,-9223372036854774594,4),(-9223372036854775536,-9223372036854774593,4),(-9223372036854775536,-9223372036854774592,4),(-9223372036854775536,-9223372036854774590,4),(-9223372036854775536,-9223372036854774589,4),(-9223372036854775536,-9223372036854774588,4),(-9223372036854775536,-9223372036854774587,4),(-9223372036854775536,-9223372036854774586,4),(-9223372036854775536,-9223372036854774584,4),(-9223372036854775536,-9223372036854774583,4),(-9223372036854775536,-9223372036854774582,4),(-9223372036854775536,-9223372036854774581,4),(-9223372036854775536,-9223372036854774579,4),(-9223372036854775536,-9223372036854774578,4),(-9223372036854775536,-9223372036854774577,4),(-9223372036854775536,-9223372036854774576,4),(-9223372036854775536,-9223372036854774575,4),(-9223372036854775536,-9223372036854774574,4),(-9223372036854775536,-9223372036854774573,4),(-9223372036854775536,-9223372036854774572,4),(-9223372036854775536,-9223372036854774571,4),(-9223372036854775536,-9223372036854774570,4),(-9223372036854775536,-9223372036854774569,4),(-9223372036854775536,-9223372036854774568,4),(-9223372036854775536,-9223372036854774567,4),(-9223372036854775536,-9223372036854774566,4),(-9223372036854775536,-9223372036854774565,4),(-9223372036854775536,-9223372036854774564,4),(-9223372036854775536,-9223372036854774563,4),(-9223372036854775536,-9223372036854774562,4),(-9223372036854775536,-9223372036854774561,4),(-9223372036854775536,-9223372036854774560,4),(-9223372036854775536,-9223372036854774559,4),(-9223372036854775536,-9223372036854774558,4),(-9223372036854775536,-9223372036854774557,4),(-9223372036854775536,-9223372036854774556,4),(-9223372036854775536,-9223372036854774555,4),(-9223372036854775536,-9223372036854774554,4),(-9223372036854775536,-9223372036854774553,4),(-9223372036854775536,-9223372036854774552,4),(-9223372036854775536,-9223372036854774551,4),(-9223372036854775536,-9223372036854774550,4),(-9223372036854775536,-9223372036854774549,4),(-9223372036854775536,-9223372036854774547,4),(-9223372036854775536,-9223372036854774546,4),(-9223372036854775536,-9223372036854774545,4),(-9223372036854775536,-9223372036854774544,4),(-9223372036854775536,-9223372036854774543,4),(-9223372036854775536,-9223372036854774542,4),(-9223372036854775536,-9223372036854774541,4),(-9223372036854775536,-9223372036854774540,4),(-9223372036854775536,-9223372036854774539,4),(-9223372036854775536,-9223372036854774538,4),(-9223372036854775536,-9223372036854774537,4),(-9223372036854775536,-9223372036854774536,4),(-9223372036854775536,-9223372036854774535,4),(-9223372036854775536,-9223372036854774534,4),(-9223372036854775536,-9223372036853775808,4),(-9223372036854775536,-9223372036853775807,4),(-9223372036854775536,-9223372036853775806,4),(-9223372036854775536,-9223372036853775805,4);
/*!40000 ALTER TABLE `nodespath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nokia_ipso`
--

DROP TABLE IF EXISTS `nokia_ipso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nokia_ipso` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nokia_ipso`
--

LOCK TABLES `nokia_ipso` WRITE;
/*!40000 ALTER TABLE `nokia_ipso` DISABLE KEYS */;
/*!40000 ALTER TABLE `nokia_ipso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nokia_ipso_config`
--

DROP TABLE IF EXISTS `nokia_ipso_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nokia_ipso_config` (
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nokia_ipso_config`
--

LOCK TABLES `nokia_ipso_config` WRITE;
/*!40000 ALTER TABLE `nokia_ipso_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nokia_ipso_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nokia_ipso_cp41_config`
--

DROP TABLE IF EXISTS `nokia_ipso_cp41_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nokia_ipso_cp41_config` (
  `f_cpbasedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nokia_ipso_cp41_config`
--

LOCK TABLES `nokia_ipso_cp41_config` WRITE;
/*!40000 ALTER TABLE `nokia_ipso_cp41_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nokia_ipso_cp41_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nokia_ipso_cpng_config`
--

DROP TABLE IF EXISTS `nokia_ipso_cpng_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nokia_ipso_cpng_config` (
  `f_cpbasedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_cpsharedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nokia_ipso_cpng_config`
--

LOCK TABLES `nokia_ipso_cpng_config` WRITE;
/*!40000 ALTER TABLE `nokia_ipso_cpng_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nokia_ipso_cpng_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nokia_ipso_cpngx_config`
--

DROP TABLE IF EXISTS `nokia_ipso_cpngx_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nokia_ipso_cpngx_config` (
  `f_cpbasedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_cpsharedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nokia_ipso_cpngx_config`
--

LOCK TABLES `nokia_ipso_cpngx_config` WRITE;
/*!40000 ALTER TABLE `nokia_ipso_cpngx_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nokia_ipso_cpngx_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nokia_ipso_iss_config`
--

DROP TABLE IF EXISTS `nokia_ipso_iss_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nokia_ipso_iss_config` (
  `f_issbasedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_rsbasedir` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nokia_ipso_iss_config`
--

LOCK TABLES `nokia_ipso_iss_config` WRITE;
/*!40000 ALTER TABLE `nokia_ipso_iss_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `nokia_ipso_iss_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `numericvalue`
--

DROP TABLE IF EXISTS `numericvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numericvalue` (
  `oid` bigint(20) NOT NULL,
  `f_type` bigint(20) NOT NULL,
  `f_val` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `NumericValue_1_ASC` (`f_type`),
  KEY `NumericValue_2_ASC` (`f_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numericvalue`
--

LOCK TABLES `numericvalue` WRITE;
/*!40000 ALTER TABLE `numericvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `numericvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objacl`
--

DROP TABLE IF EXISTS `objacl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objacl` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `objGroupingId` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`oid`),
  KEY `OBJACL_6_ASC` (`objGroupingId`,`objId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objacl`
--

LOCK TABLES `objacl` WRITE;
/*!40000 ALTER TABLE `objacl` DISABLE KEYS */;
/*!40000 ALTER TABLE `objacl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objperm`
--

DROP TABLE IF EXISTS `objperm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objperm` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objperm`
--

LOCK TABLES `objperm` WRITE;
/*!40000 ALTER TABLE `objperm` DISABLE KEYS */;
INSERT INTO `objperm` VALUES (-9223372036854775510,-9223372036854775635,'access.control.node',NULL),(-9223372036854775509,-9223372036854775635,'access.control.rule',NULL),(-9223372036854775508,-9223372036854775635,'access.control.response',NULL),(-9223372036854775507,-9223372036854775635,'access.control.task',NULL),(-9223372036854775506,-9223372036854775635,'access.control.job',NULL),(-9223372036854775505,-9223372036854775635,'access.control.policytest',NULL),(-9223372036854775504,-9223372036854775635,'manage.system.searches',NULL),(-9223372036854775503,-9223372036854775635,'export.passwords',NULL),(-9223372036854775502,-9223372036854775635,'manage.login.methods',NULL),(-9223372036854775501,-9223372036854775635,'manage.customProperty.definitions',NULL),(-9223372036854775500,-9223372036854775635,'manage.customProperty.values',NULL),(-9223372036854775499,-9223372036854775635,'manage.approvaltemplate',NULL),(-9223372036854775498,-9223372036854775635,'manage.server.configure',NULL),(-9223372036854775497,-9223372036854775635,'element.check',NULL),(-9223372036854775496,-9223372036854775635,'task.run',NULL),(-9223372036854775495,-9223372036854775635,'task.stop',NULL),(-9223372036854775494,-9223372036854775635,'policytest.remediator.run',NULL),(-9223372036854775493,-9223372036854775635,'policytest.remediator.update',NULL),(-9223372036854775492,-9223372036854775635,'rule.use',NULL),(-9223372036854775491,-9223372036854775635,'rule.co.use',NULL),(-9223372036854775490,-9223372036854775635,'response.execution.use',NULL),(-9223372036854775489,-9223372036854775635,'job.activate',NULL),(-9223372036854775488,-9223372036854775635,'policytest.run',NULL),(-9223372036854775487,-9223372036854775635,'policytest.create',NULL),(-9223372036854775486,-9223372036854775635,'policytest.waiver.create',NULL),(-9223372036854775485,-9223372036854775635,'job.create',NULL),(-9223372036854775484,-9223372036854775635,'node.create',NULL),(-9223372036854775483,-9223372036854775635,'response.execution.create',NULL),(-9223372036854775482,-9223372036854775635,'response.create',NULL),(-9223372036854775481,-9223372036854775635,'rule.co.create',NULL),(-9223372036854775480,-9223372036854775635,'rule.create',NULL),(-9223372036854775479,-9223372036854775635,'severity.create',NULL),(-9223372036854775478,-9223372036854775635,'task.create',NULL),(-9223372036854775477,-9223372036854775635,'user.create',NULL),(-9223372036854775476,-9223372036854775635,'variable.create',NULL),(-9223372036854775475,-9223372036854775635,'license.create',NULL),(-9223372036854775474,-9223372036854775635,'criteriaset.create',NULL),(-9223372036854775473,-9223372036854775635,'nodeType.create',NULL),(-9223372036854775472,-9223372036854775635,'emailserver.create',NULL),(-9223372036854775471,-9223372036854775635,'policytest.delete',NULL),(-9223372036854775470,-9223372036854775635,'job.delete',NULL),(-9223372036854775469,-9223372036854775635,'log.delete',NULL),(-9223372036854775468,-9223372036854775635,'node.delete',NULL),(-9223372036854775467,-9223372036854775635,'response.delete',NULL),(-9223372036854775466,-9223372036854775635,'rule.delete',NULL),(-9223372036854775465,-9223372036854775635,'severity.delete',NULL),(-9223372036854775464,-9223372036854775635,'task.delete',NULL),(-9223372036854775463,-9223372036854775635,'user.delete',NULL),(-9223372036854775462,-9223372036854775635,'variable.delete',NULL),(-9223372036854775461,-9223372036854775635,'license.delete',NULL),(-9223372036854775460,-9223372036854775635,'criteriaset.delete',NULL),(-9223372036854775459,-9223372036854775635,'element.delete',NULL),(-9223372036854775458,-9223372036854775635,'nodeType.delete',NULL),(-9223372036854775457,-9223372036854775635,'emailserver.delete',NULL),(-9223372036854775456,-9223372036854775635,'policytest.update',NULL),(-9223372036854775455,-9223372036854775635,'policytest.waiver.update',NULL),(-9223372036854775454,-9223372036854775635,'job.update',NULL),(-9223372036854775453,-9223372036854775635,'node.update',NULL),(-9223372036854775452,-9223372036854775635,'response.update',NULL),(-9223372036854775451,-9223372036854775635,'response.execution.update',NULL),(-9223372036854775450,-9223372036854775635,'rule.update',NULL),(-9223372036854775449,-9223372036854775635,'rule.co.update',NULL),(-9223372036854775448,-9223372036854775635,'severity.update',NULL),(-9223372036854775447,-9223372036854775635,'task.update',NULL),(-9223372036854775446,-9223372036854775635,'user.update',NULL),(-9223372036854775445,-9223372036854775635,'variable.update',NULL),(-9223372036854775444,-9223372036854775635,'criteriaset.update',NULL),(-9223372036854775443,-9223372036854775635,'element.update',NULL),(-9223372036854775442,-9223372036854775635,'emailserver.update',NULL),(-9223372036854775441,-9223372036854775635,'nodeType.update',NULL),(-9223372036854775440,-9223372036854775635,'agent.configuration.update',NULL),(-9223372036854775439,-9223372036854775635,'policytest.link',NULL),(-9223372036854775438,-9223372036854775635,'job.link',NULL),(-9223372036854775437,-9223372036854775635,'node.link',NULL),(-9223372036854775436,-9223372036854775635,'rule.link',NULL),(-9223372036854775435,-9223372036854775635,'response.link',NULL),(-9223372036854775434,-9223372036854775635,'task.link',NULL),(-9223372036854775433,-9223372036854775635,'node.viewable',NULL),(-9223372036854775432,-9223372036854775635,'node.agent.restart',NULL),(-9223372036854775431,-9223372036854775635,'node.agent.upgrade',NULL),(-9223372036854775430,-9223372036854775635,'manage.system.reports',NULL),(-9223372036854775429,-9223372036854775635,'archive.system.report',NULL),(-9223372036854775428,-9223372036854775635,'delete.system.report.archive',NULL),(-9223372036854775427,-9223372036854775635,'tool.policytest.load',NULL),(-9223372036854775426,-9223372036854775635,'tool.job.load',NULL),(-9223372036854775425,-9223372036854775635,'tool.license.load',NULL),(-9223372036854775424,-9223372036854775635,'tool.log.load',NULL),(-9223372036854775423,-9223372036854775635,'tool.node.load',NULL),(-9223372036854775422,-9223372036854775635,'tool.response.load',NULL),(-9223372036854775421,-9223372036854775635,'tool.rule.load',NULL),(-9223372036854775420,-9223372036854775635,'tool.severity.load',NULL),(-9223372036854775419,-9223372036854775635,'tool.task.load',NULL),(-9223372036854775418,-9223372036854775635,'tool.user.load',NULL),(-9223372036854775417,-9223372036854775635,'tool.variable.load',NULL),(-9223372036854775416,-9223372036854775635,'tool.reportmgr.load',NULL),(-9223372036854775415,-9223372036854775635,'tool.systemPreferences.load',NULL),(-9223372036854775414,-9223372036854775635,'tool.serverPreferences.load',NULL),(-9223372036854775413,-9223372036854775635,'tool.emailserver.load',NULL),(-9223372036854775412,-9223372036854775635,'tool.importsettings.load',NULL),(-9223372036854775411,-9223372036854775635,'tool.exportsettings.load',NULL),(-9223372036854775410,-9223372036854775635,'tool.criteriaset.load',NULL),(-9223372036854775409,-9223372036854775635,'tool.database.load',NULL),(-9223372036854775408,-9223372036854775635,'tool.activeDirPreferences.load',NULL),(-9223372036854775407,-9223372036854775635,'tool.sunOnePreferences.load',NULL),(-9223372036854775406,-9223372036854775635,'tool.eDirPreferences.load',NULL),(-9223372036854775405,-9223372036854775635,'tool.ldapDirPreferences.load',NULL),(-9223372036854775404,-9223372036854775635,'tool.nodeType.load',NULL),(-9223372036854775403,-9223372036854775635,'tool.collectSupportData.load',NULL),(-9223372036854775402,-9223372036854775635,'tool.logManagementPreferences.load',NULL),(-9223372036854775401,-9223372036854775635,'manage.homePages',NULL),(-9223372036854775400,-9223372036854775635,'manage.own.homePage',NULL),(-9223372036854775399,-9223372036854775635,'remediation.work.order.create',NULL),(-9223372036854775398,-9223372036854775635,'remediation.work.order.update',NULL),(-9223372036854775397,-9223372036854775635,'remediation.work.order.delete',NULL),(-9223372036854775396,-9223372036854775635,'remediation.action.approve',NULL),(-9223372036854775395,-9223372036854775635,'remediation.work.order.close',NULL),(-9223372036854775394,-9223372036854775635,'remediation.work.order.assign',NULL),(-9223372036854775393,-9223372036854775635,'post.remediation.command.update',NULL);
/*!40000 ALTER TABLE `objperm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odbsnode`
--

DROP TABLE IF EXISTS `odbsnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odbsnode` (
  `dbs_loginAs` int(11) NOT NULL,
  `dbs_securityType` int(11) NOT NULL,
  `dbs_isService` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odbsnode`
--

LOCK TABLES `odbsnode` WRITE;
/*!40000 ALTER TABLE `odbsnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `odbsnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orefs`
--

DROP TABLE IF EXISTS `orefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orefs` (
  `f_obj` bigint(20) NOT NULL,
  `f_ref` bigint(20) NOT NULL,
  `f_refmapId` bigint(20) NOT NULL,
  PRIMARY KEY (`f_obj`,`f_ref`),
  KEY `ORefs_1_ASC` (`f_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orefs`
--

LOCK TABLES `orefs` WRITE;
/*!40000 ALTER TABLE `orefs` DISABLE KEYS */;
INSERT INTO `orefs` VALUES (0,-9223372036854775106,-9223372036854775729),(0,-9223372036854775105,-9223372036854775789),(0,-9223372036854775103,-9223372036854775104);
/*!40000 ALTER TABLE `orefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os400namevalue`
--

DROP TABLE IF EXISTS `os400namevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os400namevalue` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os400namevalue`
--

LOCK TABLES `os400namevalue` WRITE;
/*!40000 ALTER TABLE `os400namevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `os400namevalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outofsyncpair`
--

DROP TABLE IF EXISTS `outofsyncpair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outofsyncpair` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  `f_reason` int(11) NOT NULL,
  `f_date` datetime NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `OutOfSyncPair_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outofsyncpair`
--

LOCK TABLES `outofsyncpair` WRITE;
/*!40000 ALTER TABLE `outofsyncpair` DISABLE KEYS */;
/*!40000 ALTER TABLE `outofsyncpair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ovalvariabletest`
--

DROP TABLE IF EXISTS `ovalvariabletest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ovalvariabletest` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` longtext COLLATE utf8_bin,
  `ovalVariableId` longtext COLLATE utf8_bin,
  `expectedValue` longtext COLLATE utf8_bin,
  `variableValue` longtext COLLATE utf8_bin,
  `parentId` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `OvalVariableTest_7_ASC` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ovalvariabletest`
--

LOCK TABLES `ovalvariabletest` WRITE;
/*!40000 ALTER TABLE `ovalvariabletest` DISABLE KEYS */;
/*!40000 ALTER TABLE `ovalvariabletest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passport` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_sshKeyFile` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_fileName` longtext COLLATE utf8_bin,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport_config`
--

DROP TABLE IF EXISTS `passport_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passport_config` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport_config`
--

LOCK TABLES `passport_config` WRITE;
/*!40000 ALTER TABLE `passport_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `passport_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport_restoreconfig`
--

DROP TABLE IF EXISTS `passport_restoreconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passport_restoreconfig` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport_restoreconfig`
--

LOCK TABLES `passport_restoreconfig` WRITE;
/*!40000 ALTER TABLE `passport_restoreconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `passport_restoreconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwds`
--

DROP TABLE IF EXISTS `passwds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwds` (
  `oid` bigint(20) NOT NULL,
  `targetId` bigint(20) NOT NULL,
  `passwd` varchar(88) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`,`targetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwds`
--

LOCK TABLES `passwds` WRITE;
/*!40000 ALTER TABLE `passwds` DISABLE KEYS */;
INSERT INTO `passwds` VALUES (-9223372036854775132,-9223372036854775134,'0+uOeMrSF9EP7KEIC/th3A==');
/*!40000 ALTER TABLE `passwds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pfsr`
--

DROP TABLE IF EXISTS `pfsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pfsr` (
  `traverse` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pfsr`
--

LOCK TABLES `pfsr` WRITE;
/*!40000 ALTER TABLE `pfsr` DISABLE KEYS */;
/*!40000 ALTER TABLE `pfsr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkg`
--

DROP TABLE IF EXISTS `pkg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkg` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `pkg_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pkg_version` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pkg_digest` varbinary(16) NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `pkg_digest` (`pkg_digest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkg`
--

LOCK TABLES `pkg` WRITE;
/*!40000 ALTER TABLE `pkg` DISABLE KEYS */;
/*!40000 ALTER TABLE `pkg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pkgctlg`
--

DROP TABLE IF EXISTS `pkgctlg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pkgctlg` (
  `pc_pkg` bigint(20) NOT NULL,
  `pc_enHash` varbinary(16) NOT NULL,
  `pc_infoHash` int(11) NOT NULL,
  PRIMARY KEY (`pc_pkg`,`pc_enHash`,`pc_infoHash`),
  KEY `PkgCtlg_1_ASC` (`pc_enHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pkgctlg`
--

LOCK TABLES `pkgctlg` WRITE;
/*!40000 ALTER TABLE `pkgctlg` DISABLE KEYS */;
/*!40000 ALTER TABLE `pkgctlg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmap`
--

DROP TABLE IF EXISTS `pmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmap` (
  `pmId` bigint(20) NOT NULL,
  `pmN` varchar(128) COLLATE utf8_bin NOT NULL,
  `pmC` longtext COLLATE utf8_bin,
  `pmT` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pmId`),
  UNIQUE KEY `pmN` (`pmN`),
  KEY `PMap_3_ASC` (`pmT`),
  KEY `PMap_4_ASC` (`pmId`,`pmT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmap`
--

LOCK TABLES `pmap` WRITE;
/*!40000 ALTER TABLE `pmap` DISABLE KEYS */;
INSERT INTO `pmap` VALUES (-9223372036854775808,'KEYMGR','com.tripwire.space.core.persistence.StringKeyManager','[MISSING RESOURCE: KEYMGR.typeName]'),(-9223372036854775806,'com.tripwire.space.core.persistence.IdentifiedMap','com.tripwire.space.core.persistence.IdentifiedMap$Mapping','[MISSING RESOURCE: com.tripwire.space.core.persistence.IdentifiedMap.typeName]'),(-9223372036854775805,'com.tripwire.space.core.SchemaVersion','com.tripwire.space.core.SchemaVersion$Mapping','[MISSING RESOURCE: com.tripwire.space.core.SchemaVersion.typeName]'),(-9223372036854775804,'AssObjs','com.tripwire.space.core.log.AssociatedObject$Mapping','[MISSING RESOURCE: AssObjs.typeName]'),(-9223372036854775803,'LMUsrnme','com.tripwire.space.core.log.LogMessageUsername','[MISSING RESOURCE: LMUsrnme.typeName]'),(-9223372036854775802,'com.tripwire.space.core.group.PersistentGroupable','com.tripwire.space.core.group.PersistentGroupable$Mapping','Persistent Groupable'),(-9223372036854775801,'com.tripwire.space.core.scheduler.ScheduledTaskGroupable','com.tripwire.space.core.scheduler.ScheduledTaskGroupable$Mapping','Task Groupable'),(-9223372036854775799,'tasksLnk','com.tripwire.space.core.group.Link$Mapping','[MISSING RESOURCE: tasksLnk.typeName]'),(-9223372036854775798,'RolePermissionLink','com.tripwire.space.core.security.auth.RolePermissionLink$Mapping','[MISSING RESOURCE: RolePermissionLink.typeName]'),(-9223372036854775797,'UserGroupLink','com.tripwire.space.core.security.auth.UserGroupLink$Mapping','[MISSING RESOURCE: UserGroupLink.typeName]'),(-9223372036854775796,'com.tripwire.space.core.log.LogMessage','com.tripwire.space.core.log.LogMessage$Mapping','System'),(-9223372036854775795,'com.tripwire.space.core.log.ChangeLogMessage','com.tripwire.space.core.log.ChangeLogMessage$Mapping','Change'),(-9223372036854775794,'UserRoleLink','com.tripwire.space.core.security.auth.UserRoleLink$Mapping','[MISSING RESOURCE: UserRoleLink.typeName]'),(-9223372036854775793,'tasksACLS','com.tripwire.space.core.security.auth.Acl$Mapping','[MISSING RESOURCE: tasksACLS.typeName]'),(-9223372036854775792,'ORefs','com.tripwire.space.core.persistence.PersistentReference$Mapping','[MISSING RESOURCE: ORefs.typeName]'),(-9223372036854775791,'com.tripwire.space.core.scheduler.ScheduledTaskGroup','com.tripwire.space.core.scheduler.ScheduledTaskGroup$Mapping','Task Group'),(-9223372036854775790,'com.tripwire.space.core.scheduler.ScheduledTask','com.tripwire.space.core.scheduler.ScheduledTask$Mapping','Task'),(-9223372036854775789,'com.tripwire.space.core.log.LogArchiveTask','com.tripwire.space.core.log.LogArchiveTask$Mapping','Archive Log Task'),(-9223372036854775788,'com.tripwire.space.core.log.NodeChangeLogMessage','com.tripwire.space.core.log.NodeChangeLogMessage$Mapping','Node Change'),(-9223372036854775787,'com.tripwire.space.core.log.RuleChangeLogMessage','com.tripwire.space.core.log.RuleChangeLogMessage$Mapping','Rule Change'),(-9223372036854775786,'com.tripwire.space.core.log.RadiusLogMessage','com.tripwire.space.core.log.RadiusLogMessage$Mapping','RADIUS'),(-9223372036854775785,'com.tripwire.space.core.log.ResponseLogMessage','com.tripwire.space.core.log.ResponseLogMessage$Mapping','Action'),(-9223372036854775784,'com.tripwire.space.core.log.SecurityLogMessage','com.tripwire.space.core.log.SecurityLogMessage$Mapping','Security'),(-9223372036854775783,'com.tripwire.space.core.log.UnknownLogMessage','com.tripwire.space.core.log.UnknownLogMessage$Mapping','Unknown'),(-9223372036854775782,'com.tripwire.space.core.log.SystemLogMessage','com.tripwire.space.core.log.SystemLogMessage$Mapping','System'),(-9223372036854775781,'com.tripwire.space.core.log.TacacsLogMessage','com.tripwire.space.core.log.TacacsLogMessage$Mapping','TACACS+'),(-9223372036854775780,'com.tripwire.space.core.log.TaskLogMessage','com.tripwire.space.core.log.TaskLogMessage$Mapping','Task Run'),(-9223372036854775779,'com.tripwire.space.core.log.BaselineLogMessage','com.tripwire.space.core.log.BaselineLogMessage$Mapping','Baseline'),(-9223372036854775778,'com.tripwire.space.core.log.ElementCheckLogMessage','com.tripwire.space.core.log.ElementCheckLogMessage$Mapping','Element Check'),(-9223372036854775777,'com.tripwire.space.core.log.TestLoginLogMessage','com.tripwire.space.core.log.TestLoginLogMessage$Mapping','Test Login'),(-9223372036854775776,'com.tripwire.space.core.log.JobLogMessage','com.tripwire.space.core.log.JobLogMessage$Mapping','Job'),(-9223372036854775775,'com.tripwire.space.core.log.NodeUpgradeLogMessage','com.tripwire.space.core.log.NodeUpgradeLogMessage$Mapping','Push Upgrade'),(-9223372036854775774,'com.tripwire.space.core.log.StopTaskLogMessage','com.tripwire.space.core.log.StopTaskLogMessage$Mapping','Task Stop'),(-9223372036854775773,'com.tripwire.space.core.conformance.remediator.executor.RemediatorLogMessage','com.tripwire.space.core.conformance.remediator.executor.RemediatorLogMessage$Mapping','Remediator'),(-9223372036854775772,'com.tripwire.space.core.log.SignAgentCertificateLogMessage','com.tripwire.space.core.log.SignAgentCertificateLogMessage$Mapping','Agent CSR'),(-9223372036854775771,'com.tripwire.space.core.conformance.remediator.workflow.WorkOrderHistoryLogMessage','com.tripwire.space.core.conformance.remediator.workflow.WorkOrderHistoryLogMessage$Mapping','Remediation Work Order'),(-9223372036854775770,'com.tripwire.space.core.asset.AssetManagerChangeLogMessage','com.tripwire.space.core.asset.AssetManagerChangeLogMessage$Mapping','Asset View Change'),(-9223372036854775769,'AuditAccessType','com.tripwire.space.core.log.audit.AuditAccessType','[MISSING RESOURCE: AuditAccessType.typeName]'),(-9223372036854775768,'AuditAppType','com.tripwire.space.core.log.audit.AuditApplicationType','[MISSING RESOURCE: AuditAppType.typeName]'),(-9223372036854775767,'AuditEventType','com.tripwire.space.core.log.audit.AuditEventType','[MISSING RESOURCE: AuditEventType.typeName]'),(-9223372036854775766,'com.tripwire.space.core.log.audit.AuditEventLogMessage','com.tripwire.space.core.log.audit.AuditEventLogMessage$Mapping','Audit Event'),(-9223372036854775765,'com.tripwire.space.core.conformance.PolicyScoreChangeLogMessage','com.tripwire.space.core.conformance.PolicyScoreChangeLogMessage$Mapping','Policy Score Change'),(-9223372036854775764,'com.tripwire.space.core.service.StationRegisterLogMessage','com.tripwire.space.core.service.StationRegisterLogMessage$Mapping','Agent Discovery'),(-9223372036854775763,'com.tripwire.space.core.conformance.PolicyTestLogMessage','com.tripwire.space.core.conformance.PolicyTestLogMessage$Mapping','Policy Test'),(-9223372036854775762,'com.tripwire.space.core.log.SoapClientLogMessage','com.tripwire.space.core.log.SoapClientLogMessage$Mapping','SOAP Client'),(-9223372036854775761,'com.tripwire.space.core.security.license.LicensedFeature','com.tripwire.space.core.security.license.LicensedFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.LicensedFeature.typeName]'),(-9223372036854775760,'com.tripwire.space.core.security.auth.ObjectAcl','com.tripwire.space.core.security.auth.ObjectAcl$Mapping','Access Control'),(-9223372036854775759,'com.tripwire.space.core.group.UniqueName','com.tripwire.space.core.group.UniqueName$Mapping','[MISSING RESOURCE: com.tripwire.space.core.group.UniqueName.typeName]'),(-9223372036854775752,'CLASSES','com.tripwire.space.core.persistence.PersistentClassMap','[MISSING RESOURCE: CLASSES.typeName]'),(-9223372036854775751,'ATTRIBS','com.tripwire.space.core.element.attribute.Attributes$Mapping','[MISSING RESOURCE: ATTRIBS.typeName]'),(-9223372036854775750,'CONTENTS','com.tripwire.space.core.element.Content$Mapping','[MISSING RESOURCE: CONTENTS.typeName]'),(-9223372036854775749,'com.tripwire.space.core.properties.CustomType','com.tripwire.space.core.properties.CustomType$Mapping','Custom Property'),(-9223372036854775748,'CVLnks_Vers','com.tripwire.space.core.properties.CustomValueLinks','[MISSING RESOURCE: CVLnks_Vers.typeName]'),(-9223372036854775747,'com.tripwire.space.core.element.ElementVersion','com.tripwire.space.core.element.ElementVersion$Mapping','Version'),(-9223372036854775744,'ENAMES','com.tripwire.space.core.element.PersistentElementName$Mapping','[MISSING RESOURCE: ENAMES.typeName]'),(-9223372036854775743,'CVLnks_ELEMS','com.tripwire.space.core.properties.CustomValueLinks','[MISSING RESOURCE: CVLnks_ELEMS.typeName]'),(-9223372036854775742,'ELEMS','com.tripwire.space.core.element.Element$Mapping','Element'),(-9223372036854775741,'com.tripwire.space.core.node.NodeGroupable','com.tripwire.space.core.node.NodeGroupable$Mapping','Node Groupable'),(-9223372036854775739,'nodesLnk','com.tripwire.space.core.group.Link$Mapping','[MISSING RESOURCE: nodesLnk.typeName]'),(-9223372036854775738,'nodesACLS','com.tripwire.space.core.security.auth.Acl$Mapping','[MISSING RESOURCE: nodesACLS.typeName]'),(-9223372036854775737,'CVLnks_Node','com.tripwire.space.core.properties.CustomValueLinks','[MISSING RESOURCE: CVLnks_Node.typeName]'),(-9223372036854775736,'com.tripwire.space.core.node.Node','com.tripwire.space.core.node.Node$Mapping','Node'),(-9223372036854775735,'com.tripwire.space.core.rule.RuleGroupable','com.tripwire.space.core.rule.RuleGroupable$Mapping','Rule Groupable'),(-9223372036854775733,'rulesLnk','com.tripwire.space.core.group.Link$Mapping','[MISSING RESOURCE: rulesLnk.typeName]'),(-9223372036854775732,'rulesACLS','com.tripwire.space.core.security.auth.Acl$Mapping','[MISSING RESOURCE: rulesACLS.typeName]'),(-9223372036854775731,'com.tripwire.space.core.rule.Rule','com.tripwire.space.core.rule.Rule$Mapping','Rule'),(-9223372036854775729,'com.tripwire.space.core.element.CompactVersionsTask','com.tripwire.space.core.element.CompactVersionsTask$Mapping','Compact Versions Task'),(-9223372036854775728,'com.tripwire.space.core.element.ApprovalTemplate','com.tripwire.space.core.element.ApprovalTemplate$Mapping','Promotion Approval Template'),(-9223372036854775727,'com.tripwire.space.core.node.NodeGroup','com.tripwire.space.core.node.NodeGroup$Mapping','Node Group'),(-9223372036854775726,'solarisServer','com.tripwire.space.core.node.ServerNode$Mapping','Solaris Server'),(-9223372036854775725,'windowsServer','com.tripwire.space.core.node.ServerNode$Mapping','Windows Server'),(-9223372036854775724,'linuxServer','com.tripwire.space.core.node.ServerNode$Mapping','Linux Server'),(-9223372036854775723,'aixServer','com.tripwire.space.core.node.ServerNode$Mapping','AIX Server'),(-9223372036854775722,'hpuxServer','com.tripwire.space.core.node.ServerNode$Mapping','HPUX Server'),(-9223372036854775721,'i5osServer','com.tripwire.space.core.node.ServerNode$Mapping','i5/OS Server'),(-9223372036854775720,'macosxServer','com.tripwire.space.core.node.ServerNode$Mapping','Mac OS X Server'),(-9223372036854775719,'com.tripwire.space.core.node.NodeIp','com.tripwire.space.core.node.NodeIp$Mapping','[MISSING RESOURCE: com.tripwire.space.core.node.NodeIp.typeName]'),(-9223372036854775718,'com.tripwire.space.core.security.license.FsiFeature','com.tripwire.space.core.security.license.FsiFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.FsiFeature.typeName]'),(-9223372036854775716,'com.tripwire.space.core.security.license.FsiPolicyFeature','com.tripwire.space.core.security.license.FsiPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.FsiPolicyFeature.typeName]'),(-9223372036854775714,'com.tripwire.space.core.security.license.FsiRemediationFeature','com.tripwire.space.core.security.license.FsiRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.FsiRemediationFeature.typeName]'),(-9223372036854775712,'com.tripwire.space.core.security.license.I5OsFeature','com.tripwire.space.core.security.license.I5OsFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.I5OsFeature.typeName]'),(-9223372036854775710,'com.tripwire.space.core.security.license.I5OsPolicyFeature','com.tripwire.space.core.security.license.I5OsPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.I5OsPolicyFeature.typeName]'),(-9223372036854775708,'com.tripwire.space.core.security.license.I5OsRemediationFeature','com.tripwire.space.core.security.license.I5OsRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.I5OsRemediationFeature.typeName]'),(-9223372036854775706,'DelegatingNode','com.tripwire.space.core.node.DelegatingNode$Mapping','[MISSING RESOURCE: DelegatingNode.typeName]'),(-9223372036854775705,'com.tripwire.space.core.asset.SmartNodeGroup','com.tripwire.space.core.asset.SmartNodeGroup$Mapping','Smart Node Group'),(-9223372036854775704,'com.tripwire.space.core.rule.RuleGroup','com.tripwire.space.core.rule.RuleGroup$Mapping','Rule Group'),(-9223372036854775703,'com.tripwire.space.core.rule.ScheduledRuleTask','com.tripwire.space.core.rule.ScheduledRuleTask$Mapping','Rule Task'),(-9223372036854775702,'com.tripwire.space.core.rule.ScheduledBaselineRuleTask','com.tripwire.space.core.rule.ScheduledBaselineRuleTask$Mapping','Baseline Rule Task'),(-9223372036854775701,'com.tripwire.space.core.rule.ScheduledCheckRuleTask','com.tripwire.space.core.rule.ScheduledCheckRuleTask$Mapping','Check Rule Task'),(-9223372036854775700,'ElementSummary','com.tripwire.space.core.rule.ElementSummary$Mapping','[MISSING RESOURCE: ElementSummary.typeName]'),(-9223372036854775699,'LastRuleRunStatus','com.tripwire.space.core.rule.LastRuleRunStatus$Mapping','[MISSING RESOURCE: LastRuleRunStatus.typeName]'),(-9223372036854775698,'OutOfSyncPair','com.tripwire.space.core.rule.OutOfSyncNodeRule$Mapping','[MISSING RESOURCE: OutOfSyncPair.typeName]'),(-9223372036854775697,'com.tripwire.space.core.email.SmtpEmailServer','com.tripwire.space.core.email.SmtpEmailServer$Mapping','SMTP E-mail Server'),(-9223372036854775696,'com.tripwire.space.core.variables.StringVariable','com.tripwire.space.core.variables.StringVariable$Mapping','Variable'),(-9223372036854775695,'com.tripwire.space.core.responses.ResponseGroupable','com.tripwire.space.core.responses.ResponseGroupable$Mapping','Action Groupable'),(-9223372036854775693,'responsesLnk','com.tripwire.space.core.group.OrderedLink$Mapping','[MISSING RESOURCE: responsesLnk.typeName]'),(-9223372036854775692,'responsesACLS','com.tripwire.space.core.security.auth.Acl$Mapping','[MISSING RESOURCE: responsesACLS.typeName]'),(-9223372036854775691,'RespLnks','com.tripwire.space.core.responses.ResponseLinks','[MISSING RESOURCE: RespLnks.typeName]'),(-9223372036854775690,'com.tripwire.space.core.responses.Response','com.tripwire.space.core.responses.Response$Mapping','Action'),(-9223372036854775689,'com.tripwire.space.core.responses.ResponseGroup','com.tripwire.space.core.responses.ResponseGroup$Mapping','Action Group'),(-9223372036854775688,'com.tripwire.space.core.responses.EmailResponse','com.tripwire.space.core.responses.EmailResponse$Mapping','E-mail Action'),(-9223372036854775687,'com.tripwire.space.core.responses.OutsideMaintWindowResponse','com.tripwire.space.core.responses.OutsideMaintWindowResponse$Mapping','Change Window Action'),(-9223372036854775686,'com.tripwire.space.core.responses.RunReportResponse','com.tripwire.space.core.responses.RunReportResponse$Mapping','Run Report Action'),(-9223372036854775685,'com.tripwire.space.core.responses.RunRuleResponse','com.tripwire.space.core.responses.RunRuleResponse$Mapping','Run Rule Action'),(-9223372036854775684,'com.tripwire.space.core.responses.RunTaskResponse','com.tripwire.space.core.responses.RunTaskResponse$Mapping','Run Task Action'),(-9223372036854775683,'com.tripwire.space.core.responses.SetCustomValueResponse','com.tripwire.space.core.responses.SetCustomValueResponse$Mapping','Set Custom Value Action'),(-9223372036854775682,'com.tripwire.space.core.responses.SetSeverityResponse','com.tripwire.space.core.responses.SetSeverityResponse$Mapping','Severity Override Action'),(-9223372036854775681,'com.tripwire.space.core.responses.SnmpEventResponse','com.tripwire.space.core.responses.SnmpEventResponse$Mapping','SNMP Action'),(-9223372036854775680,'com.tripwire.space.core.responses.SyslogResponse','com.tripwire.space.core.responses.SyslogResponse$Mapping','Syslog Action'),(-9223372036854775679,'com.tripwire.space.core.responses.snmp.TripwireUsmAgent','com.tripwire.space.core.responses.snmp.TripwireUsmAgent$Mapping','[MISSING RESOURCE: com.tripwire.space.core.responses.snmp.TripwireUsmAgent.typeName]'),(-9223372036854775678,'com.tripwire.space.core.responses.UpdateResponse','com.tripwire.space.core.responses.UpdateResponse$Mapping','Update Baseline Action'),(-9223372036854775677,'com.tripwire.space.core.responses.ApplyTagResponse','com.tripwire.space.core.responses.ApplyTagResponse$Mapping','Tag Action'),(-9223372036854775676,'com.tripwire.space.core.responses.TagToApplyReference','com.tripwire.space.core.responses.TagToApplyReference$Mapping','[MISSING RESOURCE: com.tripwire.space.core.responses.TagToApplyReference.typeName]'),(-9223372036854775675,'SevScopedRsp','com.tripwire.space.core.responses.SeverityScopedResponse$Mapping','Severity Range Conditional Action'),(-9223372036854775674,'TmRngRsp','com.tripwire.space.core.responses.TimeRangeResponse$Mapping','Time Range Conditional Action'),(-9223372036854775673,'TmWin','com.tripwire.space.core.responses.TimeWindow$Mapping','[MISSING RESOURCE: TmWin.typeName]'),(-9223372036854775672,'com.tripwire.space.core.responses.PolicyTestPredicateResponse','com.tripwire.space.core.responses.PolicyTestPredicateResponse$Mapping','Policy Test Result Conditional Action'),(-9223372036854775671,'com.tripwire.space.core.responses.PolicyTestPredicateResponse$Event','com.tripwire.space.core.responses.PolicyTestPredicateResponse$Event$Mapping','[MISSING RESOURCE: com.tripwire.space.core.responses.PolicyTestPredicateResponse$Event.typeName]'),(-9223372036854775670,'com.tripwire.space.core.responses.PromoteByReferenceResponse','com.tripwire.space.core.responses.PromoteByReferenceResponse$Mapping','Promote-By-Reference Action'),(-9223372036854775669,'com.tripwire.space.core.responses.PromoteByMatchResponse','com.tripwire.space.core.responses.PromoteByMatchResponse$Mapping','Promote-By-Match Action'),(-9223372036854775668,'com.tripwire.space.core.responses.PromoteVersionResponse','com.tripwire.space.core.responses.PromoteVersionResponse$Mapping','Promote Specific Versions Action'),(-9223372036854775667,'CondRsp','com.tripwire.space.core.responses.ConditionalResponse$Mapping','Conditional Action'),(-9223372036854775666,'com.tripwire.space.core.responses.AttributesConditionalResponse','com.tripwire.space.core.responses.AttributesConditionalResponse$Mapping','Attributes Conditional Action'),(-9223372036854775665,'com.tripwire.space.core.responses.AuditTrailConditionalResponse','com.tripwire.space.core.responses.AuditTrailConditionalResponse$Mapping','Audit Trail Conditional Action'),(-9223372036854775664,'com.tripwire.space.core.responses.ContentConditionalResponse','com.tripwire.space.core.responses.ContentConditionalResponse$Mapping','Content Conditional Action'),(-9223372036854775663,'com.tripwire.space.core.responses.CustomValuesConditionalResponse','com.tripwire.space.core.responses.CustomValuesConditionalResponse$Mapping','Custom Properties Conditional Action'),(-9223372036854775662,'com.tripwire.space.core.responses.ElementNameConditionalResponse','com.tripwire.space.core.responses.ElementNameConditionalResponse$Mapping','Element Name Conditional Action'),(-9223372036854775661,'com.tripwire.space.core.responses.PackageConditionalResponse','com.tripwire.space.core.responses.PackageConditionalResponse$Mapping','Package Conditional Action'),(-9223372036854775660,'ChangeTypeRsp','com.tripwire.space.core.responses.ChangeTypePredicateResponse$Mapping','Change Type Conditional Action'),(-9223372036854775659,'com.tripwire.space.core.responses.TagConditionalResponse','com.tripwire.space.core.responses.TagConditionalResponse$Mapping','Tag Conditional Action'),(-9223372036854775658,'ByRefRsp','com.tripwire.space.core.responses.ByReferencePredicateResponse$Mapping','By-Reference Conditional Action'),(-9223372036854775657,'ByMatchRsp','com.tripwire.space.core.responses.ByMatchPredicateResponse$Mapping','By-Match Conditional Action'),(-9223372036854775656,'RefNodeRsp','com.tripwire.space.core.responses.ByReferenceAttributesPredicateResponse$Mapping','By-Reference Attributes Conditional Action'),(-9223372036854775655,'com.tripwire.space.core.security.license.License','com.tripwire.space.core.security.license.License$Mapping','License'),(-9223372036854775654,'com.tripwire.space.core.job.JobGroupable','com.tripwire.space.core.job.JobGroupable$Mapping','Job Groupable'),(-9223372036854775652,'jobsLnk','com.tripwire.space.core.group.Link$Mapping','Jobs Links'),(-9223372036854775651,'jobsACLS','com.tripwire.space.core.security.auth.Acl$Mapping','Jobs ACLs'),(-9223372036854775650,'com.tripwire.space.core.job.Job','com.tripwire.space.core.job.Job$Mapping','Job'),(-9223372036854775649,'com.tripwire.space.core.job.JobGroup','com.tripwire.space.core.job.JobGroup$Mapping','Job Group'),(-9223372036854775648,'com.tripwire.space.core.job.ByMatchJob','com.tripwire.space.core.job.ByMatchJob$Mapping','By Match Job'),(-9223372036854775647,'com.tripwire.space.core.job.ByReferenceJob','com.tripwire.space.core.job.ByReferenceJob$Mapping','By Reference Job'),(-9223372036854775646,'JobRuleLnks','com.tripwire.space.core.job.JobRuleLinks','Job-Rule Links'),(-9223372036854775645,'jnElems','com.tripwire.space.core.job.JobNodeElements','[MISSING RESOURCE: jnElems.typeName]'),(-9223372036854775644,'JobNodeLnks','com.tripwire.space.core.job.JobNodeInfo$Mapping','Job-Node Links'),(-9223372036854775643,'com.tripwire.space.core.persistence.PersistentName','com.tripwire.space.core.persistence.PersistentName$Mapping','[MISSING RESOURCE: com.tripwire.space.core.persistence.PersistentName.typeName]'),(-9223372036854775642,'com.tripwire.space.core.persistence.SavedSearch','com.tripwire.space.core.persistence.SavedSearch$Mapping','Saved Search'),(-9223372036854775641,'com.tripwire.space.core.security.login.LoginStrategyDescriptor','com.tripwire.space.core.security.login.LoginStrategyDescriptor$Mapping','Login Strategy Descriptor'),(-9223372036854775640,'com.tripwire.space.core.security.auth.Password','com.tripwire.space.core.security.auth.Password$Mapping','Password'),(-9223372036854775639,'com.tripwire.space.core.security.auth.AuthPrincipal','com.tripwire.space.core.security.auth.AuthPrincipal$Mapping','Auth Principal'),(-9223372036854775638,'com.tripwire.space.core.security.auth.Role','com.tripwire.space.core.security.auth.Role$Mapping','Role'),(-9223372036854775637,'com.tripwire.space.core.security.auth.UserGroup','com.tripwire.space.core.security.auth.UserGroup$Mapping','User Group'),(-9223372036854775636,'com.tripwire.space.core.security.auth.User','com.tripwire.space.core.security.auth.User$Mapping','User'),(-9223372036854775635,'com.tripwire.space.core.security.auth.ObjectPermission','com.tripwire.space.core.security.auth.ObjectPermission$Mapping','Permission'),(-9223372036854775634,'UsrLnks','com.tripwire.space.core.security.auth.UserElementLinks','[MISSING RESOURCE: UsrLnks.typeName]'),(-9223372036854775633,'com.tripwire.space.core.security.license.TestingFeature','com.tripwire.space.core.security.license.TestingFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.TestingFeature.typeName]'),(-9223372036854775632,'com.tripwire.space.core.security.license.TestingPolicyFeature','com.tripwire.space.core.security.license.TestingPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.TestingPolicyFeature.typeName]'),(-9223372036854775631,'com.tripwire.space.core.security.license.VMWareESXFeature','com.tripwire.space.core.security.license.VMWareESXFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.VMWareESXFeature.typeName]'),(-9223372036854775630,'com.tripwire.space.core.security.license.VMWareESXPolicyFeature','com.tripwire.space.core.security.license.VMWareESXPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.VMWareESXPolicyFeature.typeName]'),(-9223372036854775629,'com.tripwire.space.core.security.license.TestingRemediationFeature','com.tripwire.space.core.security.license.TestingRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.TestingRemediationFeature.typeName]'),(-9223372036854775628,'com.tripwire.space.core.security.license.VMWareESXRemediationFeature','com.tripwire.space.core.security.license.VMWareESXRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.VMWareESXRemediationFeature.typeName]'),(-9223372036854775627,'com.tripwire.space.core.security.license.NodeFeature','com.tripwire.space.core.security.license.NodeFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.NodeFeature.typeName]'),(-9223372036854775626,'com.tripwire.space.core.element.state.SeverityRange','com.tripwire.space.core.element.state.SeverityRange$Mapping','Severity Range'),(-9223372036854775625,'com.tripwire.space.core.element.pkg.InstallationPackage','com.tripwire.space.core.element.pkg.InstallationPackage$Mapping','Installation Package'),(-9223372036854775624,'com.tripwire.space.core.element.pkg.PersistentPackageCatalogueEntry','com.tripwire.space.core.element.pkg.PersistentPackageCatalogueEntry$Mapping','Persistent Package Catalogue Entry'),(-9223372036854775623,'com.tripwire.space.core.properties.CustomBooleanValue','com.tripwire.space.core.properties.CustomBooleanValue$Mapping','[MISSING RESOURCE: com.tripwire.space.core.properties.CustomBooleanValue.typeName]'),(-9223372036854775622,'com.tripwire.space.core.properties.CustomBooleanType','com.tripwire.space.core.properties.CustomBooleanType$Mapping','Yes/No'),(-9223372036854775621,'com.tripwire.space.core.properties.CustomCpeNameValue','com.tripwire.space.core.properties.CustomCpeNameValue$Mapping','[MISSING RESOURCE: com.tripwire.space.core.properties.CustomCpeNameValue.typeName]'),(-9223372036854775620,'com.tripwire.space.core.properties.CustomCpeNameType','com.tripwire.space.core.properties.CustomCpeNameType$Mapping','CPE Name'),(-9223372036854775619,'com.tripwire.space.core.properties.CustomDateValue','com.tripwire.space.core.properties.CustomDateValue$Mapping','[MISSING RESOURCE: com.tripwire.space.core.properties.CustomDateValue.typeName]'),(-9223372036854775618,'com.tripwire.space.core.properties.CustomDateType','com.tripwire.space.core.properties.CustomDateType$Mapping','Date'),(-9223372036854775617,'com.tripwire.space.core.properties.CustomNumericValue','com.tripwire.space.core.properties.CustomNumericValue$Mapping','[MISSING RESOURCE: com.tripwire.space.core.properties.CustomNumericValue.typeName]'),(-9223372036854775616,'com.tripwire.space.core.properties.CustomNumericType','com.tripwire.space.core.properties.CustomNumericType$Mapping','Number'),(-9223372036854775615,'com.tripwire.space.core.properties.CustomStringValue','com.tripwire.space.core.properties.CustomStringValue$Mapping','[MISSING RESOURCE: com.tripwire.space.core.properties.CustomStringValue.typeName]'),(-9223372036854775614,'com.tripwire.space.core.properties.CustomSelectType','com.tripwire.space.core.properties.CustomSelectType$Mapping','Selection'),(-9223372036854775613,'com.tripwire.space.core.properties.CustomStringType','com.tripwire.space.core.properties.CustomStringType$Mapping','Text'),(-9223372036854775612,'BenchmarkCpeLnks','com.tripwire.space.core.conformance.scap.BenchmarkCpeLinks','[MISSING RESOURCE: BenchmarkCpeLnks.typeName]'),(-9223372036854775611,'com.tripwire.space.core.conformance.PolicyTestGroupable','com.tripwire.space.core.conformance.PolicyTestGroupable$Mapping','Policy Test Groupable'),(-9223372036854775609,'policyLnk','com.tripwire.space.core.group.WeightedLink$Mapping','[MISSING RESOURCE: policyLnk.typeName]'),(-9223372036854775608,'policyACLS','com.tripwire.space.core.security.auth.Acl$Mapping','[MISSING RESOURCE: policyACLS.typeName]'),(-9223372036854775607,'com.tripwire.space.core.conformance.PolicyTest','com.tripwire.space.core.conformance.PolicyTest$Mapping','Policy Test'),(-9223372036854775606,'VersionTestRules','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: VersionTestRules.typeName]'),(-9223372036854775605,'com.tripwire.space.core.conformance.remediator.RemediatorAffectedElementName','com.tripwire.space.core.conformance.remediator.RemediatorAffectedElementName$Mapping','Remediator Affected Element Name'),(-9223372036854775604,'com.tripwire.space.core.conformance.remediator.Remediator','com.tripwire.space.core.conformance.remediator.Remediator$Mapping','Remediator'),(-9223372036854775603,'com.tripwire.space.core.conformance.VersionTest','com.tripwire.space.core.conformance.VersionTest$Mapping','Test'),(-9223372036854775602,'com.tripwire.space.core.conformance.AttributeTest','com.tripwire.space.core.conformance.AttributeTest$Mapping','Attribute Test'),(-9223372036854775601,'com.tripwire.space.core.conformance.ContentTest','com.tripwire.space.core.conformance.ContentTest$Mapping','Content Test'),(-9223372036854775600,'com.tripwire.space.core.conformance.ExistenceTest','com.tripwire.space.core.conformance.ExistenceTest$Mapping','Existence Test'),(-9223372036854775599,'com.tripwire.space.core.conformance.PolicyTestGroup','com.tripwire.space.core.conformance.PolicyTestGroup$Mapping','Policy Test Group'),(-9223372036854775598,'com.tripwire.space.core.conformance.ScoringRange','com.tripwire.space.core.conformance.ScoringRange$Mapping','Scoring Range'),(-9223372036854775597,'PolicyNodes','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicyNodes.typeName]'),(-9223372036854775596,'com.tripwire.space.core.conformance.Policy','com.tripwire.space.core.conformance.Policy$Mapping','Policy'),(-9223372036854775595,'PolicyTestResult','com.tripwire.space.core.conformance.PolicyTestResult$Mapping','Policy Test Result'),(-9223372036854775594,'VersionTestResult','com.tripwire.space.core.conformance.VersionTestResult$Mapping','[MISSING RESOURCE: VersionTestResult.typeName]'),(-9223372036854775593,'ExcludedNodes','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: ExcludedNodes.typeName]'),(-9223372036854775592,'LastPolicyTestResult','com.tripwire.space.core.conformance.LastPolicyTestResult$Mapping','[MISSING RESOURCE: LastPolicyTestResult.typeName]'),(-9223372036854775591,'LastVersionTestResult','com.tripwire.space.core.conformance.LastVersionTestResult$Mapping','[MISSING RESOURCE: LastVersionTestResult.typeName]'),(-9223372036854775590,'com.tripwire.space.core.conformance.PolicyScore','com.tripwire.space.core.conformance.PolicyScore$Mapping','[MISSING RESOURCE: com.tripwire.space.core.conformance.PolicyScore.typeName]'),(-9223372036854775589,'PolicyRescore','com.tripwire.space.core.conformance.DefaultPolicyScoreUpdater$RescoreData$Mapping','[MISSING RESOURCE: PolicyRescore.typeName]'),(-9223372036854775588,'com.tripwire.space.core.batch.RunIdentifier','com.tripwire.space.core.batch.RunIdentifier$Mapping','Run Identifier'),(-9223372036854775587,'com.tripwire.space.core.conformance.remediator.executor.RemediatorRunId','com.tripwire.space.core.conformance.remediator.executor.RemediatorRunId$Mapping','Remediation Run'),(-9223372036854775586,'com.tripwire.space.core.conformance.remediator.workflow.RemediationEntry','com.tripwire.space.core.conformance.remediator.workflow.RemediationEntry$Mapping','Remediation Entry'),(-9223372036854775585,'com.tripwire.space.core.util.PersistentSequenceGenerator','com.tripwire.space.core.util.PersistentSequenceGenerator$Mapping','[MISSING RESOURCE: com.tripwire.space.core.util.PersistentSequenceGenerator.typeName]'),(-9223372036854775584,'com.tripwire.space.core.conformance.remediator.workflow.RemediationWorkOrder','com.tripwire.space.core.conformance.remediator.workflow.RemediationWorkOrder$Mapping','Remediation Work Order'),(-9223372036854775583,'WorkOrderReports','com.tripwire.space.core.conformance.remediator.workflow.WorkOrderReports','[MISSING RESOURCE: WorkOrderReports.typeName]'),(-9223372036854775582,'com.tripwire.space.core.conformance.remediator.workflow.PostRemediationCommand','com.tripwire.space.core.conformance.remediator.workflow.PostRemediationCommand$Mapping','Post-Remediation Service Command'),(-9223372036854775581,'WaiverGrantor','com.tripwire.space.core.conformance.waiver.WaiverGrantors','[MISSING RESOURCE: WaiverGrantor.typeName]'),(-9223372036854775580,'WaiverResponsible','com.tripwire.space.core.conformance.waiver.WaiverResponsibles','[MISSING RESOURCE: WaiverResponsible.typeName]'),(-9223372036854775579,'com.tripwire.space.core.conformance.waiver.PolicyWaiver','com.tripwire.space.core.conformance.waiver.PolicyWaiver$Mapping','Policy Waiver'),(-9223372036854775578,'WaiverTestNode','com.tripwire.space.core.conformance.waiver.WaiverTestNodeMapping','[MISSING RESOURCE: WaiverTestNode.typeName]'),(-9223372036854775577,'com.tripwire.space.core.conformance.scap.ScapBenchmark','com.tripwire.space.core.conformance.scap.ScapBenchmark$Mapping','Benchmark'),(-9223372036854775576,'com.tripwire.space.core.conformance.PolicyTestExpressionNode','com.tripwire.space.core.conformance.PolicyTestExpressionNode$Mapping','Policy Test Expression Node'),(-9223372036854775575,'com.tripwire.space.core.conformance.PolicyTestScapReference','com.tripwire.space.core.conformance.PolicyTestScapReference$Mapping','[MISSING RESOURCE: com.tripwire.space.core.conformance.PolicyTestScapReference.typeName]'),(-9223372036854775574,'com.tripwire.space.core.conformance.VersionTestResultsEvaluator','com.tripwire.space.core.conformance.VersionTestResultsEvaluator$Mapping','Version Test Results Evaluator'),(-9223372036854775573,'com.tripwire.space.core.conformance.OvalVariableTest','com.tripwire.space.core.conformance.OvalVariableTest$Mapping','OVAL Variable Test'),(-9223372036854775572,'com.tripwire.space.core.conformance.scap.ScapCceDefinition','com.tripwire.space.core.conformance.scap.ScapCceDefinition$Mapping','CCE Entry'),(-9223372036854775571,'CceParameter','com.tripwire.space.core.conformance.scap.ScapCceDefinition$ParameterMapping','[MISSING RESOURCE: CceParameter.typeName]'),(-9223372036854775570,'CceMechanism','com.tripwire.space.core.conformance.scap.ScapCceDefinition$TechnicalMechanismMapping','[MISSING RESOURCE: CceMechanism.typeName]'),(-9223372036854775569,'com.tripwire.space.core.homepage.HomePage','com.tripwire.space.core.homepage.HomePage$Mapping','Home Page'),(-9223372036854775568,'com.tripwire.space.core.homepage.HomePageWidget','com.tripwire.space.core.homepage.HomePageWidget$Mapping','Home Page Widget'),(-9223372036854775567,'com.tripwire.space.core.homepage.AlertWidget','com.tripwire.space.core.homepage.AlertWidget$Mapping','Alert Widget'),(-9223372036854775566,'com.tripwire.space.core.homepage.EmbeddedReportWidget','com.tripwire.space.core.homepage.EmbeddedReportWidget$Mapping','Embedded Report Widget'),(-9223372036854775565,'com.tripwire.space.core.homepage.HtmlContentWidget','com.tripwire.space.core.homepage.HtmlContentWidget$Mapping','Html Content Widget'),(-9223372036854775564,'com.tripwire.space.core.homepage.ReportListWidget','com.tripwire.space.core.homepage.ReportListWidget$Mapping','Report List Widget'),(-9223372036854775563,'com.tripwire.space.core.homepage.ShortcutWidget','com.tripwire.space.core.homepage.ShortcutWidget$Mapping','Shortcut Widget'),(-9223372036854775562,'com.tripwire.space.core.homepage.RemediationWorkOrderWidget','com.tripwire.space.core.homepage.RemediationWorkOrderWidget$Mapping','Remediation Work Order Widget'),(-9223372036854775561,'com.tripwire.space.core.homepage.TLCEventWidget','com.tripwire.space.core.homepage.TLCEventWidget$Mapping','TLC Event Widget'),(-9223372036854775560,'com.tripwire.space.core.homepage.FailingTestWidget','com.tripwire.space.core.homepage.FailingTestWidget$Mapping','Failing Test Widget'),(-9223372036854775559,'com.tripwire.space.core.homepage.ScapWidget','com.tripwire.space.core.homepage.ScapWidget$Mapping','SCAP Widget'),(-9223372036854775558,'AlertReadTime','com.tripwire.space.core.homepage.alert.UserAlertReadTime$Mapping','[MISSING RESOURCE: AlertReadTime.typeName]'),(-9223372036854775557,'com.tripwire.space.core.homepage.AlertGenerator','com.tripwire.space.core.homepage.AlertGenerator$Mapping','Alert Generator'),(-9223372036854775556,'com.tripwire.space.core.homepage.alert.WaiverExpirationAlertGenerator','com.tripwire.space.core.homepage.alert.WaiverExpirationAlertGenerator$Mapping','Policy Waiver Expiration Alert Generator'),(-9223372036854775555,'com.tripwire.space.core.homepage.alert.DiscoveredNodeAlertGenerator','com.tripwire.space.core.homepage.alert.DiscoveredNodeAlertGenerator$Mapping','Node Discovery Alert Generator'),(-9223372036854775554,'com.tripwire.space.core.homepage.alert.NodeErrorAlertGenerator','com.tripwire.space.core.homepage.alert.NodeErrorAlertGenerator$Mapping','Node Error Alert Generator'),(-9223372036854775553,'com.tripwire.space.core.homepage.alert.PolicyScoreChangeAlertGenerator','com.tripwire.space.core.homepage.alert.PolicyScoreChangeAlertGenerator$Mapping','Policy Score Change Alert Generator'),(-9223372036854775552,'com.tripwire.space.core.homepage.alert.RemediationMessageAlertGenerator','com.tripwire.space.core.homepage.alert.RemediationMessageAlertGenerator$Mapping','Remediation Message Alert Generator'),(-9223372036854775551,'com.tripwire.space.core.homepage.alert.VcNodeChangeAlertGenerator','com.tripwire.space.core.homepage.alert.VcNodeChangeAlertGenerator$Mapping','VI Node Change Alert Generator'),(-9223372036854775550,'com.tripwire.space.core.homepage.CustomerCenterHomePage','com.tripwire.space.core.homepage.CustomerCenterHomePage$Mapping','Customer Center Home Page'),(-9223372036854775549,'PROMTCH','com.tripwire.space.core.command.SavedPromoteMatch$Mapping','[MISSING RESOURCE: PROMTCH.typeName]'),(-9223372036854775548,'ComponentInstalls','com.tripwire.space.core.plugin.ComponentInstallation$Mapping','[MISSING RESOURCE: ComponentInstalls.typeName]'),(-9223372036854775547,'com.tripwire.space.core.plugin.PlugInComponent','com.tripwire.space.core.plugin.PlugInComponent$Mapping','Plug In Component'),(-9223372036854775546,'com.tripwire.space.core.report.ReportGroupable','com.tripwire.space.core.report.ReportGroupable$Mapping','Report Groupable'),(-9223372036854775544,'reportsLnk','com.tripwire.space.core.group.Link$Mapping','[MISSING RESOURCE: reportsLnk.typeName]'),(-9223372036854775543,'com.tripwire.space.core.report.ReportGroup','com.tripwire.space.core.report.ReportGroup$Mapping','Report Group'),(-9223372036854775542,'com.tripwire.space.core.report.Report','com.tripwire.space.core.report.Report$Mapping','Report'),(-9223372036854775541,'HP_UserHomePages','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: HP_UserHomePages.typeName]'),(-9223372036854775540,'HP_WidgetReports','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: HP_WidgetReports.typeName]'),(-9223372036854775539,'HP_WorkflowWgtOwners','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: HP_WorkflowWgtOwners.typeName]'),(-9223372036854775538,'HP_WorkflowWgtOwnerG','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: HP_WorkflowWgtOwnerG.typeName]'),(-9223372036854775537,'HP_WorkflowWgtCreators','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: HP_WorkflowWgtCreators.typeName]'),(-9223372036854775104,'com.tripwire.space.core.group.PurgeUnlinkedTask','com.tripwire.space.core.group.PurgeUnlinkedTask$Mapping','Clear Unlinked Groups Task'),(-9223372036854775068,'com.tripwire.space.core.security.license.DataMartFeature','com.tripwire.space.core.security.license.DataMartFeature$Mapping','[MISSING RESOURCE: com.tripwire.space.core.security.license.DataMartFeature.typeName]'),(-9223372036854775045,'com.tripwire.ipdevice.core.CustomNodeType','com.tripwire.ipdevice.core.CustomNodeType$Mapping','Custom Node Type'),(-9223372036854775044,'passport','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Nortel Passport'),(-9223372036854775043,'nokia_ipso','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Nokia IPSO'),(-9223372036854775042,'cisco_pix7','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Cisco PIX 7'),(-9223372036854775041,'alteonwebos','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Nortel Alteon'),(-9223372036854775040,'cisco_pix','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Cisco PIX'),(-9223372036854775039,'alcatel','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Alcatel OmniSwitch 6/7/8xxx'),(-9223372036854775038,'extreme','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Extreme'),(-9223372036854775037,'f5_bigip','com.tripwire.ipdevice.core.ScriptedNode$Mapping','F5 BigIP'),(-9223372036854775036,'foundry','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Foundry Device'),(-9223372036854775035,'marconi_asx','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Marconi ASX/TNX'),(-9223372036854775034,'cisco_vpn','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Cisco VPN'),(-9223372036854775033,'hp_procurve','com.tripwire.ipdevice.core.ScriptedNode$Mapping','HP ProCurve M'),(-9223372036854775032,'cisco_catos','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Cisco CatOS'),(-9223372036854775031,'vmware_esx','com.tripwire.ipdevice.core.ScriptedNode$Mapping','VMware ESX Server'),(-9223372036854775030,'cat_1900','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Cisco Catalyst 1900/2820 Switch'),(-9223372036854775029,'hp_xlgl','com.tripwire.ipdevice.core.ScriptedNode$Mapping','HP ProCurve XL'),(-9223372036854775028,'netscreen','com.tripwire.ipdevice.core.ScriptedNode$Mapping','NetScreen'),(-9223372036854775027,'unix','com.tripwire.ipdevice.core.ScriptedNode$Mapping','UNIX System'),(-9223372036854775026,'cisco_ios','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Cisco IOS'),(-9223372036854775025,'juniper_m','com.tripwire.ipdevice.core.ScriptedNode$Mapping','Juniper M/T-Series'),(-9223372036854775024,'passport_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nortel Passport Configuration Rule'),(-9223372036854775023,'f5_bigip_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','F5 BigIP Configuration Rule'),(-9223372036854775022,'cisco_ios_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco IOS Configuration Rule'),(-9223372036854775021,'cisco_pix_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco PIX Configuration Rule'),(-9223372036854775020,'nokia_ipso_cp41_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nokia IPSO Check Point 4.1 Rule'),(-9223372036854775019,'netscreen_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','NetScreen Configuration Rule'),(-9223372036854775018,'unix_file','com.tripwire.ipdevice.core.ScriptedRule$Mapping','UNIX File Rule'),(-9223372036854775017,'alteonwebos_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nortel Alteon Configuration Rule'),(-9223372036854775016,'juniper_m_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Juniper M/T-Series Configuration Rule'),(-9223372036854775015,'nokia_ipso_cpng_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nokia IPSO Check Point NG Rule'),(-9223372036854775014,'extreme_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Extreme Configuration Rule'),(-9223372036854775013,'cisco_pix7_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco PIX 7 Configuration Rule'),(-9223372036854775012,'cat_1900_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco Catalyst 1900/2820 Configuration Rule'),(-9223372036854775011,'status_check','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Status Check Rule'),(-9223372036854775010,'nokia_ipso_iss_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nokia IPSO ISS RealSecure Rule'),(-9223372036854775009,'vmware_esx_file','com.tripwire.ipdevice.core.ScriptedRule$Mapping','VMware ESX File Rule'),(-9223372036854775008,'cisco_catos_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco CatOS Configuration Rule'),(-9223372036854775007,'alcatel_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Alcatel OmniSwitch 6/7/8xxx Configuration Rule'),(-9223372036854775006,'command_validation_rule','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Command Output Validation Rule'),(-9223372036854775005,'generic_rule','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Custom File Rule'),(-9223372036854775004,'marconi_asx_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Marconi ASX/TNX Configuration Rule'),(-9223372036854775003,'nokia_ipso_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nokia IPSO Configuration Rule'),(-9223372036854775002,'hp_xlgl_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','HP ProCurve XL Configuration Rule'),(-9223372036854775001,'foundry_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Foundry Configuration Rule'),(-9223372036854775000,'ios_access_lists_rule','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco IOS Access Lists Rule'),(-9223372036854774999,'nokia_ipso_cpngx_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Nokia IPSO Check Point NGX Rule'),(-9223372036854774998,'cisco_vpn_rule','com.tripwire.ipdevice.core.ScriptedRule$Mapping','Cisco VPN Configuration Rule'),(-9223372036854774997,'hp_procurve_config','com.tripwire.ipdevice.core.ScriptedRule$Mapping','HP ProCurve M Configuration Rule'),(-9223372036854774996,'passport_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Nortel Passport Restore Configuration Action'),(-9223372036854774995,'f5_bigip_config_restore','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','F5 BigIP Restore Configuration Action'),(-9223372036854774994,'cisco_ios_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Cisco IOS Restore Configuration Action'),(-9223372036854774993,'cisco_pix_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Cisco PIX Restore Configuration Action'),(-9223372036854774992,'netscreen_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','NetScreen Restore Configuration Action'),(-9223372036854774991,'unix_file_restore','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','UNIX Restore File Action'),(-9223372036854774990,'alteonwebos_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Nortel Alteon Restore Configuration Action'),(-9223372036854774989,'juniper_m_config_restore','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Juniper M/T-Series Restore Configuration Action'),(-9223372036854774988,'extreme_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Extreme Restore Configuration Action'),(-9223372036854774987,'cat_1900_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Cisco Catalyst 1900/2820 Restore Configuration Action'),(-9223372036854774986,'vmware_esx_file_restore','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','VMware ESX Restore File Action'),(-9223372036854774985,'cisco_catos_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Cisco CatOS Restore Configuration Action'),(-9223372036854774984,'alcatel_config_restore','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Alcatel OmniSwitch 6/7/8xxx Restore Configuration Action'),(-9223372036854774983,'command_response','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Run Command Action'),(-9223372036854774982,'marconi_asx_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Marconi ASX/TNX Restore Configuration Action'),(-9223372036854774981,'foundry_restoreConfig','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','Foundry Restore Configuration Action'),(-9223372036854774980,'hp_procurve_config_restore','com.tripwire.ipdevice.core.ScriptedResponse$Mapping','HP ProCurve M Restore Configuration Action'),(-9223372036854774979,'com.tripwire.ipdevice.core.NdiFeature','com.tripwire.ipdevice.core.NdiFeature$Mapping','[MISSING RESOURCE: com.tripwire.ipdevice.core.NdiFeature.typeName]'),(-9223372036854774977,'com.tripwire.ipdevice.core.NdiPolicyFeature','com.tripwire.ipdevice.core.NdiPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.ipdevice.core.NdiPolicyFeature.typeName]'),(-9223372036854774975,'com.tripwire.ipdevice.core.NdiRemediationFeature','com.tripwire.ipdevice.core.NdiRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.ipdevice.core.NdiRemediationFeature.typeName]'),(-9223372036854774970,'com.tripwire.si.core.rule.ActiveRule','com.tripwire.si.core.rule.ActiveRule$Mapping','[MISSING RESOURCE: com.tripwire.si.core.rule.ActiveRule.typeName]'),(-9223372036854774969,'com.tripwire.si.core.rule.CommandExecutionRuleBase','com.tripwire.si.core.rule.CommandExecutionRuleBase$Mapping','[MISSING RESOURCE: com.tripwire.si.core.rule.CommandExecutionRuleBase.typeName]'),(-9223372036854774968,'com.tripwire.si.core.rule.CommandExecutionRule','com.tripwire.si.core.rule.CommandExecutionRule$Mapping','Command Output Capture Rule'),(-9223372036854774967,'com.tripwire.si.core.rule.RemoteCommandExecutionRule','com.tripwire.si.core.rule.RemoteCommandExecutionRule$Mapping','VMware ESX Service Console Rule'),(-9223372036854774966,'com.tripwire.si.core.log.LogTransferRule','com.tripwire.si.core.log.LogTransferRule$Mapping','Log Transfer Rule'),(-9223372036854774965,'Cans','com.tripwire.si.core.rule.CriteriaAttributeNameSet$Mapping','[MISSING RESOURCE: Cans.typeName]'),(-9223372036854774964,'com.tripwire.si.core.rule.PersistentCriteria','com.tripwire.si.core.rule.PersistentCriteria$Mapping','Criteria Set'),(-9223372036854774963,'com.tripwire.si.core.rule.CanonicalCriteria','com.tripwire.si.core.rule.CanonicalCriteria$Mapping','Criteria Set'),(-9223372036854774962,'com.tripwire.si.core.rule.PersistentStartPoint','com.tripwire.si.core.rule.PersistentStartPoint$Mapping','Start Point'),(-9223372036854774961,'com.tripwire.si.core.rule.PersistentStopPoint','com.tripwire.si.core.rule.PersistentStopPoint$Mapping','Stop Point'),(-9223372036854774960,'com.tripwire.si.core.rule.ElementSpecifierRule','com.tripwire.si.core.rule.ElementSpecifierRule$Mapping','[MISSING RESOURCE: com.tripwire.si.core.rule.ElementSpecifierRule.typeName]'),(-9223372036854774958,'com.tripwire.si.core.gp.RsopRule','com.tripwire.si.core.gp.RsopRule$Mapping','Windows RSoP Rule'),(-9223372036854774956,'com.tripwire.si.core.gp.RsopPersistentStartPoint','com.tripwire.si.core.gp.RsopPersistentStartPoint$Mapping','Start Point'),(-9223372036854774955,'com.tripwire.si.core.fs.posix.PosixFileSystemRule','com.tripwire.si.core.fs.posix.PosixFileSystemRule$Mapping','UNIX File System Rule'),(-9223372036854774943,'com.tripwire.si.core.fs.registry.WindowsRegistryRule','com.tripwire.si.core.fs.registry.WindowsRegistryRule$Mapping','Windows Registry Rule'),(-9223372036854774935,'com.tripwire.si.core.fs.windows.WindowsFileSystemRule','com.tripwire.si.core.fs.windows.WindowsFileSystemRule$Mapping','Windows File System Rule'),(-9223372036854774917,'com.tripwire.si.core.fs.i5os.OS400NameValueRule','com.tripwire.si.core.fs.i5os.OS400NameValueRule$Mapping','i5/OS System Value Rule'),(-9223372036854774914,'com.tripwire.si.core.fs.i5os.OS400NameValuePersistentStartPoint','com.tripwire.si.core.fs.i5os.OS400NameValuePersistentStartPoint$Mapping','[MISSING RESOURCE: com.tripwire.si.core.fs.i5os.OS400NameValuePersistentStartPoint.typeName]'),(-9223372036854774913,'com.tripwire.si.core.fs.i5os.IfsFileSystemRule','com.tripwire.si.core.fs.i5os.IfsFileSystemRule$Mapping','i5/OS File System Rule'),(-9223372036854774814,'com.tripwire.si.core.ds.common.DsiFeature','com.tripwire.si.core.ds.common.DsiFeature$Mapping','[MISSING RESOURCE: com.tripwire.si.core.ds.common.DsiFeature.typeName]'),(-9223372036854774813,'com.tripwire.si.core.ds.common.DsiPolicyFeature','com.tripwire.si.core.ds.common.DsiPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.si.core.ds.common.DsiPolicyFeature.typeName]'),(-9223372036854774812,'com.tripwire.si.core.ds.common.DsiRemediationFeature','com.tripwire.si.core.ds.common.DsiRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.si.core.ds.common.DsiRemediationFeature.typeName]'),(-9223372036854774811,'DirectoryServerNode','com.tripwire.si.core.ds.common.DirectoryServerNode$Mapping','LDAP Directory Server'),(-9223372036854774810,'com.tripwire.si.core.ds.common.DirectoryServerRule','com.tripwire.si.core.ds.common.DirectoryServerRule$Mapping','LDAP Directory Rule'),(-9223372036854774808,'com.tripwire.si.core.ds.common.DirectoryServerPersistentStartPoint','com.tripwire.si.core.ds.common.DirectoryServerPersistentStartPoint$Mapping','Start Point'),(-9223372036854774807,'ActiveDirectoryNode','com.tripwire.si.core.ds.ad.ActiveDirectoryNode$Mapping','Active Directory Server'),(-9223372036854774806,'com.tripwire.si.core.ds.ad.ActiveDirectoryRule','com.tripwire.si.core.ds.ad.ActiveDirectoryRule$Mapping','Active Directory Rule'),(-9223372036854774804,'SunOneNode','com.tripwire.si.core.ds.sunone.SunOneNode$Mapping','Sun Directory Server'),(-9223372036854774803,'com.tripwire.si.core.ds.sunone.SunOneRule','com.tripwire.si.core.ds.sunone.SunOneRule$Mapping','Sun Directory Rule'),(-9223372036854774801,'EdirectoryNode','com.tripwire.si.core.ds.edir.EdirectoryNode$Mapping','Novell eDirectory Server'),(-9223372036854774800,'com.tripwire.si.core.ds.edir.EdirectoryRule','com.tripwire.si.core.ds.edir.EdirectoryRule$Mapping','eDirectory Rule'),(-9223372036854774794,'DatabaseServerNode','com.tripwire.si.core.db.common.DatabaseServerNode$Mapping','Database Server'),(-9223372036854774793,'DatabaseServerRule','com.tripwire.si.core.db.common.DatabaseServerRule$Mapping','Database Metadata Rule'),(-9223372036854774791,'DatabaseServerQueryRule','com.tripwire.si.core.db.common.DatabaseServerQueryRule$Mapping','Query Rule'),(-9223372036854774789,'com.tripwire.si.core.db.common.DbiFeature','com.tripwire.si.core.db.common.DbiFeature$Mapping','[MISSING RESOURCE: com.tripwire.si.core.db.common.DbiFeature.typeName]'),(-9223372036854774788,'com.tripwire.si.core.db.common.DbiPolicyFeature','com.tripwire.si.core.db.common.DbiPolicyFeature$Mapping','[MISSING RESOURCE: com.tripwire.si.core.db.common.DbiPolicyFeature.typeName]'),(-9223372036854774787,'com.tripwire.si.core.db.common.DbiRemediationFeature','com.tripwire.si.core.db.common.DbiRemediationFeature$Mapping','[MISSING RESOURCE: com.tripwire.si.core.db.common.DbiRemediationFeature.typeName]'),(-9223372036854774786,'OracleDatabaseServerNode','com.tripwire.si.core.db.oracle.OracleDatabaseServerNode$Mapping','Oracle Database Server'),(-9223372036854774785,'OracleDatabaseServerRule','com.tripwire.si.core.db.oracle.OracleDatabaseServerRule$Mapping','Oracle Metadata Rule'),(-9223372036854774783,'MsSqlServerNode','com.tripwire.si.core.db.mssql.SqlServerNode$Mapping','Microsoft SQL Server'),(-9223372036854774782,'MsSqlServerRule','com.tripwire.si.core.db.mssql.SqlServerRule$Mapping','Microsoft SQL Server Metadata Rule'),(-9223372036854774780,'Db2DatabaseServerNode','com.tripwire.si.core.db.db2.Db2DatabaseServerNode$Mapping','DB2 Database Server'),(-9223372036854774779,'Db2Rule','com.tripwire.si.core.db.db2.Db2DatabaseServerRule$Mapping','DB2 Metadata Rule'),(-9223372036854774777,'SybaseDatabaseServerNode','com.tripwire.si.core.db.sybase.SybaseDatabaseServerNode$Mapping','Sybase Server'),(-9223372036854774776,'SybaseDatabaseServerRule','com.tripwire.si.core.db.sybase.SybaseDatabaseServerRule$Mapping','Sybase Metadata Rule'),(-9223372036854774770,'com.tripwire.si.core.vi.vmware.VirtualCenterManagedNodeChangeLogMessage','com.tripwire.si.core.vi.vmware.VirtualCenterManagedNodeChangeLogMessage$Mapping','VI Node Change'),(-9223372036854774769,'VmAddress','com.tripwire.si.core.vi.vmware.VmWareVirtualMachineAddresses','[MISSING RESOURCE: VmAddress.typeName]'),(-9223372036854774768,'com.tripwire.si.core.vi.vmware.VmWareNodeGroup','com.tripwire.si.core.vi.vmware.VmWareNodeGroup$Mapping','VMware Node Group'),(-9223372036854774767,'com.tripwire.si.core.vi.vmware.ClusterNodeGroup','com.tripwire.si.core.vi.vmware.ClusterNodeGroup$Mapping','VMware Cluster'),(-9223372036854774766,'com.tripwire.si.core.vi.vmware.DatacenterNodeGroup','com.tripwire.si.core.vi.vmware.DatacenterNodeGroup$Mapping','VMware Datacenter'),(-9223372036854774765,'com.tripwire.si.core.vi.vmware.FolderNodeGroup','com.tripwire.si.core.vi.vmware.FolderNodeGroup$Mapping','VMware Folder'),(-9223372036854774764,'com.tripwire.si.core.vi.vmware.HostNodeGroup','com.tripwire.si.core.vi.vmware.HostNodeGroup$Mapping','Host Group'),(-9223372036854774763,'com.tripwire.si.core.vi.vmware.ResourcePoolNodeGroup','com.tripwire.si.core.vi.vmware.ResourcePoolNodeGroup$Mapping','VMware Resource Pool'),(-9223372036854774762,'com.tripwire.si.core.vi.vmware.VirtualMachineNodeGroup','com.tripwire.si.core.vi.vmware.VirtualMachineNodeGroup$Mapping','Virtual Machine Group'),(-9223372036854774761,'com.tripwire.si.core.vi.vmware.VirtualAppNodeGroup','com.tripwire.si.core.vi.vmware.VirtualAppNodeGroup$Mapping','VMware Virtual App'),(-9223372036854774760,'com.tripwire.si.core.vi.vmware.VirtualCenterSyncTask','com.tripwire.si.core.vi.vmware.VirtualCenterSyncTask$Mapping','vCenter Sync Task'),(-9223372036854774759,'com.tripwire.si.core.vi.vmware.VirtualCenterNodeGroup','com.tripwire.si.core.vi.vmware.VirtualCenterNodeGroup$Mapping','VMware vCenter'),(-9223372036854774758,'com.tripwire.si.core.vi.vmware.VmWareRule','com.tripwire.si.core.vi.vmware.VmWareRule$Mapping','[MISSING RESOURCE: com.tripwire.si.core.vi.vmware.VmWareRule.typeName]'),(-9223372036854774756,'com.tripwire.si.core.vi.vmware.VmRule','com.tripwire.si.core.vi.vmware.VmRule$Mapping','VMware VM Rule'),(-9223372036854774754,'com.tripwire.si.core.vi.vmware.VSwitchRule','com.tripwire.si.core.vi.vmware.VSwitchRule$Mapping','VMware vSwitch Rule'),(-9223372036854774752,'com.tripwire.si.core.vi.vmware.EsxRule','com.tripwire.si.core.vi.vmware.EsxRule$Mapping','VMware ESX Rule'),(-9223372036854774750,'com.tripwire.si.core.vi.vmware.DVSwitchRule','com.tripwire.si.core.vi.vmware.DVSwitchRule$Mapping','VMware vNetwork Distributed Switch Rule'),(-9223372036854774748,'com.tripwire.si.core.vi.vmware.VirtualCenterManagedNode','com.tripwire.si.core.vi.vmware.VirtualCenterManagedNode$Mapping','[MISSING RESOURCE: com.tripwire.si.core.vi.vmware.VirtualCenterManagedNode.typeName]'),(-9223372036854774747,'com.tripwire.si.core.vi.vmware.VmWareEsxManagedNode','com.tripwire.si.core.vi.vmware.VmWareEsxManagedNode$Mapping','[MISSING RESOURCE: com.tripwire.si.core.vi.vmware.VmWareEsxManagedNode.typeName]'),(-9223372036854774746,'com.tripwire.si.core.vi.vmware.VmWareEsxNode','com.tripwire.si.core.vi.vmware.VmWareEsxNode$Mapping','VMware ESXi'),(-9223372036854774745,'com.tripwire.si.core.vi.vmware.VmWareUnsupportedEsxNode','com.tripwire.si.core.vi.vmware.VmWareUnsupportedEsxNode$Mapping','Unsupported VMware ESX'),(-9223372036854774744,'com.tripwire.si.core.vi.vmware.VmWareVSwitchNode','com.tripwire.si.core.vi.vmware.VmWareVSwitchNode$Mapping','VMware vSwitch'),(-9223372036854774743,'com.tripwire.si.core.vi.vmware.VmWareVirtualMachineNode','com.tripwire.si.core.vi.vmware.VmWareVirtualMachineNode$Mapping','VMware Virtual Machine'),(-9223372036854774742,'com.tripwire.si.core.vi.vmware.VmWareVirtualMachineTemplateNode','com.tripwire.si.core.vi.vmware.VmWareVirtualMachineTemplateNode$Mapping','VMware Virtual Machine Template'),(-9223372036854774741,'com.tripwire.si.core.vi.vmware.DistributedVirtualSwitchNode','com.tripwire.si.core.vi.vmware.DistributedVirtualSwitchNode$Mapping','vNetwork Distributed Switch'),(-9223372036854774740,'com.tripwire.si.core.conformance.WindowsAclAttributeTest','com.tripwire.si.core.conformance.WindowsAclAttributeTest$Mapping','Windows ACL Test'),(-9223372036854774739,'com.tripwire.si.core.conformance.remediator.CommandLineRemediator','com.tripwire.si.core.conformance.remediator.CommandLineRemediator$Mapping','Command Line Remediator'),(-9223372036854774705,'com.tripwire.space.reporting.core.responses.ExecResponse','com.tripwire.space.reporting.core.responses.ExecResponse$Mapping','Execution Action'),(-9223372036854774704,'com.tripwire.si.core.vi.vmware.VmwareEsxConsoleNode','com.tripwire.si.core.vi.vmware.VmwareEsxConsoleNode$Mapping','VMware ESX'),(-9223372036854774703,'com.tripwire.space.core.report.ReportTask','com.tripwire.space.core.report.ReportTask$Mapping','Report Task'),(-9223372036854774702,'DashbrdLnks','com.tripwire.space.core.report.DashboardLinks','[MISSING RESOURCE: DashbrdLnks.typeName]'),(-9223372036854774701,'dashboard_rpt','com.tripwire.space.core.report.Dashboard$Mapping','Dashboard'),(-9223372036854774700,'com.tripwire.space.core.report.output.ReportOutput','com.tripwire.space.core.report.output.ReportOutput$Mapping','Report Output'),(-9223372036854774699,'RptItem','com.tripwire.space.core.report.output.ReportItems$Mapping','[MISSING RESOURCE: RptItem.typeName]'),(-9223372036854774698,'unreconciledchangeaging_rpt','com.tripwire.space.core.report.Report$Mapping','Unreconciled Change Aging'),(-9223372036854774697,'systemlog_rpt','com.tripwire.space.core.report.Report$Mapping','System Log'),(-9223372036854774696,'referencenodevariance_rpt','com.tripwire.space.core.report.Report$Mapping','Reference Node Variance'),(-9223372036854774695,'scoringhistory_rpt','com.tripwire.space.core.report.Report$Mapping','Scoring History'),(-9223372036854774694,'policyscorecard_rpt','com.tripwire.space.core.report.Report$Mapping','Test Result Summary'),(-9223372036854774693,'remediationassessment_rpt','com.tripwire.space.core.report.Report$Mapping','Remediation Assessment'),(-9223372036854774692,'scoring_rpt','com.tripwire.space.core.report.Report$Mapping','Scoring'),(-9223372036854774691,'detailedwaivers_rpt','com.tripwire.space.core.report.Report$Mapping','Detailed Waivers'),(-9223372036854774690,'detailedtestresults_rpt','com.tripwire.space.core.report.Report$Mapping','Detailed Test Results'),(-9223372036854774689,'nodeswithchanges_rpt','com.tripwire.space.core.report.Report$Mapping','Nodes with Changes'),(-9223372036854774688,'detailedtestinventory_rpt','com.tripwire.space.core.report.Report$Mapping','Detailed Test Inventory'),(-9223372036854774687,'freqchangednodes_rpt','com.tripwire.space.core.report.Report$Mapping','Frequently Changed Nodes'),(-9223372036854774686,'detailedchanges_rpt','com.tripwire.space.core.report.Report$Mapping','Detailed Changes'),(-9223372036854774685,'userrolesall_rpt','com.tripwire.space.core.report.Report$Mapping','User Roles All Object Types'),(-9223372036854774684,'remediationworkorders_rpt','com.tripwire.space.core.report.Report$Mapping','Remediation Work Orders Details'),(-9223372036854774683,'frequentlychangedelements_rpt','com.tripwire.space.core.report.Report$Mapping','Frequently Changed Elements'),(-9223372036854774682,'baselineelements_rpt','com.tripwire.space.core.report.Report$Mapping','Baseline Elements'),(-9223372036854774681,'deviceinventory_rpt','com.tripwire.space.core.report.Report$Mapping','Device Inventory'),(-9223372036854774680,'lastnodecheckstatus_rpt','com.tripwire.space.core.report.Report$Mapping','Last Node Check Status'),(-9223372036854774679,'inventorychange_rpt','com.tripwire.space.core.report.Report$Mapping','Inventory Changes'),(-9223372036854774678,'changesbyseverity_rpt','com.tripwire.space.core.report.Report$Mapping','Changes by Severity'),(-9223372036854774677,'changerate_rpt','com.tripwire.space.core.report.Report$Mapping','Change Rate'),(-9223372036854774676,'systemaccesscontrol_rpt','com.tripwire.space.core.report.Report$Mapping','System Access Control'),(-9223372036854774675,'unmonitorednodes_rpt','com.tripwire.space.core.report.Report$Mapping','Unmonitored Nodes'),(-9223372036854774674,'matchstrategydiscrepancy_rpt','com.tripwire.space.core.report.Report$Mapping','Match Strategy Discrepancy'),(-9223372036854774673,'changesbynodeorgroup_rpt','com.tripwire.space.core.report.Report$Mapping','Changes by Node or Group'),(-9223372036854774672,'remediationworkordersummary_rpt','com.tripwire.space.core.report.Report$Mapping','Remediation Work Orders Summary'),(-9223372036854774671,'monitoringpolicy_rpt','com.tripwire.space.core.report.Report$Mapping','Change Audit Coverage'),(-9223372036854774670,'changewindow_rpt','com.tripwire.space.core.report.Report$Mapping','Change Window'),(-9223372036854774669,'changeprocesscompliance_rpt','com.tripwire.space.core.report.Report$Mapping','Change Process Compliance'),(-9223372036854774668,'testresultsbynode_rpt','com.tripwire.space.core.report.Report$Mapping','Test Results By Node'),(-9223372036854774667,'compliancehistory_rpt','com.tripwire.space.core.report.Report$Mapping','Compliance History'),(-9223372036854774666,'elements_rpt','com.tripwire.space.core.report.Report$Mapping','Elements'),(-9223372036854774665,'tasks_rpt','com.tripwire.space.core.report.Report$Mapping','Tasks'),(-9223372036854774664,'userroles_rpt','com.tripwire.space.core.report.Report$Mapping','User Roles'),(-9223372036854774663,'missingelements_rpt','com.tripwire.space.core.report.Report$Mapping','Missing Elements'),(-9223372036854774662,'changesbyruleorgroup_rpt','com.tripwire.space.core.report.Report$Mapping','Changes by Rule or Group'),(-9223372036854774661,'changedelements_rpt','com.tripwire.space.core.report.Report$Mapping','Changed Elements'),(-9223372036854774660,'compositechanges_rpt','com.tripwire.space.core.report.Report$Mapping','Composite Changes'),(-9223372036854774659,'elementcontents_rpt','com.tripwire.space.core.report.Report$Mapping','Element Contents'),(-9223372036854774658,'changevariance_rpt','com.tripwire.space.core.report.Report$Mapping','Change Variance'),(-9223372036854774657,'unchangedelements_rpt','com.tripwire.space.core.report.Report$Mapping','Unchanged Elements'),(-9223372036854774605,'PolicySU_ExpTest','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicySU_ExpTest.typeName]'),(-9223372036854774604,'PolicySU_ExpTestNode','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicySU_ExpTestNode.typeName]'),(-9223372036854774603,'PolicySU_Policies','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicySU_Policies.typeName]'),(-9223372036854774602,'PolicySU_NodePolicies','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicySU_NodePolicies.typeName]'),(-9223372036854774601,'PolicySU_ExpElems','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicySU_ExpElems.typeName]'),(-9223372036854774600,'PolicySU_ExpScore','com.tripwire.space.core.persistence.ObjectLinksMapping','[MISSING RESOURCE: PolicySU_ExpScore.typeName]');
/*!40000 ALTER TABLE `pmap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy` (
  `purgeOldData` tinyint(1) NOT NULL DEFAULT '0',
  `purgeOldDataDays` int(11) NOT NULL,
  `nodeValue` longblob,
  `nodeName` longblob,
  `f_scapProfileId` varchar(1023) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policyacls`
--

DROP TABLE IF EXISTS `policyacls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policyacls` (
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `permId` bigint(20) NOT NULL,
  PRIMARY KEY (`objId`,`prinId`,`permId`),
  KEY `policyACLS_1_ASC` (`prinId`),
  KEY `policyACLS_2_ASC` (`permId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policyacls`
--

LOCK TABLES `policyacls` WRITE;
/*!40000 ALTER TABLE `policyacls` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyacls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policylnk`
--

DROP TABLE IF EXISTS `policylnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policylnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  `f_weight` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pop`,`kid`),
  KEY `policyLnk_1_ASC` (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policylnk`
--

LOCK TABLES `policylnk` WRITE;
/*!40000 ALTER TABLE `policylnk` DISABLE KEYS */;
/*!40000 ALTER TABLE `policylnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertonpolicyLnk
  AFTER INSERT ON policyLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteonpolicyLnk
  AFTER DELETE ON policyLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `policynodes`
--

DROP TABLE IF EXISTS `policynodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policynodes` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicyNodes_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policynodes`
--

LOCK TABLES `policynodes` WRITE;
/*!40000 ALTER TABLE `policynodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `policynodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policypath`
--

DROP TABLE IF EXISTS `policypath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policypath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `policyPath_1_ASC` (`did`),
  KEY `policyPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policypath`
--

LOCK TABLES `policypath` WRITE;
/*!40000 ALTER TABLE `policypath` DISABLE KEYS */;
INSERT INTO `policypath` VALUES (-9223372036854775518,-9223372036854775518,0);
/*!40000 ALTER TABLE `policypath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policyrescore`
--

DROP TABLE IF EXISTS `policyrescore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policyrescore` (
  `f_key` varchar(10) COLLATE utf8_bin NOT NULL,
  `f_synced` tinyint(1) NOT NULL DEFAULT '0',
  `f_doCompleteRescore` tinyint(1) NOT NULL DEFAULT '0',
  `f_doExpireUnscoped` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policyrescore`
--

LOCK TABLES `policyrescore` WRITE;
/*!40000 ALTER TABLE `policyrescore` DISABLE KEYS */;
INSERT INTO `policyrescore` VALUES ('rescore',1,0,0);
/*!40000 ALTER TABLE `policyrescore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policyscore`
--

DROP TABLE IF EXISTS `policyscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policyscore` (
  `oid` bigint(20) NOT NULL,
  `f_nodeId` bigint(20) NOT NULL,
  `f_policyId` bigint(20) NOT NULL,
  `f_time` datetime NOT NULL,
  `f_nextScoreTime` datetime DEFAULT NULL,
  `score` decimal(14,4) NOT NULL,
  `scoreWithoutWaivers` decimal(14,4) NOT NULL,
  `f_testCount` int(11) NOT NULL,
  `f_waivedTestCount` int(11) NOT NULL,
  `f_maximumScore` int(11) NOT NULL,
  `f_scoringModel` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `PolicyScore_11_ASC` (`f_nodeId`,`f_policyId`,`f_time`,`f_nextScoreTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policyscore`
--

LOCK TABLES `policyscore` WRITE;
/*!40000 ALTER TABLE `policyscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policysu_expelems`
--

DROP TABLE IF EXISTS `policysu_expelems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policysu_expelems` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicySU_ExpElems_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policysu_expelems`
--

LOCK TABLES `policysu_expelems` WRITE;
/*!40000 ALTER TABLE `policysu_expelems` DISABLE KEYS */;
/*!40000 ALTER TABLE `policysu_expelems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policysu_expscore`
--

DROP TABLE IF EXISTS `policysu_expscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policysu_expscore` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicySU_ExpScore_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policysu_expscore`
--

LOCK TABLES `policysu_expscore` WRITE;
/*!40000 ALTER TABLE `policysu_expscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `policysu_expscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policysu_exptest`
--

DROP TABLE IF EXISTS `policysu_exptest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policysu_exptest` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicySU_ExpTest_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policysu_exptest`
--

LOCK TABLES `policysu_exptest` WRITE;
/*!40000 ALTER TABLE `policysu_exptest` DISABLE KEYS */;
/*!40000 ALTER TABLE `policysu_exptest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policysu_exptestnode`
--

DROP TABLE IF EXISTS `policysu_exptestnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policysu_exptestnode` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicySU_ExpTestNode_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policysu_exptestnode`
--

LOCK TABLES `policysu_exptestnode` WRITE;
/*!40000 ALTER TABLE `policysu_exptestnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `policysu_exptestnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policysu_nodepolicies`
--

DROP TABLE IF EXISTS `policysu_nodepolicies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policysu_nodepolicies` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicySU_NodePolicies_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policysu_nodepolicies`
--

LOCK TABLES `policysu_nodepolicies` WRITE;
/*!40000 ALTER TABLE `policysu_nodepolicies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policysu_nodepolicies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policysu_policies`
--

DROP TABLE IF EXISTS `policysu_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policysu_policies` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `PolicySU_Policies_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policysu_policies`
--

LOCK TABLES `policysu_policies` WRITE;
/*!40000 ALTER TABLE `policysu_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policysu_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policytest`
--

DROP TABLE IF EXISTS `policytest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policytest` (
  `f_sev` smallint(6) NOT NULL,
  `f_scapRuleId` varchar(1023) COLLATE utf8_bin DEFAULT NULL,
  `f_scapRuleVersion` varchar(1023) COLLATE utf8_bin DEFAULT NULL,
  `f_nodeCond` longblob,
  `f_selected` tinyint(1) NOT NULL DEFAULT '0',
  `f_role` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policytest`
--

LOCK TABLES `policytest` WRITE;
/*!40000 ALTER TABLE `policytest` DISABLE KEYS */;
/*!40000 ALTER TABLE `policytest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policytestexpressionnode`
--

DROP TABLE IF EXISTS `policytestexpressionnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policytestexpressionnode` (
  `oid` bigint(20) NOT NULL,
  `f_parentId` bigint(20) DEFAULT NULL,
  `f_operatorValue` int(11) NOT NULL,
  `f_policyTestId` bigint(20) NOT NULL,
  `f_negated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `PolicyTestExpressionNode_1_ASC` (`f_parentId`),
  KEY `PolicyTestExpressionNode_3_ASC` (`f_policyTestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policytestexpressionnode`
--

LOCK TABLES `policytestexpressionnode` WRITE;
/*!40000 ALTER TABLE `policytestexpressionnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `policytestexpressionnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policytestpredrsp`
--

DROP TABLE IF EXISTS `policytestpredrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policytestpredrsp` (
  `scope` bigint(20) DEFAULT NULL,
  `untested` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policytestpredrsp`
--

LOCK TABLES `policytestpredrsp` WRITE;
/*!40000 ALTER TABLE `policytestpredrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `policytestpredrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policytestresult`
--

DROP TABLE IF EXISTS `policytestresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policytestresult` (
  `oid` bigint(20) NOT NULL,
  `f_policyTestID` bigint(20) NOT NULL,
  `f_state` smallint(6) NOT NULL,
  `f_time` datetime NOT NULL,
  `f_nodeID` bigint(20) NOT NULL,
  `f_nextResultTime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `PolicyTestResult_1_ASC` (`f_policyTestID`),
  KEY `PolicyTestResult_2_ASC` (`f_state`),
  KEY `PolicyTestResult_3_ASC` (`f_time`),
  KEY `PolicyTestResult_4_ASC` (`f_nodeID`),
  KEY `PolicyTestResult_5_ASC` (`f_nextResultTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policytestresult`
--

LOCK TABLES `policytestresult` WRITE;
/*!40000 ALTER TABLE `policytestresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `policytestresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policytestscapref`
--

DROP TABLE IF EXISTS `policytestscapref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policytestscapref` (
  `policyTestId` bigint(20) NOT NULL,
  `scapId` varchar(80) COLLATE utf8_bin NOT NULL,
  `source` varchar(80) COLLATE utf8_bin NOT NULL,
  `url` longtext COLLATE utf8_bin,
  PRIMARY KEY (`policyTestId`,`scapId`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policytestscapref`
--

LOCK TABLES `policytestscapref` WRITE;
/*!40000 ALTER TABLE `policytestscapref` DISABLE KEYS */;
/*!40000 ALTER TABLE `policytestscapref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policywaiver`
--

DROP TABLE IF EXISTS `policywaiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policywaiver` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `f_policyId` bigint(20) NOT NULL,
  `f_startTime` datetime NOT NULL,
  `f_expiration` datetime DEFAULT NULL,
  `f_name` varchar(1024) COLLATE utf8_bin NOT NULL,
  `f_description` longtext COLLATE utf8_bin,
  `f_grantedBy` bigint(20) DEFAULT NULL,
  `f_responsible` bigint(20) DEFAULT NULL,
  `f_closed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `PolicyWaiver_2_ASC` (`f_policyId`),
  KEY `PolicyWaiver_3_ASC` (`f_startTime`),
  KEY `PolicyWaiver_4_ASC` (`f_expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policywaiver`
--

LOCK TABLES `policywaiver` WRITE;
/*!40000 ALTER TABLE `policywaiver` DISABLE KEYS */;
/*!40000 ALTER TABLE `policywaiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poltestrespevents`
--

DROP TABLE IF EXISTS `poltestrespevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poltestrespevents` (
  `scopeId` bigint(20) NOT NULL,
  `elementId` bigint(20) NOT NULL,
  `responseId` bigint(20) NOT NULL,
  `nodeId` bigint(20) NOT NULL,
  `ruleId` bigint(20) NOT NULL,
  `changeId` bigint(20) NOT NULL,
  `baselineId` bigint(20) NOT NULL,
  `baselineChange` tinyint(1) NOT NULL DEFAULT '0',
  `severity` int(11) NOT NULL,
  `hasResults` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`scopeId`,`elementId`,`responseId`),
  KEY `PolTestRespEvents_10_ASC` (`scopeId`,`responseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poltestrespevents`
--

LOCK TABLES `poltestrespevents` WRITE;
/*!40000 ALTER TABLE `poltestrespevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `poltestrespevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postremcmd`
--

DROP TABLE IF EXISTS `postremcmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postremcmd` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `trackingId` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `nodeMappingId` bigint(20) NOT NULL,
  `commandLine` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `script` longtext COLLATE utf8_bin,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postremcmd`
--

LOCK TABLES `postremcmd` WRITE;
/*!40000 ALTER TABLE `postremcmd` DISABLE KEYS */;
/*!40000 ALTER TABLE `postremcmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prmtbyrefact`
--

DROP TABLE IF EXISTS `prmtbyrefact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prmtbyrefact` (
  `pkgExps` longblob,
  `isStrict` tinyint(1) NOT NULL DEFAULT '0',
  `P_DESC` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `P_APPID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `P_CUSTTYPEID` bigint(20) DEFAULT NULL,
  `refNode` bigint(20) NOT NULL,
  `refRuleGrpb` bigint(20) NOT NULL,
  `refProps` longblob,
  `isAllBaselines` tinyint(1) NOT NULL DEFAULT '0',
  `matchHash` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prmtbyrefact`
--

LOCK TABLES `prmtbyrefact` WRITE;
/*!40000 ALTER TABLE `prmtbyrefact` DISABLE KEYS */;
/*!40000 ALTER TABLE `prmtbyrefact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prmtmtchact`
--

DROP TABLE IF EXISTS `prmtmtchact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prmtmtchact` (
  `pkgExps` longblob,
  `isStrict` tinyint(1) NOT NULL DEFAULT '0',
  `P_DESC` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `P_APPID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `P_CUSTTYPEID` bigint(20) DEFAULT NULL,
  `matchFilePath` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `strategy` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prmtmtchact`
--

LOCK TABLES `prmtmtchact` WRITE;
/*!40000 ALTER TABLE `prmtmtchact` DISABLE KEYS */;
/*!40000 ALTER TABLE `prmtmtchact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prmtversact`
--

DROP TABLE IF EXISTS `prmtversact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prmtversact` (
  `pkgExps` longblob,
  `isStrict` tinyint(1) NOT NULL DEFAULT '0',
  `P_DESC` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `P_APPID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `P_CUSTTYPEID` bigint(20) DEFAULT NULL,
  `ruleIds` longblob,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prmtversact`
--

LOCK TABLES `prmtversact` WRITE;
/*!40000 ALTER TABLE `prmtversact` DISABLE KEYS */;
/*!40000 ALTER TABLE `prmtversact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promtch`
--

DROP TABLE IF EXISTS `promtch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promtch` (
  `F_SETID` bigint(20) NOT NULL,
  `F_SUBID` bigint(20) NOT NULL,
  `F_ID` bigint(20) NOT NULL,
  `F_ENID` bigint(20) NOT NULL,
  `F_ROID` bigint(20) NOT NULL,
  `F_ENCASE` tinyint(1) NOT NULL DEFAULT '0',
  `F_NAME` varchar(1536) COLLATE utf8_bin DEFAULT NULL,
  `F_TYPE` smallint(6) NOT NULL,
  `F_MD5` varbinary(16) DEFAULT NULL,
  `F_SHA1` varbinary(20) DEFAULT NULL,
  `F_SHA256` varbinary(32) DEFAULT NULL,
  `F_SHA512` varbinary(64) DEFAULT NULL,
  PRIMARY KEY (`F_SETID`,`F_SUBID`,`F_ID`),
  KEY `PROMTCH_3_ASC` (`F_ENID`),
  KEY `PROMTCH_4_ASC` (`F_ROID`),
  KEY `PROMTCH_8_ASC` (`F_MD5`),
  KEY `PROMTCH_9_ASC` (`F_SHA1`),
  KEY `PROMTCH_10_ASC` (`F_SHA256`),
  KEY `PROMTCH_11_ASC` (`F_SHA512`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promtch`
--

LOCK TABLES `promtch` WRITE;
/*!40000 ALTER TABLE `promtch` DISABLE KEYS */;
/*!40000 ALTER TABLE `promtch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `props`
--

DROP TABLE IF EXISTS `props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `props` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `prps` longblob,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `props`
--

LOCK TABLES `props` WRITE;
/*!40000 ALTER TABLE `props` DISABLE KEYS */;
INSERT INTO `props` VALUES (-9223372036854775807,-9223372036854775806,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0tw.fsi.installedt\0truet\0tw.ndi.installedq\0~\0t\0tw.core.installedq\0~\0x'),(-9223372036854775134,-9223372036854775806,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x'),(-9223372036854774795,-9223372036854775806,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0attributeTypessq\0~\0\0?@\0\0\0\0\0w\0\0\0\0\0\0sr\0java.lang.Long;ïΣÉ╠Å#▀\0J\0valuexr\0java.lang.Numberå¼òöαï\0\0xpÇ\0\0\0\0\0Ωsq\0~\0\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0binaryur\0[Ljava.lang.String;¡╥VτΘ{G\0\0xp\0\0\0t\0\nobjectGUIDt\0	objectSidt\0userCertificatet\0\nlogonHourst\0userParameterst\0msExchMailboxGuidt\0protocolSettingst\0	jpegPhotot\0securityuq\0~\0	\0\0\0t\0nTSecurityDescriptort\0msExchMailboxSecurityDescriptorxsq\0~\0Ç\0\0\0\0\0φsq\0~\0\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0uq\0~\0	\0\0\0\nt\0authorityRevocationListt\0\rCACertificatet\0certificateRevocationListt\0crossCertificatePairt\0deltaRevocationListt\0supportedAlgorithmst\0userPasswordt\0\nuserPKCS12t\0userSMIMECertificateq\0~\0xsq\0~\0Ç\0\0\0\0\0≡sq\0~\0\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0uq\0~\0	\0\0\0t\0GUIDxsq\0~\0Ç\0\0\0\0\0µsq\0~\0\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0uq\0~\0	\0\0\0q\0~\0xxx'),(-9223372036851775804,-9223372036854775806,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x'),(0,-9223372036854775806,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x');
/*!40000 ALTER TABLE `props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radius`
--

DROP TABLE IF EXISTS `radius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radius` (
  `radius_nasip` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `radius_nasprt` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `radius_cip` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `radius_sessid` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `radius_stat` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radius`
--

LOCK TABLES `radius` WRITE;
/*!40000 ALTER TABLE `radius` DISABLE KEYS */;
/*!40000 ALTER TABLE `radius` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refnodersp`
--

DROP TABLE IF EXISTS `refnodersp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refnodersp` (
  `refNodeId` bigint(20) NOT NULL,
  `baselines` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refnodersp`
--

LOCK TABLES `refnodersp` WRITE;
/*!40000 ALTER TABLE `refnodersp` DISABLE KEYS */;
/*!40000 ALTER TABLE `refnodersp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rem_commandline`
--

DROP TABLE IF EXISTS `rem_commandline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rem_commandline` (
  `f_commandLine` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `f_useScript` tinyint(1) NOT NULL DEFAULT '0',
  `f_script` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rem_commandline`
--

LOCK TABLES `rem_commandline` WRITE;
/*!40000 ALTER TABLE `rem_commandline` DISABLE KEYS */;
/*!40000 ALTER TABLE `rem_commandline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remediationentry`
--

DROP TABLE IF EXISTS `remediationentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remediationentry` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `f_state` smallint(6) NOT NULL,
  `f_test_state` smallint(6) NOT NULL,
  `f_testResultId` bigint(20) NOT NULL,
  `f_nodeId` bigint(20) NOT NULL,
  `f_testId` bigint(20) NOT NULL,
  `f_parentId` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `RemediationEntry_7_ASC` (`f_parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remediationentry`
--

LOCK TABLES `remediationentry` WRITE;
/*!40000 ALTER TABLE `remediationentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `remediationentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remediationworkorder`
--

DROP TABLE IF EXISTS `remediationworkorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remediationworkorder` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `checkAndPromoteElems` tinyint(1) NOT NULL DEFAULT '0',
  `allowRestartService` tinyint(1) NOT NULL DEFAULT '0',
  `allowStartService` tinyint(1) NOT NULL DEFAULT '0',
  `allowStopService` tinyint(1) NOT NULL DEFAULT '0',
  `allowReloadConfig` tinyint(1) NOT NULL DEFAULT '0',
  `f_user` bigint(20) NOT NULL,
  `f_userGroup` bigint(20) NOT NULL,
  `f_creator` bigint(20) NOT NULL,
  `f_state` smallint(6) NOT NULL,
  `approvalId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `referenceUrl` varchar(2048) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastUpdated` datetime DEFAULT NULL,
  `reportFormat` smallint(6) NOT NULL,
  `archiveReport` tinyint(1) NOT NULL DEFAULT '0',
  `ignoreEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `eservId` bigint(20) NOT NULL,
  `addnlEmailAddrs` longtext COLLATE utf8_bin,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remediationworkorder`
--

LOCK TABLES `remediationworkorder` WRITE;
/*!40000 ALTER TABLE `remediationworkorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `remediationworkorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remediator`
--

DROP TABLE IF EXISTS `remediator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remediator` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `f_instr` longtext COLLATE utf8_bin,
  `f_catId` smallint(6) NOT NULL,
  `f_catDetails` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remediator`
--

LOCK TABLES `remediator` WRITE;
/*!40000 ALTER TABLE `remediator` DISABLE KEYS */;
/*!40000 ALTER TABLE `remediator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remediatorelementnames`
--

DROP TABLE IF EXISTS `remediatorelementnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remediatorelementnames` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `elementNamePattern` varchar(1536) COLLATE utf8_bin NOT NULL,
  `remediatorId` bigint(20) NOT NULL,
  `pos` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `RemediatorElementNames_5_ASC` (`remediatorId`,`pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remediatorelementnames`
--

LOCK TABLES `remediatorelementnames` WRITE;
/*!40000 ALTER TABLE `remediatorelementnames` DISABLE KEYS */;
/*!40000 ALTER TABLE `remediatorelementnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remlm`
--

DROP TABLE IF EXISTS `remlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remlm` (
  `exitVal` int(11) NOT NULL,
  `runId` bigint(20) NOT NULL,
  `msg` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `err` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `versionTestId` bigint(20) NOT NULL,
  `policyTestId` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `remLm_1_ASC` (`runId`),
  KEY `remLm_4_ASC` (`nodeId`),
  KEY `remLm_5_ASC` (`versionTestId`),
  KEY `remLm_8_ASC` (`exitVal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remlm`
--

LOCK TABLES `remlm` WRITE;
/*!40000 ALTER TABLE `remlm` DISABLE KEYS */;
/*!40000 ALTER TABLE `remlm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `rpt_criteria` longblob,
  `rpt_outfmt` int(11) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportg`
--

DROP TABLE IF EXISTS `reportg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportg` (
  `ss_own` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportg`
--

LOCK TABLES `reportg` WRITE;
/*!40000 ALTER TABLE `reportg` DISABLE KEYS */;
INSERT INTO `reportg` VALUES (0,-9223372036854775514),(0,-9223372036854775513);
/*!40000 ALTER TABLE `reportg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportslnk`
--

DROP TABLE IF EXISTS `reportslnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportslnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  PRIMARY KEY (`pop`,`kid`),
  KEY `reportsLnk_1_ASC` (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportslnk`
--

LOCK TABLES `reportslnk` WRITE;
/*!40000 ALTER TABLE `reportslnk` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportslnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertonreportsLnk
  AFTER INSERT ON reportsLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteonreportsLnk
  AFTER DELETE ON reportsLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reportspath`
--

DROP TABLE IF EXISTS `reportspath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportspath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `reportsPath_1_ASC` (`did`),
  KEY `reportsPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportspath`
--

LOCK TABLES `reportspath` WRITE;
/*!40000 ALTER TABLE `reportspath` DISABLE KEYS */;
INSERT INTO `reportspath` VALUES (-9223372036854775514,-9223372036854775514,0);
/*!40000 ALTER TABLE `reportspath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporttask`
--

DROP TABLE IF EXISTS `reporttask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporttask` (
  `reprtId` bigint(20) DEFAULT NULL,
  `emailFmt` int(11) NOT NULL,
  `archRep` tinyint(1) NOT NULL DEFAULT '0',
  `ignEmpt` tinyint(1) NOT NULL DEFAULT '0',
  `eservId` bigint(20) NOT NULL,
  `addnlEmailAddrs` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporttask`
--

LOCK TABLES `reporttask` WRITE;
/*!40000 ALTER TABLE `reporttask` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporttask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resplnks`
--

DROP TABLE IF EXISTS `resplnks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resplnks` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `RespLnks_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resplnks`
--

LOCK TABLES `resplnks` WRITE;
/*!40000 ALTER TABLE `resplnks` DISABLE KEYS */;
/*!40000 ALTER TABLE `resplnks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsesacls`
--

DROP TABLE IF EXISTS `responsesacls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsesacls` (
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `permId` bigint(20) NOT NULL,
  PRIMARY KEY (`objId`,`prinId`,`permId`),
  KEY `responsesACLS_1_ASC` (`prinId`),
  KEY `responsesACLS_2_ASC` (`permId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsesacls`
--

LOCK TABLES `responsesacls` WRITE;
/*!40000 ALTER TABLE `responsesacls` DISABLE KEYS */;
/*!40000 ALTER TABLE `responsesacls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responseslnk`
--

DROP TABLE IF EXISTS `responseslnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responseslnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  `ordinal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pop`,`kid`),
  KEY `responsesLnk_1_ASC` (`kid`),
  KEY `responsesLnk_3_ASC` (`pop`,`ordinal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responseslnk`
--

LOCK TABLES `responseslnk` WRITE;
/*!40000 ALTER TABLE `responseslnk` DISABLE KEYS */;
INSERT INTO `responseslnk` VALUES (-9223372036854775526,-9223372036854775099,1),(-9223372036854775526,-9223372036854775098,2);
/*!40000 ALTER TABLE `responseslnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertonresponsesLnk
  AFTER INSERT ON responsesLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteonresponsesLnk
  AFTER DELETE ON responsesLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `responsespath`
--

DROP TABLE IF EXISTS `responsespath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsespath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `responsesPath_1_ASC` (`did`),
  KEY `responsesPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsespath`
--

LOCK TABLES `responsespath` WRITE;
/*!40000 ALTER TABLE `responsespath` DISABLE KEYS */;
INSERT INTO `responsespath` VALUES (-9223372036854775526,-9223372036854775526,0);
/*!40000 ALTER TABLE `responsespath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptitem`
--

DROP TABLE IF EXISTS `rptitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptitem` (
  `f_id` bigint(20) NOT NULL,
  `f_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `f_val` longblob,
  `f_type` int(11) NOT NULL,
  PRIMARY KEY (`f_id`,`f_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptitem`
--

LOCK TABLES `rptitem` WRITE;
/*!40000 ALTER TABLE `rptitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptoutput`
--

DROP TABLE IF EXISTS `rptoutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rptoutput` (
  `oid` bigint(20) NOT NULL,
  `f_time` datetime NOT NULL,
  `f_rid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `RptOutput_2_ASC` (`f_rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptoutput`
--

LOCK TABLES `rptoutput` WRITE;
/*!40000 ALTER TABLE `rptoutput` DISABLE KEYS */;
/*!40000 ALTER TABLE `rptoutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsop`
--

DROP TABLE IF EXISTS `rsop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsop` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsop`
--

LOCK TABLES `rsop` WRITE;
/*!40000 ALTER TABLE `rsop` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsopstart`
--

DROP TABLE IF EXISTS `rsopstart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsopstart` (
  `scope` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsopstart`
--

LOCK TABLES `rsopstart` WRITE;
/*!40000 ALTER TABLE `rsopstart` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsopstart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `severity` int(11) NOT NULL,
  `realTime` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rulesacls`
--

DROP TABLE IF EXISTS `rulesacls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulesacls` (
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `permId` bigint(20) NOT NULL,
  PRIMARY KEY (`objId`,`prinId`,`permId`),
  KEY `rulesACLS_1_ASC` (`prinId`),
  KEY `rulesACLS_2_ASC` (`permId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulesacls`
--

LOCK TABLES `rulesacls` WRITE;
/*!40000 ALTER TABLE `rulesacls` DISABLE KEYS */;
/*!40000 ALTER TABLE `rulesacls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleslnk`
--

DROP TABLE IF EXISTS `ruleslnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruleslnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  PRIMARY KEY (`pop`,`kid`),
  KEY `rulesLnk_1_ASC` (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleslnk`
--

LOCK TABLES `ruleslnk` WRITE;
/*!40000 ALTER TABLE `ruleslnk` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruleslnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertonrulesLnk
  AFTER INSERT ON rulesLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteonrulesLnk
  AFTER DELETE ON rulesLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `rulespath`
--

DROP TABLE IF EXISTS `rulespath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulespath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `rulesPath_1_ASC` (`did`),
  KEY `rulesPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulespath`
--

LOCK TABLES `rulespath` WRITE;
/*!40000 ALTER TABLE `rulespath` DISABLE KEYS */;
INSERT INTO `rulespath` VALUES (-9223372036854775530,-9223372036854775530,0);
/*!40000 ALTER TABLE `rulespath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runid`
--

DROP TABLE IF EXISTS `runid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runid` (
  `approvalId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `comments` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `parentId` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `runId_2_ASC` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runid`
--

LOCK TABLES `runid` WRITE;
/*!40000 ALTER TABLE `runid` DISABLE KEYS */;
/*!40000 ALTER TABLE `runid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runrprtresp`
--

DROP TABLE IF EXISTS `runrprtresp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runrprtresp` (
  `reportId` bigint(20) DEFAULT NULL,
  `reportFormat` smallint(6) NOT NULL,
  `reportScope` smallint(6) NOT NULL,
  `archiveReport` tinyint(1) NOT NULL DEFAULT '0',
  `ignoreEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `eservId` bigint(20) NOT NULL,
  `addnlEmailAddrs` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runrprtresp`
--

LOCK TABLES `runrprtresp` WRITE;
/*!40000 ALTER TABLE `runrprtresp` DISABLE KEYS */;
/*!40000 ALTER TABLE `runrprtresp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runrulersps`
--

DROP TABLE IF EXISTS `runrulersps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runrulersps` (
  `ruleGroupableId` bigint(20) DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runrulersps`
--

LOCK TABLES `runrulersps` WRITE;
/*!40000 ALTER TABLE `runrulersps` DISABLE KEYS */;
/*!40000 ALTER TABLE `runrulersps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `runtaskrsps`
--

DROP TABLE IF EXISTS `runtaskrsps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `runtaskrsps` (
  `taskId` bigint(20) DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `runtaskrsps`
--

LOCK TABLES `runtaskrsps` WRITE;
/*!40000 ALTER TABLE `runtaskrsps` DISABLE KEYS */;
/*!40000 ALTER TABLE `runtaskrsps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_category_dim`
--

DROP TABLE IF EXISTS `sal_category_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_category_dim` (
  `sal_category_key` int(11) NOT NULL,
  `sal_category_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sal_category_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_category_dim`
--

LOCK TABLES `sal_category_dim` WRITE;
/*!40000 ALTER TABLE `sal_category_dim` DISABLE KEYS */;
INSERT INTO `sal_category_dim` VALUES (1,'Security'),(2,'Create'),(3,'Read'),(4,'Update'),(5,'Delete');
/*!40000 ALTER TABLE `sal_category_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_configuration_category`
--

DROP TABLE IF EXISTS `sal_configuration_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_configuration_category` (
  `sal_category_key` int(11) NOT NULL,
  `sal_category_enabled` int(11) NOT NULL,
  PRIMARY KEY (`sal_category_key`),
  CONSTRAINT `FK_sal_cfg_category` FOREIGN KEY (`sal_category_key`) REFERENCES `sal_category_dim` (`sal_category_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_configuration_category`
--

LOCK TABLES `sal_configuration_category` WRITE;
/*!40000 ALTER TABLE `sal_configuration_category` DISABLE KEYS */;
INSERT INTO `sal_configuration_category` VALUES (1,0),(2,0),(3,0),(4,0),(5,0);
/*!40000 ALTER TABLE `sal_configuration_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_email_alert_address`
--

DROP TABLE IF EXISTS `sal_email_alert_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_email_alert_address` (
  `to_address` varchar(254) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`to_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_email_alert_address`
--

LOCK TABLES `sal_email_alert_address` WRITE;
/*!40000 ALTER TABLE `sal_email_alert_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `sal_email_alert_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_email_server`
--

DROP TABLE IF EXISTS `sal_email_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_email_server` (
  `te_oid` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`te_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_email_server`
--

LOCK TABLES `sal_email_server` WRITE;
/*!40000 ALTER TABLE `sal_email_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `sal_email_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_message_fact`
--

DROP TABLE IF EXISTS `sal_message_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_message_fact` (
  `message_id` bigint(20) NOT NULL,
  `message_time` datetime NOT NULL,
  `sal_status_key` int(11) NOT NULL,
  `sal_category_key` int(11) NOT NULL,
  `sal_user_key` int(11) NOT NULL,
  `message_text` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `IND_sal_message_fact_time` (`message_time`),
  KEY `IND_sal_message_fact_level` (`sal_status_key`),
  KEY `IND_sal_message_fact_category` (`sal_category_key`),
  KEY `IND_sal_message_fact_user` (`sal_user_key`),
  CONSTRAINT `FK_sal_msg_fact_category` FOREIGN KEY (`sal_category_key`) REFERENCES `sal_category_dim` (`sal_category_key`),
  CONSTRAINT `FK_sal_msg_fact_status` FOREIGN KEY (`sal_status_key`) REFERENCES `sal_status_dim` (`sal_status_key`),
  CONSTRAINT `FK_sal_msg_fact_user` FOREIGN KEY (`sal_user_key`) REFERENCES `sal_user_dim` (`sal_user_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_message_fact`
--

LOCK TABLES `sal_message_fact` WRITE;
/*!40000 ALTER TABLE `sal_message_fact` DISABLE KEYS */;
INSERT INTO `sal_message_fact` VALUES (1,'2013-02-15 17:04:49',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(2,'2013-02-15 17:10:26',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(3,'2013-02-25 16:15:08',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(4,'2013-02-27 09:36:33',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(5,'2013-03-15 20:04:26',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(6,'2013-03-20 08:34:34',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(7,'2013-03-25 15:46:25',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(8,'2013-04-15 18:57:45',1,1,1,'The Security Audit Log component is shutting down due to a normal application stop request.'),(9,'2013-04-17 08:33:58',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(10,'2013-04-17 17:52:35',1,1,1,'The Security Audit Log component has initialized with the following categories enabled:\n'),(11,'2013-04-17 17:56:40',1,1,1,'The Security Audit Log component is shutting down due to a normal application stop request.');
/*!40000 ALTER TABLE `sal_message_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_schema_version`
--

DROP TABLE IF EXISTS `sal_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_schema_version` (
  `schema_version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_schema_version`
--

LOCK TABLES `sal_schema_version` WRITE;
/*!40000 ALTER TABLE `sal_schema_version` DISABLE KEYS */;
INSERT INTO `sal_schema_version` VALUES (10);
/*!40000 ALTER TABLE `sal_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_status_dim`
--

DROP TABLE IF EXISTS `sal_status_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_status_dim` (
  `sal_status_key` int(11) NOT NULL,
  `sal_status_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sal_status_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_status_dim`
--

LOCK TABLES `sal_status_dim` WRITE;
/*!40000 ALTER TABLE `sal_status_dim` DISABLE KEYS */;
INSERT INTO `sal_status_dim` VALUES (1,'Success'),(2,'Failure');
/*!40000 ALTER TABLE `sal_status_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sal_user_dim`
--

DROP TABLE IF EXISTS `sal_user_dim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sal_user_dim` (
  `sal_user_key` int(11) NOT NULL,
  `sal_user_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `sal_user_oid` bigint(20) NOT NULL,
  PRIMARY KEY (`sal_user_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sal_user_dim`
--

LOCK TABLES `sal_user_dim` WRITE;
/*!40000 ALTER TABLE `sal_user_dim` DISABLE KEYS */;
INSERT INTO `sal_user_dim` VALUES (1,'system',0);
/*!40000 ALTER TABLE `sal_user_dim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savsrch`
--

DROP TABLE IF EXISTS `savsrch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savsrch` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ss_type` bigint(20) NOT NULL,
  `ss_own` bigint(20) NOT NULL,
  `ss_criteria` longblob,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savsrch`
--

LOCK TABLES `savsrch` WRITE;
/*!40000 ALTER TABLE `savsrch` DISABLE KEYS */;
INSERT INTO `savsrch` VALUES (-9223372036854774716,-9223372036854775642,'All versions created in the last 24 hours',NULL,-9223372036854775059,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0elementVersiont\0 search.elementVersion.lastChanget\0falset\0+search.elementVersion.versionTime.prevHourssr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0x'),(-9223372036854774715,-9223372036854775642,'Current element versions that are not the baseline',NULL,-9223372036854775059,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0elementVersiont\0 search.elementVersion.lastChanget\0truet\0search.elementVersion.existst\01360947876062_ANY_1360947876062t\02search.elementVersion.hasCurrentPolicyTestFailuresq\0~\0t\0!search.elementVersion.changeTypesur\0[Ljava.lang.String;¡╥VτΘ{G\0\0xp\0\0\0t\01t\02t\03t\0#search.elementVersion.hasApprovalIdq\0~\0x'),(-9223372036854774714,-9223372036854775642,'Current element versions containing specific content',NULL,-9223372036854775059,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0elementVersiont\0 search.elementVersion.lastChanget\0truet\0?search.elementVersion.currentChainedElementContent.chainedRow.0ur\0[Ljava.lang.Object;É╬Xƒs)l\0\0xp\0\0\0sr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0\0sq\0~\0	\0\0\0t\0<content to search for>sq\0~\0	\0\0\0\0sq\0~\0	\0\0\0\0x'),(-9223372036854774713,-9223372036854775642,'Current element versions excluding specific content',NULL,-9223372036854775059,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0elementVersiont\0 search.elementVersion.lastChanget\0truet\0?search.elementVersion.currentChainedElementContent.chainedRow.0ur\0[Ljava.lang.Object;É╬Xƒs)l\0\0xp\0\0\0sr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0\0sq\0~\0	\0\0\0t\0<content to search for>sq\0~\0	\0\0\0\0sq\0~\0	\0\0\0\0x'),(-9223372036854774712,-9223372036854775642,'All versions containing a specific comment',NULL,-9223372036854775059,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0 search.elementVersion.comment.opsr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0t\0selectedSearchTypet\0elementVersiont\0 search.elementVersion.lastChanget\0falset\0search.elementVersion.commentt\0<comment to search for>x'),(-9223372036854774711,-9223372036854775642,'All elements not conforming to baseline',NULL,-9223372036854775060,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0search.element.existst\01360947876062_ANY_1360947876062t\0selectedSearchTypet\0elementt\0+search.element.hasCurrentPolicyTestFailuresq\0~\0t\0%search.element.lastVersionChangeTypesur\0[Ljava.lang.String;¡╥VτΘ{G\0\0xp\0\0\0t\01t\02t\03x'),(-9223372036854774710,-9223372036854775642,'All elements changed in the last 24 hours',NULL,-9223372036854775060,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0elementt\0#search.element.changeTime.prevHourssr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0x'),(-9223372036854774709,-9223372036854775642,'All elements currently containing specific content',NULL,-9223372036854775060,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0elementt\08search.element.currentChainedElementContent.chainedRow.0ur\0[Ljava.lang.Object;É╬Xƒs)l\0\0xp\0\0\0sr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0\0sq\0~\0\0\0\0t\0<content to search for>sq\0~\0\0\0\0\0sq\0~\0\0\0\0\0x'),(-9223372036854774708,-9223372036854775642,'All nodes changed in the last 24 hours',NULL,-9223372036854775061,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0nodet\0 search.node.changeTime.prevHourssr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0x'),(-9223372036854774707,-9223372036854775642,'All nodes not conforming to baselines',NULL,-9223372036854775061,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0selectedSearchTypet\0nodet\0search.node.conformsToBaselinest\0falsex'),(-9223372036854774706,-9223372036854775642,'All nodes currently containing specific content',NULL,-9223372036854775061,0,'¼φ\0sr\0java.util.HashMap┌┴├`╤\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\Zsearch.node.elementName.opsr\0java.lang.IntegerΓáñ≈üç8\0I\0valuexr\0java.lang.Numberå¼òöαï\0\0xp\0\0\0t\0search.node.elementNamet\0<element to search for>t\0selectedSearchTypet\0nodet\05search.node.currentChainedElementContent.chainedRow.0ur\0[Ljava.lang.Object;É╬Xƒs)l\0\0xp\0\0\0sq\0~\0\0\0\0\0sq\0~\0\0\0\0t\0<content to search for>sq\0~\0\0\0\0\0sq\0~\0\0\0\0\0x');
/*!40000 ALTER TABLE `savsrch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scap_benchmark_bundle`
--

DROP TABLE IF EXISTS `scap_benchmark_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scap_benchmark_bundle` (
  `f_benchmarkId` varchar(64) COLLATE utf8_bin NOT NULL,
  `f_version` varchar(16) COLLATE utf8_bin NOT NULL,
  `f_status` varchar(128) COLLATE utf8_bin NOT NULL,
  `f_bundlePath` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `f_bundleSha512` varbinary(64) DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scap_benchmark_bundle`
--

LOCK TABLES `scap_benchmark_bundle` WRITE;
/*!40000 ALTER TABLE `scap_benchmark_bundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `scap_benchmark_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sch`
--

DROP TABLE IF EXISTS `sch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sch` (
  `schedule` longblob,
  `isEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `userOid` bigint(20) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sch`
--

LOCK TABLES `sch` WRITE;
/*!40000 ALTER TABLE `sch` DISABLE KEYS */;
INSERT INTO `sch` VALUES ('¼φ\0sr\01com.tripwire.space.core.scheduler.NeverRecurrence\0\0\0\0\0\0\0\0\0xr\04com.tripwire.space.core.scheduler.AbstractRecurrence·╒ió\">Σ\0\0xp',1,0,-9223372036854775106),('¼φ\0sr\03com.tripwire.space.core.scheduler.MonthlyRecurrence\0\0\0\0\0\0\0\0\0xr\04com.tripwire.space.core.scheduler.PeriodicRecurrence╖δhæ╪┼\0I\0\nm_intervalI\0m_periodType[\0\nm_keyTimest\0[IL\0m_subKeyTimet\0Ljava/util/Calendar;xr\04com.tripwire.space.core.scheduler.AbstractRecurrence·╒ió\">Σ\0\0xpw\0\0\0 \0\0\0ur\0[IM║`&vΩ▓Ñ\0\0xp\0\0\0\0\0\0w\0\0\0\0\0\0\0\0\0\0\0\0x',1,0,-9223372036854775105),('¼φ\0sr\01com.tripwire.space.core.scheduler.NeverRecurrence\0\0\0\0\0\0\0\0\0xr\04com.tripwire.space.core.scheduler.AbstractRecurrence·╒ió\">Σ\0\0xp',1,0,-9223372036854775103);
/*!40000 ALTER TABLE `sch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schg`
--

DROP TABLE IF EXISTS `schg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schg` (
  `nextRun` bigint(20) DEFAULT NULL,
  `lastRun` bigint(20) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `timeout` bigint(20) DEFAULT '0',
  `lastRunEnd` bigint(20) DEFAULT '-1',
  `lastRunDuration` bigint(20) DEFAULT '-1',
  `lastRunStatus` smallint(6) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `schG_0_ASC` (`nextRun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schg`
--

LOCK TABLES `schg` WRITE;
/*!40000 ALTER TABLE `schg` DISABLE KEYS */;
INSERT INTO `schg` VALUES (-2,-2,0,0,-1,-1,0,-9223372036854775758),(-2,-2,0,0,-1,-1,0,-9223372036854775757),(-1,-1,0,0,-1,-1,0,-9223372036854775106),(1367391600000,1364799601053,0,0,1364799601811,760,1,-9223372036854775105),(-1,-1,0,0,-1,-1,0,-9223372036854775103);
/*!40000 ALTER TABLE `schg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schrule`
--

DROP TABLE IF EXISTS `schrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schrule` (
  `rules` bigint(20) NOT NULL,
  `nodes` bigint(20) NOT NULL,
  `opmode` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schrule`
--

LOCK TABLES `schrule` WRITE;
/*!40000 ALTER TABLE `schrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoringrange`
--

DROP TABLE IF EXISTS `scoringrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scoringrange` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `f_ownerId` bigint(20) NOT NULL,
  `f_rangeStart` int(11) NOT NULL,
  `f_rangeEnd` int(11) DEFAULT NULL,
  `f_color` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `ScoringRange_8_ASC` (`f_ownerId`,`nme`),
  UNIQUE KEY `ScoringRange_9_ASC` (`f_ownerId`,`f_rangeStart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoringrange`
--

LOCK TABLES `scoringrange` WRITE;
/*!40000 ALTER TABLE `scoringrange` DISABLE KEYS */;
/*!40000 ALTER TABLE `scoringrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scvrsp`
--

DROP TABLE IF EXISTS `scvrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scvrsp` (
  `f_type` bigint(20) NOT NULL,
  `f_val` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scvrsp`
--

LOCK TABLES `scvrsp` WRITE;
/*!40000 ALTER TABLE `scvrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `scvrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selecttype`
--

DROP TABLE IF EXISTS `selecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selecttype` (
  `f_val` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `f_poss` longblob,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selecttype`
--

LOCK TABLES `selecttype` WRITE;
/*!40000 ALTER TABLE `selecttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `selecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequencegen`
--

DROP TABLE IF EXISTS `sequencegen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequencegen` (
  `f_key` varchar(64) COLLATE utf8_bin NOT NULL,
  `f_value` bigint(20) NOT NULL,
  PRIMARY KEY (`f_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequencegen`
--

LOCK TABLES `sequencegen` WRITE;
/*!40000 ALTER TABLE `sequencegen` DISABLE KEYS */;
INSERT INTO `sequencegen` VALUES ('RemediationWorkOrderId',1);
/*!40000 ALTER TABLE `sequencegen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setsvrtrsps`
--

DROP TABLE IF EXISTS `setsvrtrsps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setsvrtrsps` (
  `svrt` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setsvrtrsps`
--

LOCK TABLES `setsvrtrsps` WRITE;
/*!40000 ALTER TABLE `setsvrtrsps` DISABLE KEYS */;
/*!40000 ALTER TABLE `setsvrtrsps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sevrnge`
--

DROP TABLE IF EXISTS `sevrnge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sevrnge` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `maxLvl` int(11) NOT NULL,
  `clr` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`),
  UNIQUE KEY `maxLvl` (`maxLvl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sevrnge`
--

LOCK TABLES `sevrnge` WRITE;
/*!40000 ALTER TABLE `sevrnge` DISABLE KEYS */;
INSERT INTO `sevrnge` VALUES (-9223372036854775102,-9223372036854775626,'Low','Low severity changes',33,'#0000FF'),(-9223372036854775101,-9223372036854775626,'Medium','Medium severity changes',66,'#FFFF00'),(-9223372036854775100,-9223372036854775626,'High','High severity changes',10000,'#FF0000');
/*!40000 ALTER TABLE `sevrnge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sevscopedrsp`
--

DROP TABLE IF EXISTS `sevscopedrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sevscopedrsp` (
  `S_MIN` int(11) NOT NULL,
  `S_MAX` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sevscopedrsp`
--

LOCK TABLES `sevscopedrsp` WRITE;
/*!40000 ALTER TABLE `sevscopedrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `sevscopedrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smtpserver`
--

DROP TABLE IF EXISTS `smtpserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smtpserver` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `host` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `port` int(11) NOT NULL,
  `frmAddr` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `reqAuth` tinyint(1) NOT NULL DEFAULT '0',
  `reqTls` tinyint(1) NOT NULL DEFAULT '0',
  `authUsr` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `authPw` longblob,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smtpserver`
--

LOCK TABLES `smtpserver` WRITE;
/*!40000 ALTER TABLE `smtpserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `smtpserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmprsps`
--

DROP TABLE IF EXISTS `snmprsps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmprsps` (
  `mgrAddr` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `comStr` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `prt` int(11) NOT NULL,
  `summary` tinyint(1) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `username` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `authType` int(11) NOT NULL DEFAULT '0',
  `password` longblob,
  `usePrvc` tinyint(1) NOT NULL DEFAULT '0',
  `prvcPass` longblob,
  `conEngId` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmprsps`
--

LOCK TABLES `snmprsps` WRITE;
/*!40000 ALTER TABLE `snmprsps` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmprsps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snmpusmagent`
--

DROP TABLE IF EXISTS `snmpusmagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snmpusmagent` (
  `engineId` varchar(18) COLLATE utf8_bin NOT NULL,
  `engineBoots` int(11) NOT NULL,
  PRIMARY KEY (`engineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snmpusmagent`
--

LOCK TABLES `snmpusmagent` WRITE;
/*!40000 ALTER TABLE `snmpusmagent` DISABLE KEYS */;
/*!40000 ALTER TABLE `snmpusmagent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snode`
--

DROP TABLE IF EXISTS `snode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snode` (
  `SN_REG` bigint(20) DEFAULT NULL,
  `SN_IPADDR` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `SN_PORT` int(11) NOT NULL,
  `SN_AUDIT` tinyint(1) NOT NULL DEFAULT '0',
  `SN_REALTIME` tinyint(1) NOT NULL DEFAULT '0',
  `SN_EVENTGEN` tinyint(1) NOT NULL DEFAULT '0',
  `SN_GENEVENTS` tinyint(1) NOT NULL DEFAULT '0',
  `SN_AGENTVER` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SN_PROXYHOST` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `SN_PROXYPORT` int(11) DEFAULT NULL,
  `SN_ISPROXY` tinyint(1) NOT NULL DEFAULT '0',
  `SN_RMIMODE` int(11) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snode`
--

LOCK TABLES `snode` WRITE;
/*!40000 ALTER TABLE `snode` DISABLE KEYS */;
INSERT INTO `snode` VALUES (1366221186933,'127.0.0.1',9899,0,0,1,0,'8.2.2.b8.2.2.r2750.b195',NULL,NULL,0,1,-9223372036854774467);
/*!40000 ALTER TABLE `snode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_check`
--

DROP TABLE IF EXISTS `status_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_check` (
  `f_requireLogin` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_check`
--

LOCK TABLES `status_check` WRITE;
/*!40000 ALTER TABLE `status_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stoppoint`
--

DROP TABLE IF EXISTS `stoppoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stoppoint` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `f_rid` bigint(20) NOT NULL,
  `f_targetClassId` bigint(20) NOT NULL,
  `f_target` longblob,
  `f_noRecurse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoppoint`
--

LOCK TABLES `stoppoint` WRITE;
/*!40000 ALTER TABLE `stoppoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `stoppoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stringtype`
--

DROP TABLE IF EXISTS `stringtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stringtype` (
  `f_val` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `f_len` smallint(6) NOT NULL,
  `f_width` smallint(6) NOT NULL,
  `f_multi` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `StringType_0_ASC` (`f_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stringtype`
--

LOCK TABLES `stringtype` WRITE;
/*!40000 ALTER TABLE `stringtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `stringtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stringvalue`
--

DROP TABLE IF EXISTS `stringvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stringvalue` (
  `oid` bigint(20) NOT NULL,
  `f_type` bigint(20) NOT NULL,
  `f_val` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `StringValue_1_ASC` (`f_type`),
  KEY `StringValue_2_ASC` (`f_val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stringvalue`
--

LOCK TABLES `stringvalue` WRITE;
/*!40000 ALTER TABLE `stringvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `stringvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sybasedbsnode`
--

DROP TABLE IF EXISTS `sybasedbsnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sybasedbsnode` (
  `dbs_useSsl` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sybasedbsnode`
--

LOCK TABLES `sybasedbsnode` WRITE;
/*!40000 ALTER TABLE `sybasedbsnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `sybasedbsnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synctask`
--

DROP TABLE IF EXISTS `synctask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synctask` (
  `vcId` bigint(20) DEFAULT NULL,
  `lastSuccessRun` bigint(20) DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `syncTask_0_ASC` (`vcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synctask`
--

LOCK TABLES `synctask` WRITE;
/*!40000 ALTER TABLE `synctask` DISABLE KEYS */;
/*!40000 ALTER TABLE `synctask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslogrsps`
--

DROP TABLE IF EXISTS `syslogrsps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslogrsps` (
  `hostAddr` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `logName` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `port` int(11) NOT NULL,
  `logLevel` int(11) NOT NULL,
  `facility` int(11) NOT NULL,
  `includeTimestamp` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslogrsps`
--

LOCK TABLES `syslogrsps` WRITE;
/*!40000 ALTER TABLE `syslogrsps` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslogrsps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tacle`
--

DROP TABLE IF EXISTS `tacle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tacle` (
  `tacle_nasip` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `tacle_nasprt` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `tacle_cip` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `tacle_sessid` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `tacle_cmd` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tacle`
--

LOCK TABLES `tacle` WRITE;
/*!40000 ALTER TABLE `tacle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tacle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagtoapplyreference`
--

DROP TABLE IF EXISTS `tagtoapplyreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagtoapplyreference` (
  `applyTagResponseOid` bigint(20) NOT NULL,
  `tagName` varchar(50) COLLATE utf8_bin NOT NULL,
  `tagSetName` varchar(50) COLLATE utf8_bin NOT NULL,
  `tagActionType` int(11) NOT NULL,
  `displayOrder` int(11) NOT NULL,
  PRIMARY KEY (`applyTagResponseOid`,`tagName`,`tagSetName`,`tagActionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagtoapplyreference`
--

LOCK TABLES `tagtoapplyreference` WRITE;
/*!40000 ALTER TABLE `tagtoapplyreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagtoapplyreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasksacls`
--

DROP TABLE IF EXISTS `tasksacls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasksacls` (
  `objId` bigint(20) NOT NULL,
  `prinId` bigint(20) NOT NULL,
  `permId` bigint(20) NOT NULL,
  PRIMARY KEY (`objId`,`prinId`,`permId`),
  KEY `tasksACLS_1_ASC` (`prinId`),
  KEY `tasksACLS_2_ASC` (`permId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasksacls`
--

LOCK TABLES `tasksacls` WRITE;
/*!40000 ALTER TABLE `tasksacls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasksacls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskslnk`
--

DROP TABLE IF EXISTS `taskslnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskslnk` (
  `pop` bigint(20) NOT NULL,
  `kid` bigint(20) NOT NULL,
  PRIMARY KEY (`pop`,`kid`),
  KEY `tasksLnk_1_ASC` (`kid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskslnk`
--

LOCK TABLES `taskslnk` WRITE;
/*!40000 ALTER TABLE `taskslnk` DISABLE KEYS */;
INSERT INTO `taskslnk` VALUES (-9223372036854775758,-9223372036854775106),(-9223372036854775758,-9223372036854775105),(-9223372036854775758,-9223372036854775103);
/*!40000 ALTER TABLE `taskslnk` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_insertontasksLnk
  AFTER INSERT ON tasksLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=NEW.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n + 1
    WHERE oid=NEW.kid;

  UPDATE Grpbl
    SET c_n=c_n + 1, cg_n=cg_n + childGroupAdjustment
    WHERE oid=NEW.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER link_deleteontasksLnk
  AFTER DELETE ON tasksLnk FOR EACH ROW
BEGIN
  DECLARE childGroupAdjustment int;
  DECLARE groupableType int;

  SELECT g_type INTO groupableType
  FROM Grpbl
  WHERE oid=OLD.kid;

  IF (groupableType != 0) THEN
    SET childGroupAdjustment = 1;
  ELSE
    SET childGroupAdjustment = 0;
  END IF;

  UPDATE Grpbl
    SET p_n=p_n - 1
    WHERE oid=OLD.kid;

  UPDATE Grpbl
    SET c_n=c_n - 1, cg_n=cg_n - childGroupAdjustment
    WHERE oid=OLD.pop;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `taskspath`
--

DROP TABLE IF EXISTS `taskspath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskspath` (
  `aid` bigint(20) NOT NULL,
  `did` bigint(20) NOT NULL,
  `ht` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`,`did`),
  KEY `tasksPath_1_ASC` (`did`),
  KEY `tasksPath_2_ASC` (`ht`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskspath`
--

LOCK TABLES `taskspath` WRITE;
/*!40000 ALTER TABLE `taskspath` DISABLE KEYS */;
INSERT INTO `taskspath` VALUES (-9223372036854775758,-9223372036854775758,0);
/*!40000 ALTER TABLE `taskspath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `te_schema`
--

DROP TABLE IF EXISTS `te_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `te_schema` (
  `ROW_KEY` varchar(10) COLLATE utf8_bin NOT NULL,
  `VERSION` int(11) NOT NULL,
  PRIMARY KEY (`ROW_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `te_schema`
--

LOCK TABLES `te_schema` WRITE;
/*!40000 ALTER TABLE `te_schema` DISABLE KEYS */;
INSERT INTO `te_schema` VALUES ('ROW_KEY',43);
/*!40000 ALTER TABLE `te_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmrngrsp`
--

DROP TABLE IF EXISTS `tmrngrsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmrngrsp` (
  `attr` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmrngrsp`
--

LOCK TABLES `tmrngrsp` WRITE;
/*!40000 ALTER TABLE `tmrngrsp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmrngrsp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmwin`
--

DROP TABLE IF EXISTS `tmwin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmwin` (
  `oid` bigint(20) NOT NULL,
  `parentId` bigint(20) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `recurrence` longblob,
  PRIMARY KEY (`oid`),
  KEY `TmWin_1_ASC` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmwin`
--

LOCK TABLES `tmwin` WRITE;
/*!40000 ALTER TABLE `tmwin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmwin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twgroup`
--

DROP TABLE IF EXISTS `twgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twgroup` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twgroup`
--

LOCK TABLES `twgroup` WRITE;
/*!40000 ALTER TABLE `twgroup` DISABLE KEYS */;
INSERT INTO `twgroup` VALUES (-9223372036854775131),(-9223372036854775130),(-9223372036854775129),(-9223372036854775128);
/*!40000 ALTER TABLE `twgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twprin`
--

DROP TABLE IF EXISTS `twprin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twprin` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ptype` int(11) NOT NULL,
  `bltin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twprin`
--

LOCK TABLES `twprin` WRITE;
/*!40000 ALTER TABLE `twprin` DISABLE KEYS */;
INSERT INTO `twprin` VALUES (-9223372036854775392,-9223372036854775638,'Administrator','Full control. Can change system settings including user management and security.',1,1),(-9223372036854775273,-9223372036854775638,'User Administrator','Can add, edit and delete users, user groups and roles.',1,1),(-9223372036854775268,-9223372036854775638,'Power User','Enhanced control. Can create and delete most Tripwire Enterprise objects.',1,1),(-9223372036854775195,-9223372036854775638,'Regular User','Basic control. Can update and check nodes or node groups using existing rules.',1,1),(-9223372036854775175,-9223372036854775638,'Monitor User','No control. Can view data but cannot add or change data.',1,1),(-9223372036854775164,-9223372036854775638,'Rule Manager','Can manage rule groups and rules.',1,1),(-9223372036854775154,-9223372036854775638,'Rule User','Can use and link rule groups and rules.',1,1),(-9223372036854775150,-9223372036854775638,'Policy Manager','Can manage policies, policy groups and policy tests.',1,1),(-9223372036854775139,-9223372036854775638,'Policy User','Can run and link policies, policy groups and policy tests.',1,1),(-9223372036854775134,-9223372036854775636,'administrator','The Administrator for this Tripwire installation.',4,1),(-9223372036854775131,-9223372036854775637,'Tripwire Rule Manager Group','The User Group for Managing Tripwire Distributed Rules.',0,1),(-9223372036854775130,-9223372036854775637,'Tripwire Rule User Group','The User Group for running and linking Tripwire Distributed Rules.',0,1),(-9223372036854775129,-9223372036854775637,'Tripwire Policy Manager Group','The User Group for Managing Tripwire Distributed Policies.',0,1),(-9223372036854775128,-9223372036854775637,'Tripwire Policy User Group','The User Group for running and linking Tripwire Distributed Policies.',0,1),(0,-9223372036854775636,'system','User associated with system events.',3,1);
/*!40000 ALTER TABLE `twprin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twrole`
--

DROP TABLE IF EXISTS `twrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twrole` (
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twrole`
--

LOCK TABLES `twrole` WRITE;
/*!40000 ALTER TABLE `twrole` DISABLE KEYS */;
INSERT INTO `twrole` VALUES (1,-9223372036854775392),(0,-9223372036854775273),(0,-9223372036854775268),(0,-9223372036854775195),(0,-9223372036854775175),(0,-9223372036854775164),(0,-9223372036854775154),(0,-9223372036854775150),(0,-9223372036854775139);
/*!40000 ALTER TABLE `twrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twrplnk`
--

DROP TABLE IF EXISTS `twrplnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twrplnk` (
  `rid` bigint(20) NOT NULL,
  `pid` bigint(20) NOT NULL,
  PRIMARY KEY (`rid`,`pid`),
  KEY `TWRPLNK_1_ASC` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twrplnk`
--

LOCK TABLES `twrplnk` WRITE;
/*!40000 ALTER TABLE `twrplnk` DISABLE KEYS */;
INSERT INTO `twrplnk` VALUES (-9223372036854775392,-9223372036854775510),(-9223372036854775392,-9223372036854775509),(-9223372036854775164,-9223372036854775509),(-9223372036854775392,-9223372036854775508),(-9223372036854775392,-9223372036854775507),(-9223372036854775392,-9223372036854775506),(-9223372036854775392,-9223372036854775505),(-9223372036854775150,-9223372036854775505),(-9223372036854775392,-9223372036854775504),(-9223372036854775268,-9223372036854775504),(-9223372036854775392,-9223372036854775503),(-9223372036854775392,-9223372036854775502),(-9223372036854775392,-9223372036854775501),(-9223372036854775268,-9223372036854775501),(-9223372036854775392,-9223372036854775500),(-9223372036854775268,-9223372036854775500),(-9223372036854775392,-9223372036854775499),(-9223372036854775392,-9223372036854775498),(-9223372036854775392,-9223372036854775497),(-9223372036854775268,-9223372036854775497),(-9223372036854775195,-9223372036854775497),(-9223372036854775392,-9223372036854775496),(-9223372036854775268,-9223372036854775496),(-9223372036854775195,-9223372036854775496),(-9223372036854775392,-9223372036854775495),(-9223372036854775392,-9223372036854775494),(-9223372036854775392,-9223372036854775493),(-9223372036854775268,-9223372036854775493),(-9223372036854775150,-9223372036854775493),(-9223372036854775392,-9223372036854775492),(-9223372036854775268,-9223372036854775492),(-9223372036854775195,-9223372036854775492),(-9223372036854775164,-9223372036854775492),(-9223372036854775154,-9223372036854775492),(-9223372036854775392,-9223372036854775491),(-9223372036854775268,-9223372036854775491),(-9223372036854775195,-9223372036854775491),(-9223372036854775164,-9223372036854775491),(-9223372036854775154,-9223372036854775491),(-9223372036854775392,-9223372036854775490),(-9223372036854775268,-9223372036854775490),(-9223372036854775195,-9223372036854775490),(-9223372036854775392,-9223372036854775489),(-9223372036854775268,-9223372036854775489),(-9223372036854775195,-9223372036854775489),(-9223372036854775392,-9223372036854775488),(-9223372036854775268,-9223372036854775488),(-9223372036854775195,-9223372036854775488),(-9223372036854775150,-9223372036854775488),(-9223372036854775139,-9223372036854775488),(-9223372036854775392,-9223372036854775487),(-9223372036854775268,-9223372036854775487),(-9223372036854775150,-9223372036854775487),(-9223372036854775392,-9223372036854775486),(-9223372036854775268,-9223372036854775486),(-9223372036854775150,-9223372036854775486),(-9223372036854775139,-9223372036854775486),(-9223372036854775392,-9223372036854775485),(-9223372036854775268,-9223372036854775485),(-9223372036854775392,-9223372036854775484),(-9223372036854775268,-9223372036854775484),(-9223372036854775392,-9223372036854775483),(-9223372036854775268,-9223372036854775483),(-9223372036854775392,-9223372036854775482),(-9223372036854775268,-9223372036854775482),(-9223372036854775392,-9223372036854775481),(-9223372036854775268,-9223372036854775481),(-9223372036854775164,-9223372036854775481),(-9223372036854775392,-9223372036854775480),(-9223372036854775268,-9223372036854775480),(-9223372036854775164,-9223372036854775480),(-9223372036854775392,-9223372036854775479),(-9223372036854775392,-9223372036854775478),(-9223372036854775268,-9223372036854775478),(-9223372036854775392,-9223372036854775477),(-9223372036854775273,-9223372036854775477),(-9223372036854775392,-9223372036854775476),(-9223372036854775268,-9223372036854775476),(-9223372036854775392,-9223372036854775475),(-9223372036854775392,-9223372036854775474),(-9223372036854775392,-9223372036854775473),(-9223372036854775268,-9223372036854775473),(-9223372036854775392,-9223372036854775472),(-9223372036854775392,-9223372036854775471),(-9223372036854775268,-9223372036854775471),(-9223372036854775150,-9223372036854775471),(-9223372036854775392,-9223372036854775470),(-9223372036854775268,-9223372036854775470),(-9223372036854775392,-9223372036854775469),(-9223372036854775392,-9223372036854775468),(-9223372036854775268,-9223372036854775468),(-9223372036854775392,-9223372036854775467),(-9223372036854775268,-9223372036854775467),(-9223372036854775392,-9223372036854775466),(-9223372036854775268,-9223372036854775466),(-9223372036854775164,-9223372036854775466),(-9223372036854775392,-9223372036854775465),(-9223372036854775392,-9223372036854775464),(-9223372036854775268,-9223372036854775464),(-9223372036854775392,-9223372036854775463),(-9223372036854775273,-9223372036854775463),(-9223372036854775392,-9223372036854775462),(-9223372036854775268,-9223372036854775462),(-9223372036854775392,-9223372036854775461),(-9223372036854775392,-9223372036854775460),(-9223372036854775392,-9223372036854775459),(-9223372036854775392,-9223372036854775458),(-9223372036854775268,-9223372036854775458),(-9223372036854775392,-9223372036854775457),(-9223372036854775392,-9223372036854775456),(-9223372036854775268,-9223372036854775456),(-9223372036854775150,-9223372036854775456),(-9223372036854775392,-9223372036854775455),(-9223372036854775268,-9223372036854775455),(-9223372036854775150,-9223372036854775455),(-9223372036854775139,-9223372036854775455),(-9223372036854775392,-9223372036854775454),(-9223372036854775268,-9223372036854775454),(-9223372036854775392,-9223372036854775453),(-9223372036854775268,-9223372036854775453),(-9223372036854775195,-9223372036854775453),(-9223372036854775392,-9223372036854775452),(-9223372036854775268,-9223372036854775452),(-9223372036854775392,-9223372036854775451),(-9223372036854775268,-9223372036854775451),(-9223372036854775392,-9223372036854775450),(-9223372036854775268,-9223372036854775450),(-9223372036854775164,-9223372036854775450),(-9223372036854775392,-9223372036854775449),(-9223372036854775268,-9223372036854775449),(-9223372036854775164,-9223372036854775449),(-9223372036854775392,-9223372036854775448),(-9223372036854775392,-9223372036854775447),(-9223372036854775268,-9223372036854775447),(-9223372036854775392,-9223372036854775446),(-9223372036854775273,-9223372036854775446),(-9223372036854775392,-9223372036854775445),(-9223372036854775268,-9223372036854775445),(-9223372036854775392,-9223372036854775444),(-9223372036854775392,-9223372036854775443),(-9223372036854775268,-9223372036854775443),(-9223372036854775392,-9223372036854775442),(-9223372036854775392,-9223372036854775441),(-9223372036854775268,-9223372036854775441),(-9223372036854775392,-9223372036854775440),(-9223372036854775392,-9223372036854775439),(-9223372036854775268,-9223372036854775439),(-9223372036854775150,-9223372036854775439),(-9223372036854775139,-9223372036854775439),(-9223372036854775392,-9223372036854775438),(-9223372036854775268,-9223372036854775438),(-9223372036854775392,-9223372036854775437),(-9223372036854775268,-9223372036854775437),(-9223372036854775392,-9223372036854775436),(-9223372036854775268,-9223372036854775436),(-9223372036854775164,-9223372036854775436),(-9223372036854775154,-9223372036854775436),(-9223372036854775392,-9223372036854775435),(-9223372036854775268,-9223372036854775435),(-9223372036854775392,-9223372036854775434),(-9223372036854775268,-9223372036854775434),(-9223372036854775392,-9223372036854775433),(-9223372036854775268,-9223372036854775433),(-9223372036854775195,-9223372036854775433),(-9223372036854775175,-9223372036854775433),(-9223372036854775392,-9223372036854775432),(-9223372036854775392,-9223372036854775431),(-9223372036854775392,-9223372036854775430),(-9223372036854775392,-9223372036854775429),(-9223372036854775392,-9223372036854775428),(-9223372036854775392,-9223372036854775427),(-9223372036854775268,-9223372036854775427),(-9223372036854775195,-9223372036854775427),(-9223372036854775175,-9223372036854775427),(-9223372036854775392,-9223372036854775426),(-9223372036854775268,-9223372036854775426),(-9223372036854775195,-9223372036854775426),(-9223372036854775175,-9223372036854775426),(-9223372036854775392,-9223372036854775425),(-9223372036854775392,-9223372036854775424),(-9223372036854775268,-9223372036854775424),(-9223372036854775195,-9223372036854775424),(-9223372036854775175,-9223372036854775424),(-9223372036854775392,-9223372036854775423),(-9223372036854775268,-9223372036854775423),(-9223372036854775195,-9223372036854775423),(-9223372036854775175,-9223372036854775423),(-9223372036854775392,-9223372036854775422),(-9223372036854775268,-9223372036854775422),(-9223372036854775195,-9223372036854775422),(-9223372036854775175,-9223372036854775422),(-9223372036854775392,-9223372036854775421),(-9223372036854775268,-9223372036854775421),(-9223372036854775195,-9223372036854775421),(-9223372036854775175,-9223372036854775421),(-9223372036854775392,-9223372036854775420),(-9223372036854775268,-9223372036854775420),(-9223372036854775195,-9223372036854775420),(-9223372036854775175,-9223372036854775420),(-9223372036854775392,-9223372036854775419),(-9223372036854775268,-9223372036854775419),(-9223372036854775195,-9223372036854775419),(-9223372036854775175,-9223372036854775419),(-9223372036854775392,-9223372036854775418),(-9223372036854775273,-9223372036854775418),(-9223372036854775392,-9223372036854775417),(-9223372036854775268,-9223372036854775417),(-9223372036854775392,-9223372036854775416),(-9223372036854775268,-9223372036854775416),(-9223372036854775195,-9223372036854775416),(-9223372036854775175,-9223372036854775416),(-9223372036854775392,-9223372036854775415),(-9223372036854775392,-9223372036854775414),(-9223372036854775392,-9223372036854775413),(-9223372036854775392,-9223372036854775412),(-9223372036854775268,-9223372036854775412),(-9223372036854775392,-9223372036854775411),(-9223372036854775268,-9223372036854775411),(-9223372036854775392,-9223372036854775410),(-9223372036854775392,-9223372036854775409),(-9223372036854775392,-9223372036854775408),(-9223372036854775392,-9223372036854775407),(-9223372036854775392,-9223372036854775406),(-9223372036854775392,-9223372036854775405),(-9223372036854775392,-9223372036854775404),(-9223372036854775268,-9223372036854775404),(-9223372036854775392,-9223372036854775403),(-9223372036854775268,-9223372036854775403),(-9223372036854775392,-9223372036854775402),(-9223372036854775392,-9223372036854775401),(-9223372036854775268,-9223372036854775401),(-9223372036854775392,-9223372036854775400),(-9223372036854775268,-9223372036854775400),(-9223372036854775195,-9223372036854775400),(-9223372036854775392,-9223372036854775399),(-9223372036854775268,-9223372036854775399),(-9223372036854775392,-9223372036854775398),(-9223372036854775268,-9223372036854775398),(-9223372036854775392,-9223372036854775397),(-9223372036854775268,-9223372036854775397),(-9223372036854775392,-9223372036854775396),(-9223372036854775268,-9223372036854775396),(-9223372036854775392,-9223372036854775395),(-9223372036854775268,-9223372036854775395),(-9223372036854775392,-9223372036854775394),(-9223372036854775268,-9223372036854775394),(-9223372036854775392,-9223372036854775393),(-9223372036854775268,-9223372036854775393),(-9223372036854775150,-9223372036854775393);
/*!40000 ALTER TABLE `twrplnk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twstartpoint`
--

DROP TABLE IF EXISTS `twstartpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twstartpoint` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `f_rid` bigint(20) NOT NULL,
  `f_targetClassId` bigint(20) NOT NULL,
  `f_target` longblob,
  `f_filters` longblob,
  `f_critId` bigint(20) NOT NULL,
  `f_recurse` int(11) NOT NULL,
  `f_sev` int(11) NOT NULL,
  `f_archive` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twstartpoint`
--

LOCK TABLES `twstartpoint` WRITE;
/*!40000 ALTER TABLE `twstartpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `twstartpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twuglnk`
--

DROP TABLE IF EXISTS `twuglnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twuglnk` (
  `usrId` bigint(20) NOT NULL,
  `gid` bigint(20) NOT NULL,
  PRIMARY KEY (`usrId`,`gid`),
  KEY `TWUGLNK_1_ASC` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twuglnk`
--

LOCK TABLES `twuglnk` WRITE;
/*!40000 ALTER TABLE `twuglnk` DISABLE KEYS */;
/*!40000 ALTER TABLE `twuglnk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twurlnk`
--

DROP TABLE IF EXISTS `twurlnk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twurlnk` (
  `usrId` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  PRIMARY KEY (`usrId`,`rid`),
  KEY `TWURLNK_1_ASC` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twurlnk`
--

LOCK TABLES `twurlnk` WRITE;
/*!40000 ALTER TABLE `twurlnk` DISABLE KEYS */;
INSERT INTO `twurlnk` VALUES (-9223372036854775134,-9223372036854775392);
/*!40000 ALTER TABLE `twurlnk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twuser`
--

DROP TABLE IF EXISTS `twuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twuser` (
  `hasAdm` tinyint(1) NOT NULL DEFAULT '0',
  `isEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `login` datetime NOT NULL,
  `logout` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twuser`
--

LOCK TABLES `twuser` WRITE;
/*!40000 ALTER TABLE `twuser` DISABLE KEYS */;
INSERT INTO `twuser` VALUES (1,1,'2013-04-17 17:55:15','2013-04-17 17:55:15','',-9223372036854775134),(0,0,'1970-01-02 00:00:00','1970-01-02 00:00:00','',0);
/*!40000 ALTER TABLE `twuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typclm`
--

DROP TABLE IF EXISTS `typclm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typclm` (
  `typclm_assobjname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typclm`
--

LOCK TABLES `typclm` WRITE;
/*!40000 ALTER TABLE `typclm` DISABLE KEYS */;
/*!40000 ALTER TABLE `typclm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `udknodetypes`
--

DROP TABLE IF EXISTS `udknodetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `udknodetypes` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `nme` (`nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `udknodetypes`
--

LOCK TABLES `udknodetypes` WRITE;
/*!40000 ALTER TABLE `udknodetypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `udknodetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unistrings`
--

DROP TABLE IF EXISTS `unistrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unistrings` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `f_nme` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`oid`),
  UNIQUE KEY `f_nme` (`f_nme`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unistrings`
--

LOCK TABLES `unistrings` WRITE;
/*!40000 ALTER TABLE `unistrings` DISABLE KEYS */;
/*!40000 ALTER TABLE `unistrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unix`
--

DROP TABLE IF EXISTS `unix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unix` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_sshKeyFile` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_usePASV` tinyint(1) NOT NULL DEFAULT '0',
  `f_ftpPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_suPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unix`
--

LOCK TABLES `unix` WRITE;
/*!40000 ALTER TABLE `unix` DISABLE KEYS */;
/*!40000 ALTER TABLE `unix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unix_file`
--

DROP TABLE IF EXISTS `unix_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unix_file` (
  `f_fileName` longtext COLLATE utf8_bin,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unix_file`
--

LOCK TABLES `unix_file` WRITE;
/*!40000 ALTER TABLE `unix_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `unix_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unix_file_restore`
--

DROP TABLE IF EXISTS `unix_file_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unix_file_restore` (
  `f_cmd` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unix_file_restore`
--

LOCK TABLES `unix_file_restore` WRITE;
/*!40000 ALTER TABLE `unix_file_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `unix_file_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usrlnks`
--

DROP TABLE IF EXISTS `usrlnks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usrlnks` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `UsrLnks_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usrlnks`
--

LOCK TABLES `usrlnks` WRITE;
/*!40000 ALTER TABLE `usrlnks` DISABLE KEYS */;
/*!40000 ALTER TABLE `usrlnks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vars`
--

DROP TABLE IF EXISTS `vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vars` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` varchar(255) COLLATE utf8_bin DEFAULT '',
  `f_scope` bigint(20) NOT NULL,
  `f_crypt` tinyint(1) NOT NULL DEFAULT '0',
  `f_val` longblob,
  PRIMARY KEY (`oid`),
  KEY `Vars_4_ASC` (`f_scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vars`
--

LOCK TABLES `vars` WRITE;
/*!40000 ALTER TABLE `vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcenter`
--

DROP TABLE IF EXISTS `vcenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcenter` (
  `DelegatingNode` bigint(20) NOT NULL,
  `DelegatingNodeMapping` bigint(20) NOT NULL,
  `username` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `passphrase` varbinary(200) DEFAULT NULL,
  `useSSL` tinyint(1) NOT NULL DEFAULT '0',
  `port` int(11) NOT NULL,
  `esxHttpUsername` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `esxHttpPassphrase` varbinary(200) DEFAULT NULL,
  `esxUsername` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `esxPassphrase` varbinary(200) DEFAULT NULL,
  `esxSuPassphrase` varbinary(200) DEFAULT NULL,
  `esxSshKeyFile` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `esxPort` int(11) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcenter`
--

LOCK TABLES `vcenter` WRITE;
/*!40000 ALTER TABLE `vcenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcmanagednode`
--

DROP TABLE IF EXISTS `vcmanagednode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcmanagednode` (
  `moid` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `VCenterId` bigint(20) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcmanagednode`
--

LOCK TABLES `vcmanagednode` WRITE;
/*!40000 ALTER TABLE `vcmanagednode` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcmanagednode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vers`
--

DROP TABLE IF EXISTS `vers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vers` (
  `oid` bigint(20) NOT NULL,
  `V_EID` bigint(20) NOT NULL,
  `V_TYPE` smallint(6) NOT NULL,
  `V_SEV` smallint(6) NOT NULL,
  `V_TIME` datetime NOT NULL,
  `V_DESC` varchar(1024) COLLATE utf8_bin DEFAULT '',
  `V_ATTR` bigint(20) NOT NULL,
  `V_DATA` bigint(20) NOT NULL,
  `V_APPID` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `V_NO` int(11) NOT NULL DEFAULT '0',
  `V_PKG_HASH` int(11) DEFAULT NULL,
  `V_OUT_WIN` tinyint(1) NOT NULL DEFAULT '0',
  `V_EXISTS` tinyint(1) NOT NULL DEFAULT '0',
  `V_PROMO_ID` bigint(20) NOT NULL DEFAULT '9223372036854775807',
  PRIMARY KEY (`oid`),
  KEY `Vers_1_ASC` (`V_EID`),
  KEY `Vers_4_ASC` (`V_TIME`),
  KEY `Vers_6_ASC` (`V_ATTR`),
  KEY `Vers_7_ASC` (`V_DATA`),
  KEY `Vers_14_ASC` (`V_TYPE`,`V_EID`),
  KEY `Vers_15_ASC` (`V_PROMO_ID`),
  KEY `Vers_16_ASC` (`V_EID`,`V_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vers`
--

LOCK TABLES `vers` WRITE;
/*!40000 ALTER TABLE `vers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER VERS_DELETEON AFTER DELETE ON Vers FOR EACH ROW
BEGIN
  DELETE FROM CVLnks_Vers WHERE pId=OLD.oid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `versiontest`
--

DROP TABLE IF EXISTS `versiontest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versiontest` (
  `oid` bigint(20) NOT NULL,
  `ref_pmId` bigint(20) NOT NULL,
  `nme` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dsc` longtext COLLATE utf8_bin,
  `f_enameCond` longblob,
  `f_versCond` longblob,
  `f_instr` longtext COLLATE utf8_bin,
  `f_remediatorId` bigint(20) NOT NULL,
  `f_isScap` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versiontest`
--

LOCK TABLES `versiontest` WRITE;
/*!40000 ALTER TABLE `versiontest` DISABLE KEYS */;
/*!40000 ALTER TABLE `versiontest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versiontestresult`
--

DROP TABLE IF EXISTS `versiontestresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versiontestresult` (
  `oid` bigint(20) NOT NULL,
  `f_versionTestID` bigint(20) NOT NULL,
  `f_state` smallint(6) NOT NULL,
  `f_time` datetime NOT NULL,
  `f_elementID` bigint(20) NOT NULL,
  `f_versID` bigint(20) NOT NULL,
  `f_actual` longblob,
  `f_nodeID` bigint(20) NOT NULL,
  `f_nextResultTime` datetime DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `VersionTestResult_1_ASC` (`f_versionTestID`),
  KEY `VersionTestResult_2_ASC` (`f_state`),
  KEY `VersionTestResult_3_ASC` (`f_time`),
  KEY `VersionTestResult_7_ASC` (`f_nodeID`),
  KEY `VersionTestResult_8_ASC` (`f_nextResultTime`),
  KEY `VersionTestResult_9_ASC` (`f_versionTestID`,`f_nodeID`,`f_time`,`f_nextResultTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versiontestresult`
--

LOCK TABLES `versiontestresult` WRITE;
/*!40000 ALTER TABLE `versiontestresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `versiontestresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versiontestrules`
--

DROP TABLE IF EXISTS `versiontestrules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versiontestrules` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `VersionTestRules_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versiontestrules`
--

LOCK TABLES `versiontestrules` WRITE;
/*!40000 ALTER TABLE `versiontestrules` DISABLE KEYS */;
/*!40000 ALTER TABLE `versiontestrules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vertask`
--

DROP TABLE IF EXISTS `vertask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vertask` (
  `CNT` int(11) NOT NULL,
  `AGE` int(11) NOT NULL,
  `ISCNT` tinyint(1) NOT NULL DEFAULT '0',
  `ISAGE` tinyint(1) NOT NULL DEFAULT '0',
  `IS_ARCH_AUDIT` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vertask`
--

LOCK TABLES `vertask` WRITE;
/*!40000 ALTER TABLE `vertask` DISABLE KEYS */;
INSERT INTO `vertask` VALUES (100,365,1,1,1,-9223372036854775106);
/*!40000 ALTER TABLE `vertask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vertestresultsevaluator`
--

DROP TABLE IF EXISTS `vertestresultsevaluator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vertestresultsevaluator` (
  `oid` bigint(20) NOT NULL,
  `f_parentId` bigint(20) NOT NULL,
  `f_operatorValue` int(11) NOT NULL,
  `f_versionTestId` bigint(20) NOT NULL,
  `f_negated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `VerTestResultsEvaluator_1_ASC` (`f_parentId`),
  KEY `VerTestResultsEvaluator_3_ASC` (`f_versionTestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vertestresultsevaluator`
--

LOCK TABLES `vertestresultsevaluator` WRITE;
/*!40000 ALTER TABLE `vertestresultsevaluator` DISABLE KEYS */;
/*!40000 ALTER TABLE `vertestresultsevaluator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_sal_message`
--

DROP TABLE IF EXISTS `view_sal_message`;
/*!50001 DROP VIEW IF EXISTS `view_sal_message`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_sal_message` (
  `message_id` bigint(20),
  `message_time` datetime,
  `message_text` longtext,
  `sal_status_name` varchar(64),
  `sal_category_name` varchar(64),
  `sal_user_name` varchar(64),
  `sal_user_oid` bigint(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vmaddress`
--

DROP TABLE IF EXISTS `vmaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmaddress` (
  `f_vm` bigint(20) NOT NULL,
  `f_address` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`f_vm`,`f_address`),
  KEY `VmAddress_1_ASC` (`f_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmaddress`
--

LOCK TABLES `vmaddress` WRITE;
/*!40000 ALTER TABLE `vmaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmware_esx`
--

DROP TABLE IF EXISTS `vmware_esx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmware_esx` (
  `f_connectionMethod` bigint(20) NOT NULL,
  `f_telnetPort` int(11) NOT NULL,
  `f_sshPort` int(11) NOT NULL,
  `f_sshKeyFile` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_transferMethod` bigint(20) NOT NULL,
  `f_usePASV` tinyint(1) NOT NULL DEFAULT '0',
  `f_ftpPort` int(11) NOT NULL,
  `f_userName` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `f_userPassword` longblob,
  `f_suPassword` longblob,
  `f_timeout` int(11) NOT NULL,
  `f_returnAddress` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmware_esx`
--

LOCK TABLES `vmware_esx` WRITE;
/*!40000 ALTER TABLE `vmware_esx` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmware_esx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmware_esx_file`
--

DROP TABLE IF EXISTS `vmware_esx_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmware_esx_file` (
  `f_fileName` longtext COLLATE utf8_bin,
  `f_useCat` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmware_esx_file`
--

LOCK TABLES `vmware_esx_file` WRITE;
/*!40000 ALTER TABLE `vmware_esx_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmware_esx_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmware_esx_file_restore`
--

DROP TABLE IF EXISTS `vmware_esx_file_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmware_esx_file_restore` (
  `f_cmd` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmware_esx_file_restore`
--

LOCK TABLES `vmware_esx_file_restore` WRITE;
/*!40000 ALTER TABLE `vmware_esx_file_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmware_esx_file_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vmwarerule`
--

DROP TABLE IF EXISTS `vmwarerule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vmwarerule` (
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vmwarerule`
--

LOCK TABLES `vmwarerule` WRITE;
/*!40000 ALTER TABLE `vmwarerule` DISABLE KEYS */;
/*!40000 ALTER TABLE `vmwarerule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vnodegrp`
--

DROP TABLE IF EXISTS `vnodegrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vnodegrp` (
  `moid` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `VNodeGrp_0_ASC` (`moid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vnodegrp`
--

LOCK TABLES `vnodegrp` WRITE;
/*!40000 ALTER TABLE `vnodegrp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vnodegrp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waivergrantor`
--

DROP TABLE IF EXISTS `waivergrantor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waivergrantor` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waivergrantor`
--

LOCK TABLES `waivergrantor` WRITE;
/*!40000 ALTER TABLE `waivergrantor` DISABLE KEYS */;
/*!40000 ALTER TABLE `waivergrantor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiverresponsible`
--

DROP TABLE IF EXISTS `waiverresponsible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waiverresponsible` (
  `KM_ID` bigint(20) NOT NULL,
  `KM_KEY` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`KM_ID`),
  UNIQUE KEY `KM_KEY` (`KM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiverresponsible`
--

LOCK TABLES `waiverresponsible` WRITE;
/*!40000 ALTER TABLE `waiverresponsible` DISABLE KEYS */;
/*!40000 ALTER TABLE `waiverresponsible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waivertestnode`
--

DROP TABLE IF EXISTS `waivertestnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waivertestnode` (
  `WaiverId` bigint(20) NOT NULL,
  `TestId` bigint(20) NOT NULL,
  `NodeId` bigint(20) NOT NULL,
  PRIMARY KEY (`WaiverId`,`TestId`,`NodeId`),
  KEY `WaiverTestNode_3_ASC` (`TestId`,`NodeId`,`WaiverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waivertestnode`
--

LOCK TABLES `waivertestnode` WRITE;
/*!40000 ALTER TABLE `waivertestnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `waivertestnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winaclattrtest`
--

DROP TABLE IF EXISTS `winaclattrtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winaclattrtest` (
  `aclType` int(11) NOT NULL,
  `elementType` int(11) NOT NULL,
  `excludeInheritedAces` tinyint(1) NOT NULL DEFAULT '0',
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winaclattrtest`
--

LOCK TABLES `winaclattrtest` WRITE;
/*!40000 ALTER TABLE `winaclattrtest` DISABLE KEYS */;
/*!40000 ALTER TABLE `winaclattrtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorderhistorylogmessage`
--

DROP TABLE IF EXISTS `workorderhistorylogmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorderhistorylogmessage` (
  `f_comment` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `f_changeDescription` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `f_state` smallint(6) NOT NULL,
  `oid` bigint(20) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorderhistorylogmessage`
--

LOCK TABLES `workorderhistorylogmessage` WRITE;
/*!40000 ALTER TABLE `workorderhistorylogmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorderhistorylogmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorderreports`
--

DROP TABLE IF EXISTS `workorderreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorderreports` (
  `pId` bigint(20) NOT NULL,
  `cId` bigint(20) NOT NULL,
  PRIMARY KEY (`pId`,`cId`),
  KEY `WorkOrderReports_1_ASC` (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorderreports`
--

LOCK TABLES `workorderreports` WRITE;
/*!40000 ALTER TABLE `workorderreports` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorderreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `view_sal_message`
--

/*!50001 DROP TABLE IF EXISTS `view_sal_message`*/;
/*!50001 DROP VIEW IF EXISTS `view_sal_message`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_sal_message` AS (select `sal_message_fact`.`message_id` AS `message_id`,`sal_message_fact`.`message_time` AS `message_time`,`sal_message_fact`.`message_text` AS `message_text`,`sal_status_dim`.`sal_status_name` AS `sal_status_name`,`sal_category_dim`.`sal_category_name` AS `sal_category_name`,`sal_user_dim`.`sal_user_name` AS `sal_user_name`,`sal_user_dim`.`sal_user_oid` AS `sal_user_oid` from (((`sal_message_fact` join `sal_user_dim` on((`sal_message_fact`.`sal_user_key` = `sal_user_dim`.`sal_user_key`))) join `sal_status_dim` on((`sal_message_fact`.`sal_status_key` = `sal_status_dim`.`sal_status_key`))) join `sal_category_dim` on((`sal_message_fact`.`sal_category_key` = `sal_category_dim`.`sal_category_key`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-19 19:36:25
