use NORTHWND
SELECT *FROM Products
select *from Suppliers
select [productName],[UnitPrice]  from Products  where UnitPrice>200 
select Count (ProductName) from Products--count  ka� tane  ��enin oldu�unu ��renmemiz i�in  kullan�l�r 
SELECT DISTINCT (ProductName) from Products
select  distinct (SupplierID) from Products 
--benzersiz ka� tane var
select count( distinct ProductName)  from Products
select  *  From Products
select count(*) from Products
--SELECT productName, count (*) from Products--herbir s�tuna ait de�eri d�nd�rmek istiyorsan grupland�rma yapman laz�m
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
select ProductName as [�r�n Ad�],UnitPrice  as[fiyat] from Products

select 'Nazl�can' as [ad] ,'P�sk�ll�' as [soyad],22 as [yas]
union -- ayn� tabloda alt alta g�stermek i�in 
select 'Berivan' as [ad],'P�sk�ll�' as [soyad],21 as [yas]

select 'Nesim' ,'Puskullu'
union all --birle�tirmek  istedi�imizi b�t�n sql sorgular� aras�na yaz�lmal� union all
select 'Nazl�can','Puskullu'
union all--union  ifadelerde birle�tirmek istedi�imiz de�er say�s� ayn� olmal�
select 'Ugur','P�sk�ll�'

select 5+7
select 5+7 as sonuc
select 5+8  [sonuc]
select 10+31 as [sonuc]
select 7+9 'sonuc' --yine s�t�n ad� olu�uyor

select '5'+6 --bir tane integer bir de�er g�rd� m� di�erlerini de otomotikmen int e �evirir
select '5'+'6'
select 5+'6'

select 22+'Nazl�can Puskullu'--bunda toplama i�lemi yapamaz ��nk� bu uzun bir string ve say�sal de�ere �evrilemez
--ve yukar�da hata verir bununu  i�in  convert ve cast y�ntemi  kullan�l�r
--�ki tane �evirme y�ntemi vard�r :CONVERT VE CAST
select CONVERT(varchar,77) + ' ' +'Kay�t Vard�r' as [kay�t_say�s�]
select cast (77 as varchar) + ' ' +'Kay�t Vard�r' as [kay�t_say�s�]

SELECT CONVERT(VARCHAR, GETDATE(), 103) as [Tarih];--bu komut o anki tarih ve saati d�nd�rmek i�in kullan�l�r .
SELECT CAST('2024-10-27' AS DATE);
SELECT CAST(123.456 AS INT);
select RAND() as [rastgele]--0 ile 1 aras�nda bir say� �retir rastgele
select RAND () *100 --0 ile 1 aras�nda rastgele bir say�  �retir  ve bu say�y� 100 ile �arpar
SELECT ROUND(RAND()*100,0.5) --0-100 ARASINDA TAM SAYI �RET�YOR--rand fonksiyonu 0 ile 1 aras�nda bir say�  d�nd�r�r.ve onu 100  ile  �arpar round  ise  onu belli bir hassasiyete �evirir
select 10 + ROUND(RAND() * 100,1)-- ise10  i le 110 aras� bir say� �retir ve �retieln  say�n�n  virg�lden sonraki bir basama��n�  b�rak�r.
select 30+ROUND(RAND() *100,3)--virg�lden sonra 3 basamak  b�rak�r
select 40+ROUND(RAND() *100,0.5)--BUNU HOCAYA SOR
select  40+ROUND(RAND() *100,0)--buradaki  s�f�r  say�s� say�y� en yak�n y�zl��e veya onlu�a yuvarlar

select *from Suppliers
select  *from  Employees
select  [firstname],[lastname] from  Employees
select [firstname] + ' ' + [lastname] as [ad soyad] from Employees --birle�tirme a�amas� i�in kullan�l�r

select *from Products
select UPPER(produCTnAME) + ' ' + LOWER(produCTnAME) as [AD SOYAD]  FROM Products --burda se�ilen s�tunlar� b�y�k veya  k���k harfe  d�n��t�r�r
select UPPER(productname) from Products