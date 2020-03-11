COPY "departments"
FROM 'C:\data_import\departments.csv' 
DELIMITER ',' CSV HEADER;

COPY "employees"
FROM 'C:\data_import\employees.csv'
DELIMITER ',' CSV HEADER;

COPY "dept_emp"
FROM 'C:\data_import\dept_emp.csv'
DELIMITER ',' CSV HEADER;

COPY "dept_manager"
FROM 'C:\data_import\dept_manager.csv'
DELIMITER ',' CSV HEADER;

COPY "salaries"
FROM 'C:\data_import\salaries.csv'
DELIMITER ',' CSV HEADER;

COPY "titles"
FROM 'C:\data_import\titles.csv'
DELIMITER ',' CSV HEADER;