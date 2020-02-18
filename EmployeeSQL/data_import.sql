COPY "department"
FROM 'C:\data_import\departments.csv' 
DELIMITER ',' CSV HEADER;

COPY "employee"
FROM 'C:\data_import\employees.csv'
DELIMITER ',' CSV HEADER;

COPY "dept_emp"
FROM 'C:\data_import\dept_emp.csv'
DELIMITER ',' CSV HEADER;

COPY "dept_mgr"
FROM 'C:\data_import\dept_manager.csv'
DELIMITER ',' CSV HEADER;

COPY "salary"
FROM 'C:\data_import\salaries.csv'
DELIMITER ',' CSV HEADER;

COPY "title"
FROM 'C:\data_import\titles.csv'
DELIMITER ',' CSV HEADER;