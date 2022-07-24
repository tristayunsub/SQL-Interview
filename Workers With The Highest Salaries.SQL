https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3

DOORDASH QUESTION

SELECT worker_title
FROM worker
JOIN title
ON worker_id = worker_ref_id
WHERE salary = (
      SELECT max(salary)
      FROM worker
      );
