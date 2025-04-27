
use NORTHWND
SELECT *FROM Products
select *from Products order by UnitPrice --en düþükten en yükseðe doðru sýralar
--select *from Products order by UnitPrice  as fiyat
--ORDER BY kýsmýnda alias tanýmlanamaz; 
--AS yalnýzca sütunlara ya da ifadelerdeki sonuçlara takma ad vermek için
--SELECT ifadesinde kullanýlýr.
select ProductName as Ýsim,UnitPrice as Fiyat  from Products order by UnitPrice
--ORDER BY DA ÝKÝ  ÖNEMLÝ  KOMUT DESC(azalan) VE ASC(artan) ASC ve DESC ifadeleri 
--sadece string ifadelerde kullanýlmaz ayný zamanda integer ifadelerde kullanýlýr.
Select ProductName as isim from Products order by  ProductName desc 
select Productname as isim from Products order by ProductName asc
select ProductID as id_numaralarý from Products order by ProductID DESC

select Productname from Products where ProductName like '%an%' 
--içinde an ifadesi olanlarý getirir
select *from Products
select productname from products where ProductName like '%n_'
--sadece içinden n geçip nla devam eden ifadeler son  iüç karakteri n olan ifadeler
select productname from Products where ProductName like '%n_%'
select productname from products where ProductName like '%n'
--n ile bitenler
select productname from products where ProductName like 'n%'
--n ile baþlayan
select productname from products where ProductName like '%n%'
--içerisinde n olanlar
select productname from products where ProductName like '%[n,k]'
--n  ya da k ile biten
select productname from products where ProductName like '[n,k]%'
--n ya da k baþlayan
select productname from products where ProductName like '%[n,k]%'
--n k içerenler 
select productname from products where ProductName like '%[a-b]'
--a ve b arasýndaki harfler ile bitenler
select productname from products where ProductName like '%[a-c]%'
--a ve  b arasýnda kalan  harflerini  içeren ifadeler
select productname from products where ProductName like '[a-k]%'
--a ve b arasýnda kalan  harfleri içerir ile baþlayanlar

select top 3 *from Products  
select top 2  * from Employees

SELECT UnitPrice AS fiyat FROM Products;--benim from ifadesinden sonra unitprice ý 
--seçmem bütün sütunlarý getireceðimi gösterir yani burda sadece unitprice ifadesini 
--seçtiðim için * geçersiz oluyor.
select top 4 unitprice from products
--SQL'de FROM ifadesi yalnýzca bir tablodan veri almak için kullanýlýr,
--tek bir sütundan veri almak için kullanýlmaz.
select unitprice as fiyat  from products
--sadece bri veya birden fazla ifade getireceksem yýldýz ifadesini kullanmam saçma olur
-- bütün sütunlar için yýldýz ifadesi kullanýlýr.
select top 4*from Products order by ProductID desc
select  top 95 percent *from Products --çýkan ifadeyi yuvarlar products tablosundaki tüm asatýrlarýn yüzde 95 ini alýr
--select top 4 95 percent *from  products
--Açýklama:
--UNION kullanýldýðýnda, iki sorgunun birleþik sonucunda tekrar eden satýrlar kaldýrýlýr.
--Eðer tekrar eden satýrlarý da görmek istiyorsanýz, UNION ALL kullanabilirsiniz:
--UNÝON ALL farklý iki tabloyu birleþtirme yani
select top 4* from Products
union
--
--select 98 percent *from  products
--sgl serverda percent ifadesi sadece top ifadesiyle kullanýlýr
SELECT TOP 50 PERCENT * FROM Products

select top 5*from products
union all
select top 50 percent *from products
select *from products
select  productname as isim,  unitprice as fiyat from Products where UnitPrice in(18.00,21.00,15.00)
select productname as isim,unitprice as fiyat from products where unitprice in (18.40,21.35,15.50)
select productname as isim,unitprice as fiyat from  products where UnitPrice in (18,21,15)
--18.00  ile 18  i ayný algýlar.
select productname as isim,unitprice as fiyat from products where UnitPrice not in(21,35,67)
select productname as isim from Products where productname in ('chai','chang','konbu')

select productname as isim from Products where productname between 'z' and 'a'
--z den a ya kadar dediðimde kaul etmez a dan sonraki deðerleri hesaba katar
select unitprice  as fiayt from products where UnitPrice not  between 30 and 40


select  *from Shippers
insert into Shippers (CompanyName,Phone) values ('Kurdish Shipper','5359231103')--sql server da köþeli parantezler sütun adlarý olarak geçer 
--burda önemli  olan bir diðer nokta ise id numarasý  otomotik olarak artan bir deðer olduðu için biz ekleyemeyiz



select *from [Order Details]
update [Order Details]
set Quantity=1,UnitPrice=30 --burda bütün  sütüna etki eder


select DATEDIFF(year,'1980-12-11','2020-01-01') as [year differenece]--yýl olarak fark alsýn 
--DATEDÝFF :Ýki tarih arasýndaki farký alýr
--GETDATE þimdiki tarihi  alýr

--DELETE komutunda silinen kayýtlar tam olarak silinmez.Ýd numarasý kaldýðý yerden devam eder.Truncate ise tabloyu  kaýcý  olarak sildiðimiizde kaldýðý yerden devam eder.


select *from Customers
where Country<>'Brazil' --<> brazilyadan  farklý olanlarý getir

select* from Customers where Country='Brazil'