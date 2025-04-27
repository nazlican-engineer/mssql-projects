use NORTHWND
--KULLANICI TANIMLI FONSKÝYONLAR

--KULLANICININ GÝRDÝÐÝ YILA GÖRE YAÞ HESAPLAYAN BÝR KULLANICI TANIMLI  FONKSÝYON YAZINIZ
alter function yashesapla(@doðumtarihi date)
returns int--nasýl bir deðer döndüreceðini yazýyoruzzz--RETURNS YAZILACAK
as 
begin
declare @yas int
set @yas=datediff(year,@doðumtarihi,getdate())-
       case when (month(@doðumtarihi)>month(getdate()))
		    or( month(@doðumtarihi)=month(getdate()))
			and (day(@doðumtarihi)>day(getdate()))
			then 1
			else 0
			end
return @yas--RETURN YAZILACAK
end
select dbo.yashesapla('2003-01-01')--udfleri çalýþtýrmak  için baþýna dbo eklemeliyiz


--BU KURDUÐUMUZ FONKSÝYONU BAÞKA TABLOLAR ÜZERÝNDEN RAHATLIKLA YAPABÝLÝRÝZZZ
SELECT *from Employees
select FirstName,LastName,
dbo.yashesapla(birthdate) as yaslar
from Employees

--bu soruyu birde procedürlerle yap heleee

create procedure up_yahesapla
@dogumtarihi date
as
begin
declare @yas int
set @yas=DATEDIFF(year,@dogumtarihi,getdate())-
       case when (month(@dogumtarihi)>month(getdate())) or
	            (month(@dogumtarihi)>month(getdate())) and
				(day(@dogumtarihi)>day(getdate()))
				then 1
				else 0
				end
select @yas
end
exec up_yahesapla @dogumtarihi ='1985-01-01'

/*
1-Viewler tablo  gibi iþlev alýyor,insert,update,delete gibi iþlemleri yapýyor.
2-Viewleri tablo gibi çaðýrýyoruz.
3-Viewler aslýnda sanal bir tablodur.Oluþturduðum veritabaný kýsmýnda gözükmez.
4-Normal bir tabloyu çaðýrmaktansa onun wiewini çaðýrmak daha az veritabanýný yoruyor.
5-View üzerine yaptýðým iþlemler gerçek tabloyu da etkiler.
*/

alter view vw_UlkeUSAgetir 
as
select  p.ProductName,p.UnitPrice,e.Country from
Products p
inner join Employees e on p.ProductID=e.EmployeeID

select *from vw_UlkeUSAgetir
select *from Employees
select  *from Products

alter view vw_USAgetir
as
select p.ProductName,p.UnitPrice,e.Country
from Products p
inner join Employees e on p.ProductID=e.EmployeeID
where e.Country='USA'

SELECT *FROM vw_USAgetir


---BU SORUYU BÝLEN BÝRÝLERÝNE SORR
select *from vw_egorilerinegoreulkegetir
SP_HELPTEXT  vw_egorilerinegoreulkegetir
select *from  Suppliers
select *from Products


select *from Region
create view vw_region
as
select RegionID,RegionDescription
from Region

select *from vw_region
insert into vw_region(RegionID,RegionDescription) values (5,'erzurum')
update vw_region  set RegionDescription='Trabzon'
where RegionID=5

delete from vw_region where RegionID=5