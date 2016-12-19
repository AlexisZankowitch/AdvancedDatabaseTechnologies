CREATE TABLE FIELD (
  F_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  F_NAME VARCHAR(30)
);

CREATE TABLE BUILDINGS (
  B_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  B_NAME VARCHAR(30)
);

CREATE TABLE TREES (
  T_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  T_NAME VARCHAR(30)
);

CREATE TABLE POOL (
  P_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  P_NAME VARCHAR(30)
);

CREATE TABLE ROADS (
  R_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  R_NAME VARCHAR(30)
);

CREATE TABLE POUND (
  P_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  P_NAME VARCHAR(30)
);

CREATE TABLE SHOP (
  S_ID NUMBER PRIMARY KEY,
  geometry mdsys.sdo_geometry,
  S_NAME VARCHAR(30)
);