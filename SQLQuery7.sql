use NORTHWND
select[TerritoryID], [TerritoryDescription],
      case [TerritoryDescription] when  'New York'  then 'Merkez'
	  else  'Merkez Degil' end as durum
from Territories

select [EmployeeID],[ShipVia],
       case 
	   when [EmployeeID] = 6 and  [ShipVia]  =1 then 'Ge�ersiz say�lar'
	   else 'Ge�erli' end as [Ge�erli ge�ersiz]
   
   from orders
   
 --city si berlin olan , country si germany  olan  lar� bul ve  t�rk�e olarak adres ve �ehir yaz
select 
   case 
   when City ='Berlin' then 'g�zel �ehir'  
   
   else 'ge�ersiz  �ehirler' end as �ehirler ,
   case 
   when country ='Germany' then 'G�zel �lke'
   else 'ge�ersiz �lkeler' end as �lkeler
   
from Customers

select 
   case 
   city when 'berlin' then 'g�zel �ehir'  
   else 'ge�ersiz  �ehirler' end as �ehirler
   from Customers

   --Soru: Products tablosundaki �r�nlerin fiyat�na g�re, 
   --10'dan d���k fiyatl� �r�nleri "Ekonomik", 
   --10 ve 50 aras�ndaki fiyatl� �r�nleri "Orta Fiyatl�", 
   --50'nin �zerindeki fiyatl� �r�nleri ise "L�ks �r�n" olarak etiketleyin.
   select [UnitPrice],
   case
   when  UnitPrice<10 then 'Ekonomik'
   when  UnitPrice>=10 and UnitPrice< 50 then 'orta fiyatl�'--between komutu da kullanabiliriz
   when UnitPrice>50 then 'l�ks �r�n'
   end as durum
from Products

--Soru: Employees tablosunda �al��anlar�n do�um tarihlerine g�re ya�lar�n� hesaplay�n 
--ve 30 ya��ndan k���k olanlara "Gen� �al��an",
--30 ya� ve �zeri olanlara ise "Deneyimli �al��an" olarak etiket verin.

--Soru: Orders tablosunda yer alan sipari�lerin toplam tutar�n� kontrol ederek,
--2000 veya daha y�ksek olan sipari�lere "B�y�k Sipari�", 
--2000'den d���k olanlara ise "K���k Sipari�" olarak etiket verin.

select [Title],
 case 
 when Title = 'Sales Represantative' then 'Sat�l Temsilcisi'
 when Title = 'Sales Manager' then 'Sat�� Y�neticisi'
 when Title='Insede Sales Coordinator' then '�irket i�i Kordinat�r'
 else 'Di�er �al��anlar' end as 'T�rk�e Versiyonlar�'
from Employees
select*from Products
--AGGREGATE FUNCT�ONS
--SUM,M�N,MAX,AVG,COUNT
SELECT  count(*) as [sat�r say�s�] fROM Products

select *from Products
select 
max(unitsonorder)as en_b�y�k_fiyat,
sum(unitprice) as toplam_fiyat,
count(*) as ka�_sat�r_var from Products  
 
 group by ReorderLevel 
 order by ReorderLevel

 select  top 10 
 sum(unitprice) as max_sat��
 from Products
 group by unitprice

 select*from  Employees
 select birthdate from Employees order by  BirthDate
 select birthdate,TitleOfCourtesy from Employees group by BirthDate,
  titleofcourtesy 
  order by TitleOfCourtesy,BirthDate
  

  select  convert(date,birthdate)  as do�um_tarihi  from Employees  --sadece tarih k�sm�n� getirir
 
  select convert(time,birthdate)  as zaman  from Employees--sadece zaman k�sm�n� al�r
 
  select convert(datetime,birthdate) as hepsi from  Employees --hem tarih hem zaman� getirdi
  select  birthdate,datepart(MONTH,birthdate) as ayadi from  Employees 
  group by BirthDate--sadece aylara g�re s�ralama
  
  order by birthdate , datepart(month,birthdate)

  --*******************************

  select  birthdate,datepart(MONTH,birthdate) as ayadi from  Employees 
  group by BirthDate--sadece aylara g�re s�ralama
  
  order by  datepart(month,birthdate)

  --**************************
  
  --hepsini tek bir tabloymu� gibi nas�l  g�steririz???

  select 
  CategoryID as id,
  sum (UnitsInStock) as toplam
  from  products
  group by CategoryID;


 select CategoryID,
 avg(UnitPrice) as ortalama
from Products
group by  CategoryID;


