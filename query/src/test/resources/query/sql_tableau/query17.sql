SELECT EXTRACT(MONTH FROM "TEST_CAL_DT"."WEEK_BEG_DT") AS "mn_WEEK_BEG_DT_ok", (( EXTRACT(YEAR FROM "TEST_CAL_DT"."WEEK_BEG_DT") * 100) + EXTRACT(MONTH FROM "TEST_CAL_DT"."WEEK_BEG_DT")) AS "my_WEEK_BEG_DT_ok", QUARTER("TEST_CAL_DT"."WEEK_BEG_DT") AS "qr_WEEK_BEG_DT_ok", EXTRACT(YEAR FROM "TEST_CAL_DT"."WEEK_BEG_DT") AS "yr_WEEK_BEG_DT_ok" FROM "TEST_KYLIN_FACT" inner JOIN EDW.TEST_CAL_DT AS TEST_CAL_DT ON ("TEST_KYLIN_FACT"."CAL_DT" = "TEST_CAL_DT"."CAL_DT") GROUP BY EXTRACT(YEAR FROM "TEST_CAL_DT"."WEEK_BEG_DT"), QUARTER("TEST_CAL_DT"."WEEK_BEG_DT"), (( EXTRACT(YEAR FROM "TEST_CAL_DT"."WEEK_BEG_DT") * 100) + EXTRACT(MONTH FROM "TEST_CAL_DT"."WEEK_BEG_DT")), EXTRACT(MONTH FROM "TEST_CAL_DT"."WEEK_BEG_DT") 
