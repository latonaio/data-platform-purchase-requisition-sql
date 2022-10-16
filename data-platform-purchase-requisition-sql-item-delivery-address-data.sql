CREATE TABLE `data_platform_purchase_requisition_item_delivery_address_data
(
    `BusinessPartner`         int(10) NOT NULL,          -- 新規追加
    `PurchaseRequisition`     int(10) NOT NULL,
    `PurchaseRequisitionItem` int(6) NOT NULL,
    `AddressID`               varchar(10) DEFAULT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,   -- 名称変更
    `Country`                 varchar(3) DEFAULT NULL,
    `StreetName`              varchar(60) DEFAULT NULL,
    `CityName`                varchar(40) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `PurchaseRequisition`, `PurchaseRequisitionItem`),
    CONSTRAINT `DataPlatformPurchaseRequisitionItemDeliveryAddressData_fk` FOREIGN KEY (`BusinessPartner`, `PurchaseRequisition`, `PurchaseRequisitionItem`) REFERENCES `data_platform_purchase_requisition_item_data` (`BusinessPartner`, `PurchaseRequisition`, `PurchaseRequisitionItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
