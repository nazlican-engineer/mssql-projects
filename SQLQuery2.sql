use Meyve_�retim_Takibi
select *from Meyve_tbl
select Meyve_ad,Satis from Meyve_tbl
select Meyve_ad,Satis from Meyve_tbl where Meyve_ad='�z�m' and satis>2
select *from Meyve_tbl where satis>18 or alis>5
--insert komutu 
--insert into table(column1,column2,column3,...) values(v1,v2,v3...) tabloya veri ekleme
insert into Meyve_tbl(Yetistigi_�l,Uretilme_Miktar�,Alis,Satis,Meyve_ad) values('Sakarya',500.000,2,5,'Kiraz')
select* from Meyve_tbl
insert into Meyve_tbl(Yetistigi_�l,Uretilme_Miktar�,Alis,Satis,Meyve_ad) values('A�r�',300.000,3,5,'Ye�il Elma') 
--truncate ise b�t�n tabloyu  s�f�rlar 
--update Meyve_tbl set Meyve_ad='kiraz'--b�t�n meyveleri kiraz yapt� bu bazen geri d�n���m� olmayan bir olay olabilir.
 update Meyve_tbl set Meyve_ad='Hurma' where Yetistigi_�l='Bursa'
 --select Meyve_ad ,count(*) from Meyve_tbl
 select count (*) from Meyve_tbl --no column name yazar
 select count (*)  toplam_il
 from Meyve_tbl --bu k�sm� hocaya sor as komutunu kullanmad���m halde neden tablo ismini de�i�tirdi.
 select count(*) from Meyve_tbl  where Yetistigi_�l='Bursa'
 select sum(Satis) as toplam_satis_miktar� from Meyve_tbl
 select *from Meyve_tbl
 delete from  Meyve_tbl where Meyve_sirasi=8
 select sum(Satis) as toplam_satis_miktar� from Meyve_tbl
 select avg(alis) as ortalama from Meyve_tbl --null nas�l silebilirim hocaya sor
 select max(satis) as en_y�ksek_deger from Meyve_tbl
 select min(satis) as en_d�s�k_deger from Meyve_tbl
 select meyve_ad,satis,alis from Meyve_tbl where satis>alis
 --grupland�rma yani  grup  bay da  mesela  urfa da yeti�en  ka� tane  elma var gibi 
 select count(*) from Meyve_tbl as [toplam]  where Yetistigi_�l='Bursa'--NEDEN TABLO �SM�N� DE���T�RMED� HOCAYA SOR

 select Yetistigi_il ,COUNT(*) from Meyve_tbl as [toplam] GROUP BY Yetistigi_�l
 select Uretilme_Miktar�,Count(*) from  Meyve_Tbl as [En_Y�KSEK] GROUP bY Uretilme_Miktar� Having Uretilme_Miktar�>'300'
 --group by kullan�rken where komutunu  kullanam�yoruz bu y�zden  having komutunu kullan�yoruz
 --where gruplamadan �nce kullan�l�r
 --having  komutu gruplad�ktan sonra filtrelemek  i�in  kullan�l�r
 --where komutunu  kullan�rken b�t�n ifadeyi almam�z laz�m mesela ismi  a harfi ile
 --ba�layanlar� getirmek istedi�imizde olmaz ��nk� where metodu  sadece b�t�n ifadeleri  kullan�r
 --bu y�zdden L�KE ifadesini  kullanmam�z laz�m
 select *from Meyve_tbl where Meyve_ad like '%k%'
 --WHERE: Sorgu sonu�lar�n� filtrelemek i�in kullan�l�r.
--LIKE: Metin s�tunlar� ile belirli bir deseni aramak i�in kullan�l�r.
--%k%: "k" harfi i�eren t�m kay�tlar� bulmak i�in kullan�l�r.
select *from Meyve_tbl where Meyve_ad like '%r%' or  Yetistigi_�l='%k%'
select * from Meyve_tbl where Meyve_ad like 'h%' --h harfi  ile ba�layanlar
select * from Meyve_tbl where Meyve_ad like '%ur%'--ur yanyana gelmeli
--D�ST�NCT

select distinct satis from Meyve_tbl
select satis from Meyve_tbl group by satis
select COUNT(distinct(satis)) as  'benzersiz' from Meyve_tbl 
