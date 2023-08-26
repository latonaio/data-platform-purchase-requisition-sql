CREATE TABLE `data_platform_purchase_requisition_item_doc_data`
(
  `PurchaseRequisition`            int(16) NOT NULL,
  `PurchaseRequisitionItem`        int(6) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`PurchaseRequisition`, `PurchaseRequisitionItem`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMPurchaseRequisitonItemDocData_fk` FOREIGN KEY (`PurchaseRequisition`, `PurchaseRequisitionItem`) REFERENCES `data_platform_purchase_requisition_item_data` (`PurchaseRequisition`, `PurchaseRequisitionItem`),
    CONSTRAINT `DPFMPurchaseRequisitonItemDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMPurchaseRequisitonItemDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
