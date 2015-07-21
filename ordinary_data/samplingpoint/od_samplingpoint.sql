/*
	qWat - QGIS Water Module
	
	SQL file :: samplingpoint table
*/


/* create */
CREATE TABLE qwat_od.samplingpoint (id serial PRIMARY KEY);


/* columns */
ALTER TABLE qwat_od.samplingpoint ADD COLUMN identification varchar(20) ;
ALTER TABLE qwat_od.samplingpoint ADD COLUMN remark         text ;

/* geometry */
SELECT qwat_od.fn_geom_tool_point('samplingpoint', :SRID,false,false,false,false,true, true);

/* LABELS */
SELECT qwat_od.fn_label_create_fields('samplingpoint');





 