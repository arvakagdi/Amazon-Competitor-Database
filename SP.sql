USE AmazonCompetiter;
GO
CREATE PROC spSelectedDates
@DateMin varchar(30) = NULL,
@DateMax varchar(30) = NULL
AS
IF @DateMin IS NULL OR @DateMax IS NULL
THROW 50001, 'Please enter DateMin and DateMax', 1;

IF NOT(ISDATE(@DateMin) = 1 AND ISDATE(@DateMin) = 1)
THROW 50001, 'Enter a valid date in format MM/DD/YY', 1;

IF CAST(@DateMin AS datetime) >  CAST(@DateMax AS datetime) 
THROW 50001, 'DateMin cannot be greater than DateMax', 1;

SELECT OrderID, OrderDate, TotalPrice
FROM Orders
WHERE OrderDate BETWEEN @DateMin AND @DateMax
ORDER BY OrderDate;




BEGIN TRY
EXEC spSelectedDates '12/10/2019', '11/10/2018';
END TRY

BEGIN CATCH
PRINT 'Error Number - ' +  CONVERT(varchar(30), ERROR_NUMBER());
PRINT 'Error Message - ' +  CONVERT(varchar(50), ERROR_MESSAGE());
END CATCH

