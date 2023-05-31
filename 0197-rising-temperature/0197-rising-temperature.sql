SELECT t.Id FROM Weather t JOIN Weather y
WHERE DATEDIFF(t.RecordDate, y.RecordDate) =1 
AND t.Temperature > y.Temperature;
