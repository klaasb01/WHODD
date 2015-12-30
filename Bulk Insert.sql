/*
truncate table  [WHODDE].[dbo].[ATC]
truncate table  [WHODDE].[dbo].[CCODE]
truncate table  [WHODDE].[dbo].[ING]
truncate table  [WHODDE].[dbo].[MP]
truncate table  [WHODDE].[dbo].[ORG]
truncate table  [WHODDE].[dbo].[PF]
truncate table  [WHODDE].[dbo].[PP]
truncate table  [WHODDE].[dbo].[PRG]
truncate table  [WHODDE].[dbo].[PRT]
truncate table  [WHODDE].[dbo].[SRCE]
truncate table  [WHODDE].[dbo].[STR]
truncate table  [WHODDE].[dbo].[SUN]
truncate table  [WHODDE].[dbo].[ThG]
truncate table  [WHODDE].[dbo].[UNIT]
truncate table  [WHODDE].[dbo].[Unit-L]
truncate table  [WHODDE].[dbo].[Unit-X]
*/


--drop table  [WHODDE].[dbo].[ATC]
--drop table  [WHODDE].[dbo].[CCODE]
--drop table  [WHODDE].[dbo].[ING]
--drop table  [WHODDE].[dbo].[MP]
--drop table  [WHODDE].[dbo].[ORG]
--drop table  [WHODDE].[dbo].[PF]
--drop table  [WHODDE].[dbo].[PP]
--drop table  [WHODDE].[dbo].[PRG]
--drop table  [WHODDE].[dbo].[PRT]
--drop table  [WHODDE].[dbo].[SRCE]
--drop table  [WHODDE].[dbo].[STR]
--drop table  [WHODDE].[dbo].[SUN]
--drop table  [WHODDE].[dbo].[ThG]
--drop table  [WHODDE].[dbo].[UNIT]
--drop table  [WHODDE].[dbo].[Unit-L]
--drop table  [WHODDE].[dbo].[Unit-X]



--BULK INSERT [WHODDE].[dbo].[MP] FROM 'C:\WHODD\MP.txt' WITH (FORMATFILE = 'C:\WHODD\MP.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[PP] FROM 'C:\WHODD\PP.txt' WITH (FORMATFILE = 'C:\WHODD\PP.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[THG] FROM 'C:\WHODD\THG.txt' WITH (FORMATFILE = 'C:\WHODD\THG.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[ING] FROM 'C:\WHODD\ING.txt' WITH (FORMATFILE = 'C:\WHODD\ING.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[SRCE] FROM 'C:\WHODD\SRCE.txt' WITH (FORMATFILE = 'C:\WHODD\SRCE.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[ORG] FROM 'C:\WHODD\ORG.txt' WITH (FORMATFILE = 'C:\WHODD\ORG.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[CCODE] FROM 'C:\WHODD\CCODE.txt' WITH (FORMATFILE = 'C:\WHODD\CCODE.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[ATC] FROM 'C:\WHODD\ATC.txt' WITH (FORMATFILE = 'C:\WHODD\ATC.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[SUN] FROM 'C:\WHODD\SUN.txt' WITH (FORMATFILE = 'C:\WHODD\SUN.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[PF] FROM 'C:\WHODD\PF.txt' WITH (FORMATFILE = 'C:\WHODD\PF.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[STR] FROM 'C:\WHODD\STR.txt' WITH (FORMATFILE = 'C:\WHODD\STR.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[PRG] FROM 'C:\WHODD\PRG.txt' WITH (FORMATFILE = 'C:\WHODD\PRG.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[PRT] FROM 'C:\WHODD\PRT.txt' WITH (FORMATFILE = 'C:\WHODD\PRT.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[Unit-X] FROM 'C:\WHODD\Unit-X.txt' WITH (FORMATFILE = 'C:\WHODD\Unit-X.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[UNIT] FROM 'C:\WHODD\UNIT.txt' WITH (FORMATFILE = 'C:\WHODD\UNIT.xml', ROWTERMINATOR='\r\n');
--BULK INSERT [WHODDE].[dbo].[Unit-L] FROM 'C:\WHODD\Unit-L.txt' WITH (FORMATFILE = 'C:\WHODD\Unit-L.xml', ROWTERMINATOR='\r\n');



/*
Scripts you can test in SSMS before commiting to an export
It will actuall report Line numbers and Column name of the bad data.
*/

--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\MP.txt', FORMATFILE ='C:\WHODD\MP.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\PP.txt', FORMATFILE ='C:\WHODD\PP.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\THG.txt', FORMATFILE ='C:\WHODD\THG.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\ING.txt', FORMATFILE ='C:\WHODD\ING.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\SRCE.txt', FORMATFILE ='C:\WHODD\SRCE.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\ORG.txt', FORMATFILE ='C:\WHODD\ORG.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\CCODE.txt', FORMATFILE ='C:\WHODD\CCODE.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\ATC.txt', FORMATFILE ='C:\WHODD\ATC.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\SUN.txt', FORMATFILE ='C:\WHODD\SUN.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\PF.txt', FORMATFILE ='C:\WHODD\PF.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\STR.txt', FORMATFILE ='C:\WHODD\STR.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\PRG.txt', FORMATFILE ='C:\WHODD\PRG.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\PRT.txt', FORMATFILE ='C:\WHODD\PRT.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\Unit-X.txt', FORMATFILE ='C:\WHODD\Unit-X.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\UNIT.txt', FORMATFILE ='C:\WHODD\UNIT.xml') T
--SELECT  * FROM OPENROWSET(BULK 'C:\WHODD\Unit-L.txt', FORMATFILE ='C:\WHODD\Unit-L.xml') T


/*  Row counts just for fun.

wc -l *.txt           
      1259 ATC.txt      
       247 CCODE.txt    
   3597479 ING.txt      
   2475544 MP.txt       
        10 MP_TEST.txt  
     48497 ORG.txt      
       226 PF.txt       
   2475544 PP.txt       
         1 PRG.txt      
        10 PRT.txt      
        28 README.txt   
       417 SRCE.txt     
      4862 STR.txt      
     13413 SUN.txt      
   2568024 ThG.txt      
        64 UNIT.txt     
        64 Unit-L.txt   
        64 Unit-X.txt   
         0 Version.txt  
  11185753 total        
*/