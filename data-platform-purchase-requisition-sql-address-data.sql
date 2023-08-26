CREATE TABLE `data_platform_purchase_requisition_address_data`
(
    `PurchaseRequisition`     int(16) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    
    PRIMARY KEY (`PurchaseRequisition`, `AddressID`),
    
    CONSTRAINT `DPFMPurchaseRequisitionAddressData_fk` FOREIGN KEY (`PurchaseRequisition`) REFERENCES `data_platform_purchase_requisition_header_data` (`PurchaseRequisition`),
    CONSTRAINT `DPFMPurchaseRequisitionAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
