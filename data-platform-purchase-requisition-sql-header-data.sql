CREATE TABLE `data_platform_purchase_requisition_header_data`
(
    `Buyer`                                 int(12) NOT NULL,
    `PurchaseRequisition`                   int(16) NOT NULL,
    `PurchaseRequisitionType`               varchar(4) DEFAULT NULL,
    `PlannedOrderConversion`                tinyint(1) DEFAULT NULL,
    `SupplyChainRelationshipIsApplied`      tinyint(1) DEFAULT NULL,
    `Language`                              varchar(2) DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Buyer`, `PurchaseRequisition`),
    
    CONSTRAINT `DataPlatformPurchaseRequisitionHeaderDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_genera_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformPurchaseRequisitionHeaderDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
