-- Task 1

SELECT color, mark, count(1)
FROM auto 
WHERE mark IN ('BMW','LADA') 
GROUP BY color, mark;

-- Task 2

SELECT DISTINCT mark, (select count(1) 
FROM auto a1 
WHERE a1.mark != a.mark) AS cont_another_mark 
FROM auto a;

-- Task 3
/*
create table test_a (id INT, data varchar(1));
create table test_b (id INT);
insert into test_a(id, data) values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');
insert into test_b(id) values
(10),
(30),
(50);
*/

SELECT *
FROM test_a
NATURAL LEFT JOIN test_b
WHERE test_b.id IS NULL;