CREATE DATABASE  IF NOT EXISTS `rail_ticketing_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rail_ticketing_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: rail_ticketing_db
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `seatavailabilitysummary`
--

DROP TABLE IF EXISTS `seatavailabilitysummary`;
/*!50001 DROP VIEW IF EXISTS `seatavailabilitysummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `seatavailabilitysummary` AS SELECT 
 1 AS `Train_code`,
 1 AS `Class_name`,
 1 AS `Number_of_seats`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stationregionmapping`
--

DROP TABLE IF EXISTS `stationregionmapping`;
/*!50001 DROP VIEW IF EXISTS `stationregionmapping`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stationregionmapping` AS SELECT 
 1 AS `station_name`,
 1 AS `Region_name`,
 1 AS `region_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trainscheduleoverview`
--

DROP TABLE IF EXISTS `trainscheduleoverview`;
/*!50001 DROP VIEW IF EXISTS `trainscheduleoverview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trainscheduleoverview` AS SELECT 
 1 AS `Train_code`,
 1 AS `Train_name`,
 1 AS `Start_time`,
 1 AS `End_time`,
 1 AS `Start_station`,
 1 AS `End_station`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `seatavailabilitysummary`
--

/*!50001 DROP VIEW IF EXISTS `seatavailabilitysummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `seatavailabilitysummary` AS select `sa`.`Train_code` AS `Train_code`,`c`.`Class_name` AS `Class_name`,`sa`.`Number_of_seats` AS `Number_of_seats` from (`seat_availability` `sa` join `class` `c` on((`sa`.`Class_code` = `c`.`class_code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stationregionmapping`
--

/*!50001 DROP VIEW IF EXISTS `stationregionmapping`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stationregionmapping` AS select `s`.`station_name` AS `station_name`,`r`.`Region_name` AS `Region_name`,`r`.`Region_code` AS `region_code` from (`station` `s` join `region` `r` on((`s`.`region_id` = `r`.`region_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trainscheduleoverview`
--

/*!50001 DROP VIEW IF EXISTS `trainscheduleoverview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trainscheduleoverview` AS select `tr`.`Train_code` AS `Train_code`,`tr`.`Train_name` AS `Train_name`,`tr`.`Start_time` AS `Start_time`,`tr`.`End_time` AS `End_time`,`s1`.`station_name` AS `Start_station`,`s2`.`station_name` AS `End_station` from ((`train` `tr` join `station` `s1` on((`tr`.`Start_station_code` = `s1`.`Station_code`))) join `station` `s2` on((`tr`.`End_station_code` = `s2`.`Station_code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'rail_ticketing_db'
--

--
-- Dumping routines for database 'rail_ticketing_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `GenerateDailyRevenueReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateDailyRevenueReport`(
    IN p_Date DATE,
    OUT p_TotalRevenue DECIMAL(10,2)
)
BEGIN
    -- Calculate total revenue
    SELECT SUM(fare) INTO p_TotalRevenue
    FROM passenger_info pi
    JOIN pay_info pyi ON pyi.srl_no = pi.srl_no
    JOIN Ticket_reservation tr ON pyi.PNR_no = tr.PNR_no
    WHERE tr.to_date = p_Date;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTrainSchedule` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateTrainSchedule`(
    IN p_TrainCode VARCHAR(20),
    IN p_StartTime TIME,
    IN p_EndTime TIME,
    OUT p_Message VARCHAR(255)
)
BEGIN
    -- Update train schedule
    UPDATE Train
    SET Start_time = p_StartTime,
        End_time = p_EndTime
    WHERE Train_code = p_TrainCode;

    IF ROW_COUNT() > 0 THEN
        SET p_Message = 'Train schedule updated successfully';
    ELSE
        SET p_Message = 'Train code not found';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 14:47:38
