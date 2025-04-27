use NORTHWND
select[TerritoryID], [TerritoryDescription],
      case [TerritoryDescription] when  'New York'  then 'Merkez'
	  else  'Merkez Degil' end as durum
from Territories

select [EmployeeID],[ShipVia],
       case 
	   when [EmployeeID] = 6 and  [ShipVia]  =1 then 'Geçersiz sayýlar'
	   else 'Geçerli' end as [Geçerli geçersiz]
   
   from orders
   
 --city si berlin olan , country si germany  olan  larý bul ve  türkçe olarak adres ve þehir yaz
select 
   case 
   when City ='Berlin' then 'güzel þehir'  
   
   else 'geçersiz  þehirler' end as þehirler ,
   case 
   when country ='Germany' then 'Güzel ülke'
   else 'geçersiz ülkeler' end as ülkeler
   
from Customers

select 
   case 
   city when 'berlin' then 'güzel þehir'  
   else 'geçersiz  þehirler' end as þehirler
   from Customers

   --Soru: Products tablosundaki ürünlerin fiyatýna göre, 
   --10'dan düþük fiyatlý ürünleri "Ekonomik", 
   --10 ve 50 arasýndaki fiyatlý ürünleri "Orta Fiyatlý", 
   --50'nin üzerindeki fiyatlý ürünleri ise "Lüks Ürün" olarak etiketleyin.
   select [UnitPrice],
   case
   when  UnitPrice<10 then 'Ekonomik'
   when  UnitPrice>=10 and UnitPrice< 50 then 'orta fiyatlý'--between komutu da kullanabiliriz
   when UnitPrice>50 then 'lüks ürün'
   end as durum
from Products

--Soru: Employees tablosunda çalýþanlarýn doðum tarihlerine göre yaþlarýný hesaplayýn 
--ve 30 yaþýndan küçük olanlara "Genç Çalýþan",
--30 yaþ ve üzeri olanlara ise "Deneyimli Çalýþan" olarak etiket verin.

--Soru: Orders tablosunda yer alan sipariþlerin toplam tutarýný kontrol ederek,
--2000 veya daha yüksek olan sipariþlere "Büyük Sipariþ", 
--2000'den düþük olanlara ise "Küçük Sipariþ" olarak etiket verin.

select [Title],
 case 
 when Title = 'Sales Represantative' then 'Satýl Temsilcisi'
 when Title = 'Sales Manager' then 'Satýþ Yöneticisi'
 when Title='Insede Sales Coordinator' then 'Þirket içi Kordinatör'
 else 'Diðer Çalýþanlar' end as 'Türkçe Versiyonlarý'
from Employees
select*from Products
--AGGREGATE FUNCTÝONS
--SUM,MÝN,MAX,AVG,COUNT
SELECT  count(*) as [satýr sayýsý] fROM Products

select *from Products
select 
max(unitsonorder)as en_büyük_fiyat,
sum(unitprice) as toplam_fiyat,
count(*) as kaç_satýr_var from Products  
 
 group by ReorderLevel 
 order by ReorderLevel

 select  top 10 
 sum(unitprice) as max_satýþ
 from Products
 group by unitprice

 select*from  Employees
 select birthdate from Employees order by  BirthDate
 select birthdate,TitleOfCourtesy from Employees group by BirthDate,
  titleofcourtesy 
  order by TitleOfCourtesy,BirthDate
  

  select  convert(date,birthdate)  as doðum_tarihi  from Employees  --sadece tarih kýsmýný getirir
 
  select convert(time,birthdate)  as zaman  from Employees--sadece zaman kýsmýný alýr
 
  select convert(datetime,birthdate) as hepsi from  Employees --hem tarih hem zamaný getirdi
  select  birthdate,datepart(MONTH,birthdate) as ayadi from  Employees 
  group by BirthDate--sadece aylara göre sýralama
  
  order by birthdate , datepart(month,birthdate)

  --*******************************

  select  birthdate,datepart(MONTH,birthdate) as ayadi from  Employees 
  group by BirthDate--sadece aylara göre sýralama
  
  order by  datepart(month,birthdate)

  --**************************
  
  --hepsini tek bir tabloymuþ gibi nasýl  gösteririz???

  select 
  CategoryID as id,
  sum (UnitsInStock) as toplam
  from  products
  group by CategoryID;


 select CategoryID,
 avg(UnitPrice) as ortalama
from Products
group by  CategoryID;


