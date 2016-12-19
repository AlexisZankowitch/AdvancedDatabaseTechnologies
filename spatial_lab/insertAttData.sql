BEGIN
  DELETE FROM BUILDINGS;
  DELETE FROM FIELDS;
  DELETE FROM POOLS;
  DELETE FROM ROADS;
  DELETE FROM SHOPS;
  DELETE FROM PONDS;
END;


insert into TREE_AGE(TREE_ID, TREE_AGE) values (1, 5);
insert into TREE_AGE(TREE_ID, TREE_AGE) values (2, 6);
insert into TREE_AGE(TREE_ID, TREE_AGE) values (3, 10);
insert into POOL_TYPE(TYPE_ID, TYPE_NAME) values (1, 'peldbaseins');
insert into BUILDING_FLOORS(BUILD_ID, FLOOR_NUM) values (1, 1);
insert into BUILDING_FLOORS(BUILD_ID, FLOOR_NUM) values (2, 1);
insert into ROAD_TYPE(ROAD_ID, ROAD_TYPE) values (1, 'taciņa');