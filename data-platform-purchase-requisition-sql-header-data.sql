CREATE TABLE `data_platform_purchase_requisition_header_data`
(
    `PurchaseRequisition`                   int(16) NOT NULL,
    `Buyer`                                 int(12) NOT NULL,
    `PurchaseRequisitionType`               varchar(4) NOT NULL,
	`PlannedOrder`                          int(16) DEFAULT NULL,
	`PlannedOrderItem`                      int(6) DEFAULT NULL,
    `PrecedingOrderID`                      int(16) DEFAULT NULL,
    `PrecedingOrderItem`                    int(6) DEFAULT NULL,
    `Project`                               int(16) DEFAULT NULL,
    `WBSElement`                            int(8) DEFAULT NULL,
    `CreationDate`                          date NOT NULL,
    `LastChangeDate`                        date NOT NULL,
    `IsCancelled`                           tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`PurchaseRequisition`),
    
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataPlannedOrder_fk` FOREIGN KEY (`PlannedOrder`) REFERENCES `data_platform_planned_order_header_data` (`PlannedOrder`),
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataPlannedOrderItem_fk` FOREIGN KEY (`PlannedOrder`, `PlannedOrderItem`) REFERENCES `data_platform_planned_order_item_data` (`PlannedOrder`, `PlannedOrderItem`),
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataPrecedingOrderID_fk` FOREIGN KEY (`PrecedingOrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataPrecedingOrderItem_fk` FOREIGN KEY (`PrecedingOrderID`, `PrecedingOrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMPurchaseRequisitionHeaderDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
