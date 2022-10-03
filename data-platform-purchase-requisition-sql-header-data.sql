CREATE TABLE `data_platform_purchase_requisition_header_data`
(
    `BusinessPartner`                   varchar(10) NOT NULL,        --新規追加
    `PurchaseRequisition`               varchar(10) NOT NULL,
    `PurchaseRequisitionType`           varchar(4) DEFAULT NULL,
    `SourceDetermination`               tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `PurchaseRequisition`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
