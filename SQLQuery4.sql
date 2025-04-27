use NORTHWND
SELECT *FROM Products
select *from Suppliers
select [productName],[UnitPrice]  from Products  where UnitPrice>200 
select Count (ProductName) from Products--count  kaç tane  öðenin olduðunu öðrenmemiz için  kullanýlýr 
SELECT DISTINCT (ProductName) from Products
select  distinct (SupplierID) from Products 
--benzersiz kaç tane var
select count( distinct ProductName)  from Products
select  *  From Products
select count(*) from Products
--SELECT productName, count (*) from Products--herbir sütuna ait deðeri döndürmek istiyorsan gruplandýrma yapman lazým
--select productName  count from products
select  count(productName) from  Products
select 'Mete'
select 'Mete','Yaganoglu',39
select 'Ferhat','Bozkurt',42
select 'Mete' as Ad,'Yaganoglu' as  Soyad,39 as Yas
Select 'Mete' Ad,'Yaganoglu' Soyad,39 Yas
select 'Mete' [Ad],'Yaganoglu' [Soyad],39 [Yas]
select 'Mete' as [Ad],'Yaganoglu' as [Soyad],39 as [Yas]

select * from Products
select ProductName as [ürün Adý],UnitPrice  as[fiyat] from Products

select 'Nazlýcan' as [ad] ,'Püsküllü' as [soyad],22 as [yas]
union -- ayný tabloda alt alta göstermek için 
select 'Berivan' as [ad],'Püsküllü' as [soyad],21 as [yas]

select 'Nesim' ,'Puskullu'
union all --birleþtirmek  istediðimizi bütün sql sorgularý arasýna yazýlmalý union all
select 'Nazlýcan','Puskullu'
union all--union  ifadelerde birleþtirmek istediðimiz deðer sayýsý ayný olmalý
select 'Ugur','Püsküllü'

select 5+7
select 5+7 as sonuc
select 5+8  [sonuc]
select 10+31 as [sonuc]
select 7+9 'sonuc' --yine sütün adý oluþuyor

select '5'+6 --bir tane integer bir deðer gördü mü diðerlerini de otomotikmen int e çevirir
select '5'+'6'
select 5+'6'

select 22+'Nazlýcan Puskullu'--bunda toplama iþlemi yapamaz çünkü bu uzun bir string ve sayýsal deðere çevrilemez
--ve yukarýda hata verir bununu  için  convert ve cast yöntemi  kullanýlýr
--Ýki tane çevirme yöntemi vardýr :CONVERT VE CAST
select CONVERT(varchar,77) + ' ' +'Kayýt Vardýr' as [kayýt_sayýsý]
select cast (77 as varchar) + ' ' +'Kayýt Vardýr' as [kayýt_sayýsý]

SELECT CONVERT(VARCHAR, GETDATE(), 103) as [Tarih];--bu komut o anki tarih ve saati döndürmek için kullanýlýr .
SELECT CAST('2024-10-27' AS DATE);
SELECT CAST(123.456 AS INT);
select RAND() as [rastgele]--0 ile 1 arasýnda bir sayý üretir rastgele
select RAND () *100 --0 ile 1 arasýnda rastgele bir sayý  üretir  ve bu sayýyý 100 ile çarpar
SELECT ROUND(RAND()*100,0.5) --0-100 ARASINDA TAM SAYI ÜRETÝYOR--rand fonksiyonu 0 ile 1 arasýnda bir sayý  döndürür.ve onu 100  ile  çarpar round  ise  onu belli bir hassasiyete çevirir
select 10 + ROUND(RAND() * 100,1)-- ise10  i le 110 arasý bir sayý üretir ve üretieln  sayýnýn  virgülden sonraki bir basamaðýný  býrakýr.
select 30+ROUND(RAND() *100,3)--virgülden sonra 3 basamak  býrakýr
select 40+ROUND(RAND() *100,0.5)--BUNU HOCAYA SOR
select  40+ROUND(RAND() *100,0)--buradaki  sýfýr  sayýsý sayýyý en yakýn yüzlüðe veya onluða yuvarlar

select *from Suppliers
select  *from  Employees
select  [firstname],[lastname] from  Employees
select [firstname] + ' ' + [lastname] as [ad soyad] from Employees --birleþtirme aþamasý için kullanýlýr

select *from Products
select UPPER(produCTnAME) + ' ' + LOWER(produCTnAME) as [AD SOYAD]  FROM Products --burda seçilen sütunlarý büyük veya  küçük harfe  dönüþtürür
select UPPER(productname) from Products