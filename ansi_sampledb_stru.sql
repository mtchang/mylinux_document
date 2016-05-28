-- 此檔為SQL練習使用的資料表格檔案，使用者使用前必須先建立一個空白的資料庫，字元編碼UTF-8
-- 並且依序匯入 (1)ansi_sampledb_stru.sql 資料庫結構檔案(匯入後請檢查是否產生資料庫表格)
-- 及 (2)ansi_sampledb_data.sql (匯入後請檢查資料是否進入資料庫表格內)
-- 目前測試在PGSQL、mysql及MSSQL可以匯入，已知問題如下
-- PGSQL需要把datetime資料型態改為date
-- write by mtchang(mtchang.tw@gmail.com)  2007.11.12
-- -----------------------------------------------------------------------------------------------------------------
-- phpMyAdmin SQL Dump
-- version 2.10.1
-- 資料部份 SQL兼容 ANSI 轉出時的設定
-- X 使用完整新增指令
-- X 伸延新增模式
-- O 建立之查詢最大長度 50000
-- X 使用延遲式新增
-- X 使用忽略加入 (insert)
-- O 以十六進制數值顯示二進制欄位
-- -------------------------------------------------------
-- 以下開始為資料文件
-- --------------------------------------------------------
-- 
-- 資料表格式： 'CONDUCT'
-- 

CREATE TABLE CONDUCT (
  班級座號 varchar(9) default NULL,
  導師評分 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'CUSTOMER'
-- 

CREATE TABLE CUSTOMER (
  客戶寶號 varchar(31) default NULL,
  客戶代號 varchar(9) default NULL,
  縣市 varchar(9) default NULL,
  地址 varchar(39) default NULL,
  郵遞區號 varchar(4) default NULL,
  聯絡人 varchar(9) default NULL,
  職稱 varchar(15) default NULL,
  電話 varchar(12) default NULL,
  行業別 varchar(9) default NULL,
  統一編號 varchar(9) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'DEPT'
-- 

CREATE TABLE DEPT (
  部門名稱 varchar(9) default NULL,
  部門代號 varchar(9) default NULL,
  主管姓名 varchar(9) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'EMPLOYEE'
-- 

CREATE TABLE EMPLOYEE (
  姓名 varchar(8) default NULL,
  現任職稱 varchar(11) default NULL,
  部門代號 varchar(4) default NULL,
  縣市 varchar(7) default NULL,
  地址 varchar(32) default NULL,
  電話 varchar(16) default NULL,
  郵遞區號 varchar(3) default NULL,
  目前月薪資 numeric(15,5) default NULL,
  年假天數 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'EXP'
-- 

CREATE TABLE EXP (
  姓名 varchar(7) default NULL,
  在外任職一 varchar(14) default NULL,
  在外任職二 varchar(17) default NULL,
  公司任職一 varchar(11) default NULL,
  公司任職二 varchar(11) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'LEAVE2'
-- 

CREATE TABLE LEAVE2 (
  姓名 varchar(9) default NULL,
  假別 varchar(9) default NULL,
  年 numeric(15,5) default NULL,
  月 numeric(15,5) default NULL,
  天數 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'OVERTIME'
-- 

CREATE TABLE OVERTIME (
  姓名 varchar(9) default NULL,
  年 numeric(15,5) default NULL,
  月 numeric(15,5) default NULL,
  日 numeric(15,5) default NULL,
  加班時數 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'PERSON'
-- 

CREATE TABLE PERSON (
  姓名 varchar(7) default NULL,
  年齡 numeric(15,5) default NULL,
  性別 varchar(3) default NULL,
  出生地 varchar(7) default NULL,
  籍貫 varchar(7) default NULL,
  到職年 numeric(15,5) default NULL,
  專長一 varchar(13) default NULL,
  專長二 varchar(13) default NULL,
  第一外語 varchar(9) default NULL,
  第二外語 varchar(9) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'PRODUCT'
-- 

CREATE TABLE PRODUCT (
  產品名稱 varchar(31) default NULL,
  產品代號 varchar(14) default NULL,
  單價 numeric(15,5) default NULL,
  成本 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'QUOTA'
-- 

CREATE TABLE QUOTA (
  業務姓名 varchar(9) default NULL,
  業績目標90 numeric(15,5) default NULL,
  業績目標89 numeric(15,5) default NULL,
  業績目標88 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'QUOTA1'
-- 

CREATE TABLE QUOTA1 (
  業務姓名 varchar(9) default NULL,
  業績目標93 numeric(15,5) default NULL,
  業績目標92 numeric(15,5) default NULL,
  業績目標91 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'RECORDS'
-- 

CREATE TABLE RECORDS (
  班級座號 varchar(9) default NULL,
  年月日 numeric(15,5) default NULL,
  公假 numeric(15,5) default NULL,
  事假 numeric(15,5) default NULL,
  病假 numeric(15,5) default NULL,
  曠課 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'SALES'
-- 

CREATE TABLE SALES (
  客戶代號 varchar(9) default NULL,
  業務姓名 varchar(9) default NULL,
  產品代號 varchar(12) default NULL,
  數量 numeric(15,5) default NULL,
  交易年 numeric(15,5) default NULL,
  交易月 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'SALES1'
-- 

CREATE TABLE SALES1 (
  客戶代號 varchar(9) default NULL,
  業務姓名 varchar(9) default NULL,
  產品代號 varchar(13) default NULL,
  數量_91年 numeric(15,5) default NULL,
  數量_92年 numeric(15,5) default NULL,
  數量_93年 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'SALES2'
-- 

CREATE TABLE SALES2 (
  客戶代號 varchar(9) default NULL,
  業務姓名 varchar(9) default NULL,
  產品代號 varchar(13) default NULL,
  數量 numeric(15,5) default NULL,
  交易年 numeric(15,5) default NULL,
  交易月 numeric(15,5) default NULL
);

-- --------------------------------------------------------

-- 
-- 資料表格式： 'STUDENTS'
-- 

CREATE TABLE STUDENTS (
  學號 numeric(15,5) default NULL,
  班級座號 varchar(9) default NULL,
  姓名 varchar(7) default NULL,
  出生年月日 datetime default NULL,
  身分証號碼 varchar(11) default NULL,
  住址 varchar(33) default NULL,
  家長 varchar(9) default NULL,
  電話 varchar(15) default NULL,
  科別 varchar(10) default NULL,
  畢業國中 varchar(22) default NULL
);
