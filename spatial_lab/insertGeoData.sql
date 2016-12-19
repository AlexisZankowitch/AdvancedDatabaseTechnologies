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
        mdsys.sdo_ordinate_array(0,40, 160,50)),
    'SECOND-STREET'
  );
  /*ONE RECTANGLE*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,3,3),
        mdsys.sdo_ordinate_array(40,90,100,100)),
    'THIRD-STREET'
  );
  /*COMPOUND POLYGON*/
  INSERT INTO ROADS VALUES (
    SEQ_ROA.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1005,2, 1,2,2, 5,2,1, 7,2,2, 11,2,1),
        mdsys.sdo_ordinate_array(160,80,130,120,100,100,110,100,135,110,150,80,160,80)),
    'VANILLA-STREET'
  );
  END;

/*POUNDS*/
  /*ONE CIRCLE*/
  INSERT INTO PONDS VALUES (
    SEQ_PON.nextval,
    mdsys.sdo_geometry(
        2003, null, null,
        mdsys.sdo_elem_info_array(1,1003,4),
        mdsys.sdo_ordinate_array(115,50,140,70,115,90)),
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