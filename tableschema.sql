create table departments(
dept_no varchar(20) primary key not null,
dept_name varchar(30)
);
create table employees(
emp_no int primary key not null,
birth_date date,
first_name varchar(20),
last_name varchar(20),
gender varchar(1),
hire_date date
);
create table dept_emp(
emp_no int not null,
foreign key (emp_no) references employees(emp_no),
dept_no varchar(20) not null,
foreign key (dept_no) references departments(dept_no),
from_date date,
to_date date
);
create table dept_manager(
dept_no varchar(20) not null,
foreign key (dept_no) references departments(dept_no),
emp_no int not null,
foreign key (emp_no) references employees(emp_no),
from_date date,
to_date date
);

create table salaries(
emp_no int not null,
foreign key (emp_no) references employees(emp_no),
salary int,
from_date date,
to_date date
);
create table titles(
emp_no int,
foreign key (emp_no) references employees(emp_no),
title varchar(30),
from_date date,
to_date date
)