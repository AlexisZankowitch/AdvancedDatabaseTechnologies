BEGIN
  DELETE FROM BUILDINGS;
  DELETE FROM FIELDS;
  DELETE FROM POOLS;
  DELETE FROM ROADS;
  DELETE FROM SHOPS;
  DELETE FROM PONDS;
END;

DROP TABLE BUILDING_GARAGE;
DROP TABLE BUILDING_FLOORS;
DROP TABLE POOL_TYPE;
DROP TABLE POND_TYPE;
DROP TABLE SHOP_TYPE;
DROP TABLE TREE_AGE;
DROP TABLE ROAD_TYPE;

/*TREES*/
BEGIN
  INSERT INTO TREE_AGE (TREE_ID, TREE_AGE) VALUES (1, 150);
  INSERT INTO TREE_AGE (TREE_ID, TREE_AGE) VALUES (2, 15);
END;

/*BUILDINGS*/
BEGIN
  /*LUKE-HOUSE*/
  INSERT INTO BUILDING_FLOORS (BUILD_ID, FLOOR_NUM) VALUES (3,1);
  INSERT INTO BUILDING_FLOORS (BUILD_ID, FLOOR_NUM) VALUES (3,2);
  /*HANA-HOUSE*/
  INSERT INTO BUILDING_FLOORS (BUILD_ID, FLOOR_NUM) VALUES (4,1);
  /*BIGE-HOUSE*/
  INSERT INTO BUILDING_FLOORS (BUILD_ID, FLOOR_NUM) VALUES (7,1);
  INSERT INTO BUILDING_FLOORS (BUILD_ID, FLOOR_NUM) VALUES (7,2);
  INSERT INTO BUILDING_FLOORS (BUILD_ID, FLOOR_NUM) VALUES (7,3);
  INSERT INTO BUILDING_GARAGE (BUILD_ID, GARAGE_FLOOR_NUM) VALUES (7,1);
END;

/*POOL*/
BEGIN
  INSERT INTO POOL_TYPE (POOL_ID, BUILDING_ID, POOL_TYPE) VALUES (1, 3, 'PRIVATE');
END;

/*ROAD*/
BEGIN
  INSERT INTO ROAD_TYPE (ROAD_ID, ROAD_TYPE) VALUES (23,'VERTICAL-ROAD');
  INSERT INTO ROAD_TYPE (ROAD_ID, ROAD_TYPE) VALUES (24,'HORIZONTAL-ROAD');
  INSERT INTO ROAD_TYPE (ROAD_ID, ROAD_TYPE) VALUES (25,'HORIZONTAL-ROAD');
  INSERT INTO ROAD_TYPE (ROAD_ID, ROAD_TYPE) VALUES (38,'CIRCULAR-ROAD');
  INSERT INTO ROAD_TYPE (ROAD_ID, ROAD_TYPE) VALUES (39,'VERTICAL-ROAD');
END;

/*POND*/
BEGIN
  INSERT INTO POND_TYPE (POUND_ID, POUND_SURFACE) VALUES (9, 40);
END;

/*SHOP*/
BEGIN
  INSERT INTO SHOP_TYPE (SHOP_ID, SHOP_TYPE) VALUES (18, 'FOOD');
END;
