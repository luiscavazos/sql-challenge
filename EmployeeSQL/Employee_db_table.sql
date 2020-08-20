CREATE TABLE "departments" (
    "dept_no" VARCHAR(255) PRIMARY KEY,
    "dept_name" VARCHAR(255)   NOT NULL
    );

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no", "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(255)   PRIMARY KEY,
    "title" VARCHAR(255)   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   PRIMARY KEY,
    "dept_no" VARCHAR(255)   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int   PRIMARY KEY,
    "emp_title_id" VARCHAR(255)   NOT NULL,
    "birth_date" VARCHAR(255)   NOT NULL,
    "first_name" VARCHAR(255)  NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" VARCHAR(255)   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   PRIMARY KEY,
    "salary" int   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no", "dept_no"
     )
);

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ALTER COLUMN "hire_date" TYPE DATE 
USING to_date("hire_date", 'MM/DD/YYYY');

ALTER TABLE "employees" ALTER COLUMN "birth_date" TYPE DATE 
USING to_date("birth_date", 'MM/DD/YYYY');