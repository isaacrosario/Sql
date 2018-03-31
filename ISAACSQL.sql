CREATE DATABASE CXPISAAC
USE CXPISAAC

--CREAR TABLAS PROVEEDORES

CREATE TABLE PROVEEDORES_ISAAC
(
CODIGO VARCHAR(07)PRIMARY KEY,
NOMBRE VARCHAR(30)NOT NULL,
APELLIDO VARCHAR(30)NOT NULL,
DIRECION VARCHAR(30),
CIUDAD VARCHAR(30),
TELEFONO VARCHAR(10)
)

--CREATE TABLE FACTURA

CREATE TABLE FACTURAS_ISAAC
(
NUMERO_FACTURA INT PRIMARY KEY,
CODIGO VARCHAR(07),
VALOR_FACTURA MONEY,
FECHA_FACTURA DATE,
FECHA_VENCIMIENTO DATE

)

---CREAR TABLA RECIBOS

CREATE TABLE CHEQUE_ISAAC
(
NUMERO_CHRQUE INT PRIMARY KEY,
NUMERO_FACTURA INT,
VALOR_CHRQUE MONEY,
FECHA_CHEQUE DATE

) 
 --CREAR LAS RELACIONES ENTRE TABLAS
 ALTER TABLE FACTURAS ADD CONSTRAINT FACT_PROV FOREIGN KEY (CODIGO) --CLAVE FOREANEA
 REFERENCES PROVEEDORES (CODIGO)
 
 --RELACION ENTRE FACTURAS Y CHEQUES
  ALTER TABLE CHEQUES ADD CONSTRAINT CHQ_FACT1 FOREIGN KEY (NUMERO_FACTURA)
 REFERENCES FACTURAS (NUMERO_FACTURA)
 
 --SE RELACIONA LA TABLA CHEQUES Y FACTURAS COMO CLAVE FOREANA EN NUMERO_FACTURA 
 --CHQ_FACT O CUALQUIER OTRO NOMBRE ES EL NOMBRE ASIGNADO A LA RELACION