CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT salary 
      FROM ( 
            SELECT salary ,
            DENSE_RANK () OVER (ORDER BY salary DESC) as r
          FROM employee
          ) result
      WHERE r=N
  );
END