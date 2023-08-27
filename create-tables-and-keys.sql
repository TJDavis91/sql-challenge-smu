drop table if EXISTS departments cascade;
drop table if exists dept_emp cascade;
drop table if exists dept_manager cascade;
drop table if exists employees cascade;
drop table if exists salaries cascade;
drop table if exists titles cascade;


CREATE TABLE "departments" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(30)   NOT NULL,
    PRIMARY KEY ("emp_no", "dept_no")
    
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "title_id" varchar(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(5)   NOT NULL,
    "hire_date" date   NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" varchar(10)   NOT NULL,
    "title" varchar(30)   NOT null,
     primary key ("title_id")
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE employees  ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
REFERENCES "titles" ("title_id");

CREATE INDEX "idx_departments_department_name"
ON "departments" ("dept_name");

select count (*)
from dept_emp ;
