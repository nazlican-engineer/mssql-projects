use NORTHWND
select  [ProductName],[UnitPrice],[UnitsInStock],
        case [UnitsInStock] when 0 then 'STOKTA YOK'
		else convert(varchar,[UnitsInStock]) end as stok
from  Products
where [UnitsInStock]<5 
--KOÞUL  KOYMA

select [FirstName]+ ' ' + [LastName],[TitleOfCourtesy],
       case [TitleOfCourtesy]
	   when 'Ms.'  then 'kadýn'
	   when 'Mrs.' then 'kadýn'
	   when 'Mr.'  then 'erkek'
	   when 'dR.'  then 'doktor'
	   else 'belirtilmemiþ' end as durum
from Employees
--farklý ülkeleri  ekrana yazdýr  DÝSTÝNCT
select count(*) from Employees

select distinct (Country) from Employees
select count (distinct (country)) from Employees

--amerikadan kaç tane var ingiltereden kaç  tane  var


select country ,COUNT(*)  from Employees
group by Country


--kategorilere göre ücretlerin  ortalamalarýný bul
select [CategoryID],avg (UnitPrice)from Products
group by [CategoryID] 


--þuanki zamaný getirme 
select GETDATE()
select SYSDATETIME()--daha hassas zaman için saliseleri bile getirir

--deðiþken tanýmlama declare kullanýrýz database ddeðiþken olduðunu @ ile anlýyor
declare @date datetime
set @date='2024-11-13 09:00:00'
select @date as tarih
go --yukarýda   deðiþken olarak tanýmlanan her þeyin  aþaðýda da kullanýlmasýýn da saðlar
declare @date datetime
set @date=getdate()
select @date as [ÞU ANKÝ TARÝH VE ZAMAN]

--süreekleme dateadd
select dateadd(day,1,@date)
select dateadd(month,1,@date)
select dateadd(year,1,@date)
select dateadd(minute,1,@date)
select dateadd(hour,1,@date)
select dateadd(second,1,@date)

--birden fazla þeyi kullanmak istersek fonksiyonla kullanacaðýz

go
declare @t1 datetime 
declare @t2 datetime
set @t1='2023-11-13 09:00:00'
set @t2=getdate()
select DATEDIFF(year,@t1,@t2)
select DATEDIFF(hour,@t1,@t2)
select datediff(minute,@t1,@t2)
select datediff(day,@t1,@t2)
--doðum tarihi ile þu anki zaman arasýnda  yaþ farkýný bulmak
go

declare @t1 datetime 
set @t1=getdate()
select year(@t1) as yýl ,month(@t1) as day,day(@t1) as günh--hour(@t1) bu yanlýþ olur

declare @a as int=10
select @a


go
declare @a as int=10
select @a=@a+50
select @a as ekleme

--iki sayý tamamla ama sayýrastgele olsun ve  rastgele sayýlarýn  ortalamasýný  bul 

go

declare @sayý1 as float=round(rand()*100,0.5),
@sayý2 as float=round(rand()*100,0.5),@ort as float 
select @sayý1
select @sayý2
set @ort=(@sayý1+@sayý2)/2
select  @ort

go

declare @a as smallint=01
set @a =@a*50
select @a


go  
declare @a as numeric(5,2) -- 5 toplamda 5 basamak tutar burdaki iki ise virgülden sonra iki basamak tutar
select @a=123.4557486
select @a

go

declare  @sonuc as int=100
select power(@sonuc,2)--kuvvet alam
select square(@sonuc)--karesini alma
select power(@sonuc,0.5)--karekökünü alýr
select pi()

--yarýçapý girilen bir karenini  alanýný  hesaplama
go
declare @r float=round(rand()*100,0.5),@sonuc float
select @r
set @sonuc=pi()*square(@r)
select @sonuc

--birden  10 a kadar olan sayýlarýn bir aþaðýsýyla kuvvetini alma
declare @i as int=1,@kuvvet as  int=0
while @i<10
      begin
	     select power(@i,@kuvvet)
		 set @i=@i+1
		 set @kuvvet=@kuvvet+1
	 end

--birden 10 a kadar olan sayýlarýn karekökünü  alma

select sqrt(9)

go 
declare @i as float=1.00
while @i<10
    begin
	  select sqrt(@i)--BUNU DENE
	  set @i+=1
	end
go
declare  @deðiþken as float=-11.55
select floor(@deðiþken)
select ceiling(@deðiþken)
select abs(@deðiþken)
select sign(10)--negatifse -1 pozitifse +1  sýfýr olduðu zamanda o döndürüyor











