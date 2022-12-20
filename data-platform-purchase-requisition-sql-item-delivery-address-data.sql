CREATE TABLE `data_platform_purchase_requisition_item_delivery_address_data`
(
    `Buyer`                   int(12) NOT NULL,
    `PurchaseRequisition`     int(16) NOT NULL,
    `PurchaseRequisitionItem` int(6) NOT NULL,
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

    PRIMARY KEY (`Buyer`, `PurchaseRequisition`, `PurchaseRequisitionItem`),

    CONSTRAINT `DataPlatformPurchaseRequisitionItemDeliveryAddressData_fk` FOREIGN KEY (`Buyer`, `PurchaseRequisition`, `PurchaseRequisitionItem`) REFERENCES `data_platform_purchase_requisition_item_data` (`Buyer`, `PurchaseRequisition`, `PurchaseRequisitionItem`),
    CONSTRAINT `DataPlatformPurchaseRequisitionItemDeliveryAddressAddressIDData_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
