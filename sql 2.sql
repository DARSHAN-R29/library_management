
-- FOREIGN KEYS OF THE TABLE 

-- ISSUED_STATUS TABLE
-- EMPLOYEES TABLE 
use library_management;

ALTER TABLE employees
ADD CONSTRAINT fk_branch
FOREIGN KEY (branch_id )
REFERENCEs branch (branch_id);

ALTER TABLE issued_status
ADD CONSTRAINT fk_member_key
FOREIGN KEY (issued_member_id)
REFERENCEs members (member_id);


ALTER TABLE issued_status
ADD CONSTRAINT fok_books
FOREIGN KEY (issued_book_isbn)
REFERENCEs books (isbn);

ALTER TABLE issued_status
ADD CONSTRAINT fok_employees
FOREIGN KEY (issued_emp_id )
REFERENCEs employees (emp_id);


ALTER TABLE return_status
ADD CONSTRAINT fok_issued_status
FOREIGN KEY (issued_id )
REFERENCEs issued_status (issued_id);


-- the missing row in the return_status 

INSERT INTO issued_status (issued_id, issued_member_id, issued_book_name, issued_date, issued_book_isbn)
VALUES
('IS101', NULL, NULL, NULL, NULL),
('IS103', NULL, NULL, NULL, NULL),
('IS105', NULL, NULL, NULL, NULL);

UPDATE return_status
SET issued_id = NULL
WHERE issued_id IN ('IS101', 'IS103', 'IS105');

ALTER TABLE return_status
ADD CONSTRAINT fk_issued_status
FOREIGN KEY (issued_id)
REFERENCES issued_status(issued_id);






