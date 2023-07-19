CREATE SCHEMA IF NOT EXISTS `Loja` DEFAULT CHARACTER SET utf8mb4;

USE `Loja`;

-----------------------------
-- Table `loja`.`Estado`
-----------------------------

create table if not exists `Loja`.`Estado`(
    `ID` int not null auto_increment,
    `Nome` varchar(50) not null,
    `UF` char(2) not null,
    primary key(`ID`)
)engine = InnoDB;

-----------------------------
-- Table `loja`.`Municipio`
-----------------------------

create table if not exists `Loja`.`Municipio`(
	`ID` int not null auto_increment,
    `Nome` varchar(80) not null,
    `CodIBGE` int not null,
    `Estado_ID` int not null,
    primary key(`ID`),
    index `fk_Municipio_Estado1_idx` (`Estado_ID` ASC) visible,
    constraint `fk_Municipio_Estado1`
		foreign key(`Estado_ID`)
        references `Loja`.`Estado`(`ID`)
        on delete no action
        on update no action
)engine = InnoDB;

-----------------------------
-- Table `loja`.`Cliente`
-----------------------------

create table if not exists `Loja`.`Cliente`(
	`ID` int not null auto_increment,
	`Nome` varchar(80) not null,
    `CPF` char(11) not null,
    `Celular` char(11) null,
    `EndLogradouro` varchar(100) not null,
    `EndNumero` varchar(10) not null,
    `EndMunicipio` int not null,
    `EndCEP` char(8) null,
    `Municipio_ID` int not null,
    primary key(`ID`),
    index `fk_Cliente_Municipio1_idx` (`Municipio_ID` ASC) visible,
    constraint `fk_Cliente_Municipio1`
		foreign key(`Municipio_ID`)
        references `Loja`.`Municipio`(`ID`)
        on delete no action
        on update no action
)engine = InnoDB;
-----------------------------
-- Table `loja`.`ContaReceber`
-----------------------------

create table if not exists `Loja`.`ContaReceber`(
	`ID` int not null auto_increment,
    `FaturaVendaID` int null,
    `DataConta` date not null,
    `DataVecebimento` date not null,
    `Valor` decimal(18,2) not null,
    `Situação` ENUM('1','2','3') not null,
    `Cliente_ID` int not null,
    primary key(`ID`),
    index `fk_ContaReceber_Cliente1_idx` (`Cliente_ID` ASC)visible,
    constraint `fk_ContaReceber_Cliente1`
		foreign key(`Cliente_ID`)
        references `Loja`.`Cliente`(`ID`)
        on delete no action
        on update no action
)engine = InnoDB
comment = '				';
