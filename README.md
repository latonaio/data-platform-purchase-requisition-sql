# data-platform-purchase-requisition-sql 
data-platform-purchase-requisition-sql は、データ連携基盤において、購買依頼データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-purchase-requisition-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-purchase-requisition-sql には、sqlの設定ファイルとして、以下のファイルが含まれます。 

* data-platform-purchase-requisition-sql-header-data.sql （データ連携基盤 購買依頼 - ヘッダデータ）
* data-platform-purchase-requisition-sql-item-data.sql（データ連携基盤 購買依頼 - 明細データ）  
* data-platform-purchase-requisition-sql-item-delivery-address-data.sql（データ連携基盤 購買依頼 - 明細入荷先住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  