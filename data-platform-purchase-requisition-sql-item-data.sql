CREATE TABLE `data_platform_purchase_requisition_item_data`
(
    `BusinessPartner`                   varchar(10) NOT NULL,      --新規追加
    `PurchaseRequisition`               varchar(10) NOT NULL,
    `PurchaseRequisitionItem`           varchar(5) NOT NULL,
    `PurchasingDocument`                varchar(10) DEFAULT NULL,
    `PurchasingDocumentItem`            varchar(5) DEFAULT NULL,
    `PurReqnReleaseStatus`              varchar(2) DEFAULT NULL,
    `PurchasingDocumentItemCategory`    varchar(3) DEFAULT NULL,
    `PurchaseRequisitionItemText`       varchar(40) DEFAULT NULL,
    `Product`                           varchar(40) DEFAULT NULL,   --名称変更
    `ProductGroup`                      varchar(9) DEFAULT NULL,　  --名称変更
    `RequestedQuantity`                 varchar(13) DEFAULT NULL,
    `BaseUnit`                          varchar(5) DEFAULT NULL,
    `PurchaseRequisitionPrice`          varchar(11) DEFAULT NULL,
    `PurReqnPriceQuantity`              varchar(13) DEFAULT NULL,
    `ProductGoodsReceiptDuration`       varchar(3) DEFAULT NULL,　  --名称変更
    `PurchaseRequisitionReleaseDate`    varchar(80) DEFAULT NULL,
    `PurchasingOrganization`            varchar(4) DEFAULT NULL,
    `ShippingPlant`                     varchar(4) DEFAULT NULL,    --新規追加
    `ShippingPlantStorageLocation`      varchar(4) DEFAULT NULL,    --新規追加
    `ReceivingPlant`                    varchar(4) DEFAULT NULL,    --新規追加
    `ReceivingPlantStorageLocation`     varchar(4) DEFAULT NULL,    --新規追加
    `SourceOfSupplyIsAssigned`          tinyint(1) DEFAULT NULL,
    `OrderedQuantity`                   varchar(13) DEFAULT NULL,
    `DeliveryDate`                      varchar(80) DEFAULT NULL,
    `CreationDate`                      varchar(80) DEFAULT NULL,
    `ProcessingStatus`                  varchar(2) DEFAULT NULL,
    `PurchasingInfoRecord`              varchar(10) DEFAULT NULL,
    `Supplier`                          varchar(10) DEFAULT NULL,
    `RequisitionerName`                 varchar(12) DEFAULT NULL,
    `PurReqnItemCurrency`               varchar(5) DEFAULT NULL,
    `ProductPlannedDeliveryDurn`        varchar(3) DEFAULT NULL,    --名称変更
    `StorageLocation`                   varchar(4) DEFAULT NULL,
    `IsPurReqnBlocked`                  varchar(1) DEFAULT NULL,
    `GLAccount`                         varchar(10) DEFAULT NULL, --新規追加    
    `BusinessArea`                      varchar(4) DEFAULT NULL,  --新規追加
    `ProfitCenter`                      varchar(10) DEFAULT NULL, --新規追加
    `Batch`                             varchar(10) DEFAULT NULL,
    `MRPController`                     varchar(3) DEFAULT NULL,
    `Reservation`                       varchar(10) DEFAULT NULL,
    `LastChangeDateTime`                varchar(80) DEFAULT NULL,
    `IsDeleted`                         varchar(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `PurchaseRequisition`, `PurchaseRequisitionItem`),
    CONSTRAINT `DataPlatformPurchaseRequisitionItemData_fk` FOREIGN KEY (`PurchaseRequisition`) REFERENCES `data_platform_purchase_requisition_header_data` (`PurchaseRequisition`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
