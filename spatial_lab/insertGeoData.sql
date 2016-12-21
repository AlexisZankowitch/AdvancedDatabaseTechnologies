/*BUILDINGS*/
  BEGIN
  /*ONE RECTANGLE*/
  INSERT INTO BUILDINGS VALUES (
    SEQ_BUI.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(80,15, 125,40)),
    'LUKE-HOUSE'
  );
  /*ONE RECTANGLE*/
  INSERT INTO BUILDINGS VALUES (
    SEQ_BUI.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(0,0, 30,40)),
    'HANA-HOUSE'
  );
  /*POLYGON COMPOUND*/
  INSERT INTO BUILDINGS VALUES (
    SEQ_BUI.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1005,1, 1,2,1),
        mdsys.sdo_ordinate_array(110,50,110,80,125,80,125,90,135,90,135,80,150,80,150,50,110,50)),
    'BIGE-HOUSE'
  );
  END;

/*ROADS*/
  BEGIN
  /*ONE RECTANGLE*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(30,0, 40,100)),
    'FIRST-STREET'
  );
  /*ONE RECTANGLE*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(0,40, 100,50)),
    'SECOND-STREET'
  );
  /*ONE RECTANGLE*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(40,90,100,100)),
    'THIRD-ROAD'
  );
  /*ONE RECTANGLE*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(150,0,160,100)),
    'FOURTH-ROAD'
  );
  /*COMPOUND POLYGON*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1005,2, 1,2,2, 5,2,1, 7,2,2, 11,2,1),
        mdsys.sdo_ordinate_array(90,100,100,160,160,100,150,100,100,150,100,100,90,100)),
    'CIRCLE-ROAD'
  );
  END;
/*PONDS*/
  /*ONE CIRCLE*/
  INSERT INTO PONDS VALUES (
    SEQ_PON.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1003,4),
        mdsys.sdo_ordinate_array(125,100,150,125,125,150)),
    'ROUND-POUND'
  );

/*SHOPS*/
  /*COMPOUND POLYGON*/
  INSERT INTO SHOPS VALUES (
    SEQ_SHO.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1005,2, 1,2,1, 3,2,2, 7,2,1),
        mdsys.sdo_ordinate_array(40,50,60,50,80,70,60,90,40,90,40,50)),
    'RIMI'
  );

/*TREES*/
  BEGIN
  /*ONE CIRCLE*/
  INSERT INTO TREES VALUES (
    SEQ_TRE.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1003,4),
        mdsys.sdo_ordinate_array(50,30,55,25,50,20)),
    'TREE1'
  );
  /*ONE CIRCLE*/
  INSERT INTO TREES VALUES (
    SEQ_TRE.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1003,4),
        mdsys.sdo_ordinate_array(70,30,75,25,70,20)),
    'TREE2'
  );
  END;
/*FIELDS*/
  /*ONE RECTANGLE*/
  INSERT INTO FIELDS VALUES (
    SEQ_FIE.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(0,50, 30,100)),
    'LAND-FIELD'
  );
/*POOLS*/
  /*ONE RECTANGLE*/
  INSERT INTO POOLS VALUES (
    SEQ_POO.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(115,0, 125,15)),
    'PRIVATE-SWIMMING-POOL'
  );