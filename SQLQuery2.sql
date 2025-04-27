use Meyve_Üretim_Takibi
select *from Meyve_tbl
select Meyve_ad,Satis from Meyve_tbl
select Meyve_ad,Satis from Meyve_tbl where Meyve_ad='üzüm' and satis>2
select *from Meyve_tbl where satis>18 or alis>5
--insert komutu 
--insert into table(column1,column2,column3,...) values(v1,v2,v3...) tabloya veri ekleme
insert into Meyve_tbl(Yetistigi_Ýl,Uretilme_Miktarý,Alis,Satis,Meyve_ad) values('Sakarya',500.000,2,5,'Kiraz')
select* from Meyve_tbl
insert into Meyve_tbl(Yetistigi_Ýl,Uretilme_Miktarý,Alis,Satis,Meyve_ad) values('Aðrý',300.000,3,5,'Yeþil Elma') 
--truncate ise bütün tabloyu  sýfýrlar 
--update Meyve_tbl set Meyve_ad='kiraz'--bütün meyveleri kiraz yaptý bu bazen geri dönüþümü olmayan bir olay olabilir.
 update Meyve_tbl set Meyve_ad='Hurma' where Yetistigi_Ýl='Bursa'
 --select Meyve_ad ,count(*) from Meyve_tbl
 select count (*) from Meyve_tbl --no column name yazar
 select count (*)  toplam_il
 from Meyve_tbl --bu kýsmý hocaya sor as komutunu kullanmadýðým halde neden tablo ismini deðiþtirdi.
 select count(*) from Meyve_tbl  where Yetistigi_Ýl='Bursa'
 select sum(Satis) as toplam_satis_miktarý from Meyve_tbl
 select *from Meyve_tbl
 delete from  Meyve_tbl where Meyve_sirasi=8
 select sum(Satis) as toplam_satis_miktarý from Meyve_tbl
 select avg(alis) as ortalama from Meyve_tbl --null nasýl silebilirim hocaya sor
 select max(satis) as en_yüksek_deger from Meyve_tbl
 select min(satis) as en_düsük_deger from Meyve_tbl
 select meyve_ad,satis,alis from Meyve_tbl where satis>alis
 --gruplandýrma yani  grup  bay da  mesela  urfa da yetiþen  kaç tane  elma var gibi 
 select count(*) from Meyve_tbl as [toplam]  where Yetistigi_Ýl='Bursa'--NEDEN TABLO ÝSMÝNÝ DEÐÝÞTÝRMEDÝ HOCAYA SOR

 select Yetistigi_il ,COUNT(*) from Meyve_tbl as [toplam] GROUP BY Yetistigi_Ýl
 select Uretilme_Miktarý,Count(*) from  Meyve_Tbl as [En_YÜKSEK] GROUP bY Uretilme_Miktarý Having Uretilme_Miktarý>'300'
 --group by kullanýrken where komutunu  kullanamýyoruz bu yüzden  having komutunu kullanýyoruz
 --where gruplamadan önce kullanýlýr
 --having  komutu grupladýktan sonra filtrelemek  için  kullanýlýr
 --where komutunu  kullanýrken bütün ifadeyi almamýz lazým mesela ismi  a harfi ile
 --baþlayanlarý getirmek istediðimizde olmaz çünkü where metodu  sadece bütün ifadeleri  kullanýr
 --bu yüzdden LÝKE ifadesini  kullanmamýz lazým
 select *from Meyve_tbl where Meyve_ad like '%k%'
 --WHERE: Sorgu sonuçlarýný filtrelemek için kullanýlýr.
--LIKE: Metin sütunlarý ile belirli bir deseni aramak için kullanýlýr.
--%k%: "k" harfi içeren tüm kayýtlarý bulmak için kullanýlýr.
select *from Meyve_tbl where Meyve_ad like '%r%' or  Yetistigi_Ýl='%k%'
select * from Meyve_tbl where Meyve_ad like 'h%' --h harfi  ile baþlayanlar
select * from Meyve_tbl where Meyve_ad like '%ur%'--ur yanyana gelmeli
--DÝSTÝNCT

select distinct satis from Meyve_tbl
select satis from Meyve_tbl group by satis
select COUNT(distinct(satis)) as  'benzersiz' from Meyve_tbl 
