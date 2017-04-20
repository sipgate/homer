-- MySQL dump 10.13  Distrib 5.6.35-81.0, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: homer_data
-- ------------------------------------------------------
-- Server version	5.6.35-81.0-log

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
/*!50112 SELECT COUNT(*) INTO @is_rocksdb_supported FROM INFORMATION_SCHEMA.SESSION_VARIABLES WHERE VARIABLE_NAME='rocksdb_bulk_load' */;
/*!50112 SET @save_old_rocksdb_bulk_load = IF (@is_rocksdb_supported, 'SET @old_rocksdb_bulk_load = @@rocksdb_bulk_load', 'SET @dummy_old_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @save_old_rocksdb_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 SET @enable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @enable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;

--
-- Table structure for table `isup_capture_all_20170422`
--

DROP TABLE IF EXISTS `isup_capture_all_20170422`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isup_capture_all_20170422` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `micro_ts` bigint(18) NOT NULL DEFAULT '0',
  `method` varchar(4) NOT NULL DEFAULT '',
  `correlation_id` varchar(256) NOT NULL DEFAULT '',
  `opc` int(10) NOT NULL DEFAULT '0',
  `dpc` int(10) NOT NULL DEFAULT '0',
  `cic` int(10) NOT NULL DEFAULT '0',
  `called_number` varchar(16) DEFAULT '',
  `called_ton` int(10) DEFAULT '0',
  `called_npi` int(10) DEFAULT '0',
  `called_inn` int(10) DEFAULT '0',
  `calling_number` varchar(16) DEFAULT '',
  `calling_ton` int(10) DEFAULT '0',
  `calling_npi` int(10) DEFAULT '0',
  `calling_ni` int(10) DEFAULT '0',
  `calling_restrict` int(10) DEFAULT '0',
  `calling_screened` int(10) DEFAULT '0',
  `calling_category` int(10) DEFAULT '0',
  `cause_standard` int(10) DEFAULT '0',
  `cause_location` int(10) DEFAULT '0',
  `cause_itu_class` int(10) DEFAULT '0',
  `cause_itu_cause` int(10) DEFAULT '0',
  `event_num` int(10) DEFAULT '0',
  `hop_counter` int(10) DEFAULT '0',
  `nci_satellite` int(10) DEFAULT '0',
  `nci_continuity_check` int(10) DEFAULT '0',
  `nci_echo_device` int(10) DEFAULT '0',
  `fwc_nic` int(10) DEFAULT '0',
  `fwc_etem` int(10) DEFAULT '0',
  `fwc_iw` int(10) DEFAULT '0',
  `fwc_etei` int(10) DEFAULT '0',
  `fwc_isup` int(10) DEFAULT '0',
  `fwc_isup_pref` int(10) DEFAULT '0',
  `fwc_ia` int(10) DEFAULT '0',
  `fwc_sccpm` int(10) DEFAULT '0',
  `transmission_medium` int(10) DEFAULT '0',
  `user_coding_standard` int(10) DEFAULT '0',
  `user_transfer_cap` int(10) DEFAULT '0',
  `user_transfer_mode` int(10) DEFAULT '0',
  `user_transfer_rate` int(10) DEFAULT '0',
  `user_layer1_ident` int(10) DEFAULT '0',
  `user_layer1_proto` int(10) DEFAULT '0',
  `source_ip` varchar(60) NOT NULL DEFAULT '',
  `source_port` int(10) NOT NULL DEFAULT '0',
  `destination_ip` varchar(60) NOT NULL DEFAULT '',
  `destination_port` int(10) NOT NULL DEFAULT '0',
  `proto` int(5) NOT NULL DEFAULT '0',
  `family` int(1) DEFAULT NULL,
  `type` int(5) NOT NULL DEFAULT '0',
  `node` varchar(125) NOT NULL DEFAULT '',
  `msg` varchar(5000) NOT NULL DEFAULT '',
  `expires` int(5) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`,`date`),
  KEY `date` (`date`),
  KEY `called_number` (`called_number`),
  KEY `calling_number` (`calling_number`),
  KEY `correlationid` (`correlation_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='20170422'
/*!50100 PARTITION BY RANGE ( UNIX_TIMESTAMP(`date`))
(PARTITION p2017042200 VALUES LESS THAN (1492905600) ENGINE = InnoDB,
 PARTITION pmax VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-20 14:28:29
