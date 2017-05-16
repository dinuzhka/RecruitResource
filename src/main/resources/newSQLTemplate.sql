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