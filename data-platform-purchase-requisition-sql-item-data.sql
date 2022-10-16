CREATE TABLE `data_platform_purchase_requisition_item_data`
(
    `BusinessPartner`                   int(10) NOT NULL,           -- 新規追加
    `PurchaseRequisition`               int(10) NOT NULL,
    `PurchaseRequisitionItem`           int(5) NOT NULL,
    `PurchasingDocument`                int(10) DEFAULT NULL,
    `PurchasingDocumentItem`            int(5) DEFAULT NULL,
    `PurReqnReleaseStatus`              varchar(2) DEFAULT NULL,
    `PurchasingDocumentItemCategory`    varchar(3) DEFAULT NULL,
    `PurchaseRequisitionItemText`       varchar(100) DEFAULT NULL,
    `Product`                           varchar(40) DEFAULT NULL,   -- 名称変更
    `ProductGroup`                      varchar(9) DEFAULT NULL,　  -- 名称変更
    `RequestedQuantity`                 varchar(13) DEFAULT NULL,
    `BaseUnit`                          varchar(5) DEFAULT NULL,
    `PurchaseRequisitionPrice`          varchar(11) DEFAULT NULL,
    `PurReqnPriceQuantity`              varchar(13) DEFAULT NULL,
    `ProductGoodsReceiptDuration`       int(3) DEFAULT NULL,    　  -- 名称変更
    `PurchaseRequisitionReleaseDate`    varchar(80) DEFAULT NULL,
    `PurchasingOrganization`            varchar(4) DEFAULT NULL,
    `ShippingPlant`                     varchar(4) DEFAULT NULL,    -- 新規追加
    `ShippingPlantStorageLocation`      varchar(4) DEFAULT NULL,    -- 新規追加
    `ReceivingPlant`                    varchar(4) DEFAULT NULL,    -- 新規追加
    `ReceivingPlantStorageLocation`     varchar(4) DEFAULT NULL,    -- 新規追加
    `SourceOfSupplyIsAssigned`          tinyint(1) DEFAULT NULL,
    `OrderedQuantity`                   varchar(13) DEFAULT NULL,
    `DeliveryDate`                      varchar(80) DEFAULT NULL,
    `CreationDate`                      varchar(80) DEFAULT NULL,
    `ProcessingStatus`                  varchar(2) DEFAULT NULL,
    `PurchasingInfoRecord`              int(10) DEFAULT NULL,
    `Supplier`                          int(10) DEFAULT NULL,
    `RequisitionerName`                 varchar(100) DEFAULT NULL,
    `PurReqnItemCurrency`               varchar(5) DEFAULT NULL,
    `ProductPlannedDeliveryDurn`        int(3) DEFAULT NULL,        -- 名称変更
    `IsPurReqnBlocked`                  tinyint(1) DEFAULT NULL,
    `GLAccount`                         varchar(10) DEFAULT NULL,   -- 新規追加    
    `BusinessArea`                      varchar(4) DEFAULT NULL,    -- 新規追加
    `ProfitCenter`                      varchar(10) DEFAULT NULL,   -- 新規追加
    `Batch`                             varchar(10) DEFAULT NULL,
    `MRPController`                     varchar(3) DEFAULT NULL,
    `Reservation`                       int(10) DEFAULT NULL,
    `LastChangeDateTime`                varchar(80) DEFAULT NULL,
    `IsDeleted`                         tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `PurchaseRequisition`, `PurchaseRequisitionItem`),
    CONSTRAINT `DataPlatformPurchaseRequisitionItemData_fk` FOREIGN KEY (`BusinessPartner`, `PurchaseRequisition`) REFERENCES `data_platform_purchase_requisition_header_data` (`BusinessPartner`, `PurchaseRequisition`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
