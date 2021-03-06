DROP TABLE IF EXISTS {{tableName}};
CREATE UNLOGGED TABLE IF NOT EXISTS {{tableName}} (
	id_bills int8 NOT NULL DEFAULT nextval('aggr_bills_id_bills_seq'::regclass),
	bills_add_section int4 NULL,
	bills_add_timestamp timestamp NULL,
	bills_original_amount float8 NOT NULL,
	bills_amount float8 NOT NULL,
	bills_payments_amount float8 NOT NULL,
	bills_paid_amount float8 NOT NULL,
	bills_count int4 NOT NULL,
	bills_paid_count int4 NOT NULL,
	bills_payments_count int4 NOT NULL,
	bills_uniq_key varchar NULL,
	bills_pay_seconds int4 NULL,
	id_prv varchar NOT NULL,
	id_pay_flow int4 NULL,
	sys_created_dtime timestamp NOT NULL DEFAULT now(),
	pflow_code varchar NULL,
	pflow_time_code bpchar(1) NOT NULL,
	pflow_api varchar NULL,
	pflow_client varchar NULL,
	pflow_source varchar NULL,
	pflow_add_zeros int2 NULL,
	pflow_uniq_key varchar NULL,
	pflow_currency int4 NULL,
	pflow_billref varchar NULL,
	replication_start_date timestamp NULL,
	replication_last_add_date timestamp NULL
);