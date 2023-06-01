SELECT SS.student_id, SS.student_name, SS.subject_name, 
    IF(E.attended_exams IS NULL, 0, E.attended_exams) AS attended_exams
FROM
    (SELECT *
    FROM Students
    CROSS JOIN Subjects) SS
LEFT JOIN 
    (SELECT *, COUNT(*) AS attended_exams
    FROM Examinations
    GROUP BY student_id, subject_name) E
ON SS.student_id = E.student_id AND SS.subject_name = E.subject_name
ORDER BY student_id, subject_name;