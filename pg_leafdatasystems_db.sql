-- VERSION 2019-07-14 5:32 PM

CREATE TYPE type AS ENUM ('quarantine','non-quarantine');

--
-- AREAS (STEP #01)
--
DROP TABLE IF EXISTS areas;
CREATE TABLE areas (
  created_at TIMESTAMP NULL, -- "12/20/2017 02:15PM"
  updated_at TIMESTAMP NULL, -- "12/20/2017 02:15PM"
  external_id VARCHAR(40) NULL,
  name VARCHAR(255) NULL, -- "Scott Grow"
  type type NULL, -- "quarantine"
  deleted_at TIMESTAMP NULL,
  is_quarantine_area VARCHAR(255) NULL, -- This item has been deprecated and will be removed in a future release
  global_id VARCHAR(255) NOT NULL PRIMARY KEY -- "WAL050505.AR6F"
);

INSERT INTO areas (created_at, updated_at, external_id, name, type, deleted_at, is_quarantine_area, global_id)
VALUES ('2018-02-01 08:07:00','2018-02-01 08:07:00','DefaultArea','Default Area','non-quarantine',null,0,'WAJ412149.ARAM');

INSERT INTO areas (created_at, updated_at, external_id, name, type, deleted_at, is_quarantine_area, global_id)
VALUES ('2018-02-01 08:07:00','2018-02-01 08:07:00','S2ID:67','412149-Bulk','non-quarantine',null,0,'WAJ412149.ARAN');

SELECT * FROM areas;
