/* Create Table with Initial Data
CREATE TABLE cardio_data (
	id_no INT NOT NULL,
	age INT NOT NULL,
	gender INT NOT NULL,
	height INT NOT NULL, 
	weight FLOAT NOT NULL,
	ap_hi INT NOT NULL,
	ap_lo INT NOT NULL, 
	cholesterol INT NOT NULL,
	glucose INT NOT NULL,
	smoke boolean,
	alcohol boolean,
	active boolean,
	cardio boolean,
	PRIMARY KEY (id_no)
);

SELECT * FROM cardio_data;

/* Create Table with Cleaned Data
CREATE TABLE cardio_data_clean (
	id_no INT NOT NULL,
	age INT NOT NULL,
	gender INT NOT NULL,
	height INT NOT NULL, 
	weight FLOAT NOT NULL,
	ap_hi INT NOT NULL,
	ap_lo INT NOT NULL, 
	cholesterol INT NOT NULL,
	glucose INT NOT NULL,
	smoke boolean,
	alcohol boolean,
	active boolean,
	cardio boolean,
	PRIMARY KEY (id_no)
);

SELECT * FROM cardio_data_clean;
