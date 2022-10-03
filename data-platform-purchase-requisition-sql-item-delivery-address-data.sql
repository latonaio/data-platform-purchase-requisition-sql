CREATE TABLE `data_platform_purchase_requisition_item_delivery_address_data
(
    `BusinessPartner`         varchar(10) NOT NULL,    --新規追加
    `PurchaseRequisition`     varchar(10) NOT NULL,
    `PurchaseRequisitionItem` varchar(5) NOT NULL,
    `AddressID`               varchar(10) DEFAULT NULL,
    `Country`                 varchar(3) DEFAULT NULL,
    `Region`                  varchar(3) DEFAULT NULL,
    `StreetName`              varchar(60) DEFAULT NULL,
    `CityName`                varchar(40) DEFAULT NULL,
    `Language`                varchar(2) DEFAULT NULL,  --名称変更
    `FaxNumber`               varchar(30) DEFAULT NULL,
    `PhoneNumber`             varchar(30) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `PurchaseRequisition`, `PurchaseRequisitionItem`),
    CONSTRAINT `DataPlatformPurchaseRequisitionItemDeliveryAddressData_fk` FOREIGN KEY (`PurchaseRequisition`) REFERENCES `data_platform_purchase_requisition_header_data` (`PurchaseRequisition`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
