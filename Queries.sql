-- ����� ������� � ���������� 
Select @@SERVERNAME as [Server\Instance]; 

-- ������ SQL Server 
Select @@VERSION as SQLServerVersion; 

-- ��������� SQL Server 
Select @@ServiceName AS ServiceInstance;

 -- ������� �� (��, � ��������� ������� ����������� ������)
Select DB_NAME() AS CurrentDB_Name;


--����� � �����������
SELECT  @@Servername AS ServerName ,
        create_date AS  ServerStarted ,
        DATEDIFF(s, create_date, GETDATE()) / 86400.0 AS DaysRunning ,
        DATEDIFF(s, create_date, GETDATE()) AS SecondsRunnig
FROM    sys.databases
WHERE   name = 'tempdb'; 

GO