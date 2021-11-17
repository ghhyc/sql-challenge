
--
DROP TABLE IF EXISTS titles_2;
DROP TABLE IF EXISTS salaries_2;
DROP TABLE IF EXISTS departments_2;
DROP TABLE IF EXISTS dept_employees_2;
DROP TABLE IF EXISTS employees_2;
DROP TABLE IF EXISTS dept_managers_2;

--Create tables 6 tables
CREATE TABLE employees_2(
	emp_no_2 integer not null primary key,
	emp_title_id_2 varchar,
	birth_date_2 date not null,
	first_name_2 varchar not null,
	last_name_2 varchar not null,
	sex_2 varchar not null,
	hire_date_2 date not null);

CREATE TABLE departments_2(
	dept_no_2 varchar not null primary key,
	dept_name_2 varchar not null);

--junction table
CREATE TABLE dept_managers_2(
	dept_no_2 varchar not null,
	emp_no_2 integer not null,
	foreign key (emp_no_2) references employees-2(emp_no_2),
	foreign key (dept_no_2) references departments-2(dept_no_2)	
);
CREATE TABLE salaries_2(
	emp_no_2 integer not null,
	salary_2 integer not null,
	foreign key (emp_no_2) 
		references employees_2(emp_no_2)	
);
--junction table
CREATE TABLE dept_emp_2(
	emp_no_2 integer not null,
	dept_no_2 varchar not null,
	foreign key (dept_no_2) references departments_2(dept_no_2),
	foreign key (emp_no_2) references employees_2(emp_no_2)
);
CREATE TABLE titles_2(
	title_id_2 varchar not null,
	title_2 varchar not null
);





 

