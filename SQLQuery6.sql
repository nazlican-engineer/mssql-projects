use NORTHWND
select  [ProductName],[UnitPrice],[UnitsInStock],
        case [UnitsInStock] when 0 then 'STOKTA YOK'
		else convert(varchar,[UnitsInStock]) end as stok
from  Products
where [UnitsInStock]<5 
--KO�UL  KOYMA

select [FirstName]+ ' ' + [LastName],[TitleOfCourtesy],
       case [TitleOfCourtesy]
	   when 'Ms.'  then 'kad�n'
	   when 'Mrs.' then 'kad�n'
	   when 'Mr.'  then 'erkek'
	   when 'dR.'  then 'doktor'
	   else 'belirtilmemi�' end as durum
from Employees
--farkl� �lkeleri  ekrana yazd�r  D�ST�NCT
select count(*) from Employees

select distinct (Country) from Employees
select count (distinct (country)) from Employees

--amerikadan ka� tane var ingiltereden ka�  tane  var


select country ,COUNT(*)  from Employees
group by Country


--kategorilere g�re �cretlerin  ortalamalar�n� bul
select [CategoryID],avg (UnitPrice)from Products
group by [CategoryID] 


--�uanki zaman� getirme 
select GETDATE()
select SYSDATETIME()--daha hassas zaman i�in saliseleri bile getirir

--de�i�ken tan�mlama declare kullan�r�z database dde�i�ken oldu�unu @ ile anl�yor
declare @date datetime
set @date='2024-11-13 09:00:00'
select @date as tarih
go --yukar�da   de�i�ken olarak tan�mlanan her �eyin  a�a��da da kullan�lmas��n da sa�lar
declare @date datetime
set @date=getdate()
select @date as [�U ANK� TAR�H VE ZAMAN]

--s�reekleme dateadd
select dateadd(day,1,@date)
select dateadd(month,1,@date)
select dateadd(year,1,@date)
select dateadd(minute,1,@date)
select dateadd(hour,1,@date)
select dateadd(second,1,@date)

--birden fazla �eyi kullanmak istersek fonksiyonla kullanaca��z

go
declare @t1 datetime 
declare @t2 datetime
set @t1='2023-11-13 09:00:00'
set @t2=getdate()
select DATEDIFF(year,@t1,@t2)
select DATEDIFF(hour,@t1,@t2)
select datediff(minute,@t1,@t2)
select datediff(day,@t1,@t2)
--do�um tarihi ile �u anki zaman aras�nda  ya� fark�n� bulmak
go

declare @t1 datetime 
set @t1=getdate()
select year(@t1) as y�l ,month(@t1) as day,day(@t1) as g�nh--hour(@t1) bu yanl�� olur

declare @a as int=10
select @a


go
declare @a as int=10
select @a=@a+50
select @a as ekleme

--iki say� tamamla ama say�rastgele olsun ve  rastgele say�lar�n  ortalamas�n�  bul 

go

declare @say�1 as float=round(rand()*100,0.5),
@say�2 as float=round(rand()*100,0.5),@ort as float 
select @say�1
select @say�2
set @ort=(@say�1+@say�2)/2
select  @ort

go

declare @a as smallint=01
set @a =@a*50
select @a


go  
declare @a as numeric(5,2) -- 5 toplamda 5 basamak tutar burdaki iki ise virg�lden sonra iki basamak tutar
select @a=123.4557486
select @a

go

declare  @sonuc as int=100
select power(@sonuc,2)--kuvvet alam
select square(@sonuc)--karesini alma
select power(@sonuc,0.5)--karek�k�n� al�r
select pi()

--yar��ap� girilen bir karenini  alan�n�  hesaplama
go
declare @r float=round(rand()*100,0.5),@sonuc float
select @r
set @sonuc=pi()*square(@r)
select @sonuc

--birden  10 a kadar olan say�lar�n bir a�a��s�yla kuvvetini alma
declare @i as int=1,@kuvvet as  int=0
while @i<10
      begin
	     select power(@i,@kuvvet)
		 set @i=@i+1
		 set @kuvvet=@kuvvet+1
	 end

--birden 10 a kadar olan say�lar�n karek�k�n�  alma

select sqrt(9)

go 
declare @i as float=1.00
while @i<10
    begin
	  select sqrt(@i)--BUNU DENE
	  set @i+=1
	end
go
declare  @de�i�ken as float=-11.55
select floor(@de�i�ken)
select ceiling(@de�i�ken)
select abs(@de�i�ken)
select sign(10)--negatifse -1 pozitifse +1  s�f�r oldu�u zamanda o d�nd�r�yor











