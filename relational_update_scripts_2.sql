use buildings_info;


ALTER TABLE building_fact
ADD CONSTRAINT unique_address UNIQUE (address);

alter table building_permits
modify address varchar(100);

alter table building_fact
modify address varchar(100);


ALTER TABLE building_permits
ADD CONSTRAINT fk_permit_address
FOREIGN KEY (address)
REFERENCES building_fact(address);

SELECT count(address)
FROM building_permits
WHERE address IN (
    SELECT address FROM building_fact
);

DELETE FROM building_permits
WHERE address NOT IN (
    SELECT address FROM building_fact
);


create table backup_permits
as select * from building_permits;

select count(address) from building_fact;


select address from building_permits
where address = '1 E JACKSON BLVD'
limit 100;

select * from building_fact
where address = '8211 S ESCANABA AVE'
limit 100;

select * from building_fact
where address = '400 E 130TH ST'
limit 100;

SELECT 
    address, 
    COUNT(*) AS duplicate_count
FROM 
    building_fact
GROUP BY 
    address
HAVING 
    COUNT(*) > 1;
    
    
CREATE TEMPORARY TABLE temp_addresses_3 AS
SELECT MIN(bldg_id) as blgd_id, MIN(address) as address
FROM building_fact
GROUP BY address;


drop table temp_addresses_3;

select * from temp_addresses_3;


set sql_safe_updates=0;

DELETE FROM building_fact
WHERE bldg_id NOT IN (
    SELECT blgd_id FROM test_add
);


SELECT bf.bldg_id
FROM building_fact AS bf
WHERE bf.bldg_id NOT IN (
    SELECT blgd_id FROM test_add
);

select count(*) from backup_building_fact_table;

SELECT blgd_id FROM test_add;

describe test_add;
create table test_add
as select * from temp_addresses_3;

select bldg_id from building_fact limit 10;


select count(*) from building_fact;

select count(*) from backup_building_fact_table;


SELECT MIN(address)
FROM building_fact
GROUP BY address;



CREATE TABLE backup_building_fact_table AS
SELECT * FROM building_fact;

use buildings_info;

#editing tables (violation)---------------------------
ALTER TABLE building_violations
ADD CONSTRAINT fk_violation_address
FOREIGN KEY (address)
REFERENCES building_fact(address);


alter table building_violations
modify address varchar(100);

SELECT count(address)
FROM building_violations
WHERE address IN (
    SELECT address FROM building_fact
);

DELETE FROM building_violations
WHERE address NOT IN (
    SELECT address FROM building_fact
);

create table backup_violations
as select * from building_violations;


#editing tables (ordinance_violations)---------------------------
ALTER TABLE ordinance_violations
ADD CONSTRAINT fk_ordinance_address
FOREIGN KEY (address)
REFERENCES building_fact(address);

alter table ordinance_violations
modify address varchar(100);

SELECT count(address)
FROM ordinance_violations
WHERE address IN (
    SELECT address FROM building_fact
);

DELETE FROM ordinance_violations
WHERE address NOT IN (
    SELECT address FROM building_fact
);

create table backup_ordinance
as select * from ordinance_violations;


#editing tables (service_request)---------------------------
ALTER TABLE service_request
ADD CONSTRAINT fk_service_request_address
FOREIGN KEY (address)
REFERENCES building_fact(address);

alter table service_request
modify address varchar(100);

SELECT count(address)
FROM service_request
WHERE address IN (
    SELECT address FROM building_fact
);

DELETE FROM service_request
WHERE address NOT IN (
    SELECT address FROM building_fact
);

create table backup_service_request
as select * from service_request;



#editing tables (service_request)---------------------------
ALTER TABLE service_request
ADD CONSTRAINT fk_service_request_address
FOREIGN KEY (address)
REFERENCES building_fact(address);

alter table service_request
modify address varchar(100);

SELECT count(address)
FROM service_request
WHERE address IN (
    SELECT address FROM building_fact
);

DELETE FROM service_request
WHERE address NOT IN (
    SELECT address FROM building_fact
);

create table backup_service_request
as select * from service_request;



#editing tables (service_request)---------------------------
ALTER TABLE government_public_records
ADD CONSTRAINT fk_gov_pub_bldg_id
FOREIGN KEY (bldg_gpr_id)
REFERENCES building_fact(bldg_id);

alter table government_public_records
modify bldg_gpr_id int(50);

SELECT count(bldg_gpr_id) as id_check
FROM government_public_records
WHERE bldg_gpr_id IN (
    SELECT bldg_id FROM building_fact
);

DELETE FROM government_public_records
WHERE bldg_gpr_id NOT IN (
    SELECT bldg_id FROM building_fact
);

create table backup_gov_pub_rec
as select * from government_public_records;

#editing tables (footprints)---------------------------
ALTER TABLE building_footprints
ADD CONSTRAINT fk_footprint_bldg_id
FOREIGN KEY (bldg_fp_id)
REFERENCES building_fact(bldg_id);


SELECT count(bldg_fp_id) as id_check
FROM building_footprints
WHERE bldg_fp_id IN (
    SELECT bldg_id FROM building_fact
);

DELETE FROM building_footprints
WHERE bldg_fp_id NOT IN (
    SELECT bldg_id FROM building_fact
);

create table backup_footprints
as select * from building_footprints;



#editing tables (service_request)---------------------------
ALTER TABLE service_request
ADD CONSTRAINT fk_service_request_address
FOREIGN KEY (address)
REFERENCES building_fact(address);


alter table service_request
modify address varchar(100);

alter table service_request
modify geography_id int;


SELECT count(address) as id_check
FROM service_request
WHERE address IN (
    SELECT address FROM building_fact
);

DELETE FROM service_request
WHERE address NOT IN (
    SELECT address FROM building_fact
);

create table backup_service_request_final
as select * from service_request;

alter table service_request
modify geography_id int;

ALTER TABLE service_request
ADD CONSTRAINT fk_service_request_geo_id
FOREIGN KEY (geography_id)
REFERENCES service_request_geography(geography_id);

create table service_request_backup2
as select * from service_request;

UPDATE service_request
SET state = 'Illinois',
    city = 'Chicago';


ALTER TABLE permit_fees
MODIFY COLUMN building_fee_paid INT,
MODIFY COLUMN zoning_fee_paid INT,
MODIFY COLUMN other_fee_paid INT,
MODIFY COLUMN subtotal_paid INT,
MODIFY COLUMN building_fee_unpaid INT,
MODIFY COLUMN zoning_fee_unpaid INT,
MODIFY COLUMN other_fee_unpaid INT,
MODIFY COLUMN subtotal_unpaid INT,
MODIFY COLUMN building_fee_waived INT,
MODIFY COLUMN total_fee INT;


select distinct permit_status from building_permits;


select distinct id from building_permits;

alter table service_request
modify created_date datetime;

alter table building_permits
modify processing_time int;

select max(length(ordinance_key)) from building_fact;
select max(length(permit_key)) from building_fact;
select max(length(violation_key)) from building_fact;

select id from building_permits limit 10;

alter table building_fact
modify last_update datetime;

alter table ordinance_violations
modify hearing_date datetime,
modify violation_date datetime;

alter table ordinance_violations
modify admin_costs int,
modify imposed_fine int;

alter table permit_geography
modify community_area int,
modify census_tract int,
modify ward int;


select * from violation_inspections limit 10;
alter table violation_inspections
modify inspector_id varchar(100),
modify violation_date datetime;

#editing tables (violation_inspection)---------------------------
ALTER TABLE violation_inspections
ADD CONSTRAINT fk_service_inspection_id
FOREIGN KEY (inspection_id)
REFERENCES building_violations(inspection_id);

alter table violation_inspections
modify inspection_id int;



DELETE FROM violation_inspections
WHERE inspection_id NOT IN (
    SELECT inspection_id FROM building_violations
);
