--TRÝGGERLAR
--MÝCRASOFT AZURE TEMELLERÝ EÐÝTÝMÝ ÜCRETSÝZ 1 YILLIK ERÝÞÝM VAR
--ÝNSERTED tablosu sqpl server'a özel tasarlanan bir tablodur baþka bir yerde yoki
--DDL DML tablos silme ekleme iþlemleri çok önemli
--stok ekraný ddr araþtýr

use Ogrenci2024_Ders4
select * from Tbl_Calisan
CREATE TRIGGER trg_Tbl_Calisan_Insert --trigger adý trg ve tablo adý insert sql servera özeldir. Amaç kayýt eklendiði zaman buarada gözükecek
on Tbl_Calisan
for INSERT
as
begin
	select * from inserted  ---bu kýsým çok önemli ekleme yapýldýldýðý için inserted kullanýldý

end

insert into Tbl_Calisan values ('Batu',4444,'e',3)--id otomatik arttýðý için yazmaya gerek yok ve her þeyi ekleyeceði için sutün adlarýný eklemeye gerek yok 



/* -- TABLO ADI OLSUÐU ÝÇÝN VAR OLANI GÜNCELLERÝZ(ALTER)trigger adý trg ve tablo adý insert sql servera özeldir. Amaç kayýt eklendiði zaman buarada gözükecek */
select * from Tbl_Calisan
ALTER TRIGGER trg_Tbl_Calisan_Insert    
on Tbl_Calisan
for INSERT
as
begin
	declare @Id int
	select @Id = ID from inserted
	insert into Tbl_Durum values ('Yeni beklenen kayýt ID:' + CAST(@Id as nvarchar(10)) + ' eklendi.' --@Id modeli tanýmladýðý id
	+ CAST(GETDATE() as nvarchar(50) )) --en son eklenen id alýndý ve bu kayýt baþka bir tabloya eklendi bu kod çok öneli iþ / sýnav

end

insert into Tbl_Calisan values ('Batuhan',4444,'e',3)--id otomatik arttýðý için yazmaya gerek yok ve her þeyi ekleyeceði için sutün adlarýný eklemeye gerek yok 

select * from Tbl_Durum --buraya kimin yaptýðýný hangi tablolarýn eklendiðini falan yapabilirsin Hastane otomasyonunun da hastalar için 1 trigger hastanýn geçmiþ randevularý için 1 trigger yapýlabilir. taburcu olan hastalrý sekreter ekrandan silecek bir trigger da olabilir.
--Final klasik geçmiþ olsun


/*SÝLME DURUMU*/
CREATE TRIGGER  trg_Tbl_Calisan_Delete
on Tbl_Calisan
for DELETE
as
begin
	declare @Id int
	select @Id = ID from deleted
	insert into Tbl_Durum values ('Silinen kayýt ID:' + CAST(@Id as nvarchar(10)) --@Id modeli tanýmladýðý id
	+ CAST(GETDATE() as nvarchar(50) )) --en son eklenen id alýndý ve bu kayýt baþka bir tabloya eklendi bu kod çok öneli iþ / sýnav

end

delete from TBL_Calisan where ID = 4 --silme iþlemini tetiklmek için
select * from Tbl_Durum

--haftaya viewler iþlenecek 