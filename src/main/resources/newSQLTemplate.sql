/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Dinuzhka
 * Created: May 7, 2017
 */


ALTER TABLE `recruitresource`.`login` 
CHANGE COLUMN `password` `password` VARCHAR(2000) NOT NULL ;


ALTER TABLE `recruitresource`.`persons` 
CHANGE COLUMN `type` `type` enum('user','company') NOT NULL DEFAULT 'user';


ALTER TABLE `recruitresource`.`persons` 
CHANGE COLUMN `idUser` `idUser` int(10) NOT NULL AUTO_INCREMENT;    

INSERT INTO `recruitresource`.`sectors`
(`sectorTitle`) VALUES('IT/Software'),('IT/Networking'),('Business'),('Administration'),('HR');

INSERT INTO `recruitresource`.`education_levels`
(`educationLevel`) VALUES 
('O/L'),('A/L'),('Diploma'),('Higher Diploma'),('Bachelors degree'),('Masters'),('Doctorate');

INSERT INTO `recruitresource`.`employment_levels`
(`employmentLevel`) VALUES
('Full time employee'),('Part time employee'),('Contract employee'),('Volunteer');

INSERT INTO `recruitresource`.`job_titles`
(`Sectors_idSectors`,`jobTitle`)
VALUES
(1,'Software Engineer'),(1,'Senior Software Engineer'),(1,'UI Engineer'),(1,'QA Engineer'),(1,'Automation Engineer'),
(2,'Network Engineer'),(2,'Network Admin'),(2,'DB Admin'),
(3,'Accountant'),(3,'Senior Accountant'),(3,'Business development manager'),(3,'Marketing Stategist'),
(4,'CEO'),(4,'COO'),(4,'CTO'),(4,'Manager'),(4,'Director'),
(5,'HR Manager'),(5,'Compensation Analyst'),(5,'Coordinator');
