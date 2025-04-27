use NORTHWND
--KULLANICI TANIMLI FONSK�YONLAR

--KULLANICININ G�RD��� YILA G�RE YA� HESAPLAYAN B�R KULLANICI TANIMLI  FONKS�YON YAZINIZ
alter function yashesapla(@do�umtarihi date)
returns int--nas�l bir de�er d�nd�rece�ini yaz�yoruzzz--RETURNS YAZILACAK
as 
begin
declare @yas int
set @yas=datediff(year,@do�umtarihi,getdate())-
       case when (month(@do�umtarihi)>month(getdate()))
		    or( month(@do�umtarihi)=month(getdate()))
			and (day(@do�umtarihi)>day(getdate()))
			then 1
			else 0
			end
return @yas--RETURN YAZILACAK
end
select dbo.yashesapla('2003-01-01')--udfleri �al��t�rmak  i�in ba��na dbo eklemeliyiz


--BU KURDU�UMUZ FONKS�YONU BA�KA TABLOLAR �ZER�NDEN RAHATLIKLA YAPAB�L�R�ZZZ
SELECT *from Employees
select FirstName,LastName,
dbo.yashesapla(birthdate) as yaslar
from Employees

--bu soruyu birde proced�rlerle yap heleee

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
1-Viewler tablo  gibi i�lev al�yor,insert,update,delete gibi i�lemleri yap�yor.
2-Viewleri tablo gibi �a��r�yoruz.
3-Viewler asl�nda sanal bir tablodur.Olu�turdu�um veritaban� k�sm�nda g�z�kmez.
4-Normal bir tabloyu �a��rmaktansa onun wiewini �a��rmak daha az veritaban�n� yoruyor.
5-View �zerine yapt���m i�lemler ger�ek tabloyu da etkiler.
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


---BU SORUYU B�LEN B�R�LER�NE SORR
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