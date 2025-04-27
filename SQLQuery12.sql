--TR�GGERLAR
--M�CRASOFT AZURE TEMELLER� E��T�M� �CRETS�Z 1 YILLIK ER���M VAR
--�NSERTED tablosu sqpl server'a �zel tasarlanan bir tablodur ba�ka bir yerde yoki
--DDL DML tablos silme ekleme i�lemleri �ok �nemli
--stok ekran� ddr ara�t�r

use Ogrenci2024_Ders4
select * from Tbl_Calisan
CREATE TRIGGER trg_Tbl_Calisan_Insert --trigger ad� trg ve tablo ad� insert sql servera �zeldir. Ama� kay�t eklendi�i zaman buarada g�z�kecek
on Tbl_Calisan
for INSERT
as
begin
	select * from inserted  ---bu k�s�m �ok �nemli ekleme yap�ld�ld��� i�in inserted kullan�ld�

end

insert into Tbl_Calisan values ('Batu',4444,'e',3)--id otomatik artt��� i�in yazmaya gerek yok ve her �eyi ekleyece�i i�in sut�n adlar�n� eklemeye gerek yok 



/* -- TABLO ADI OLSU�U ���N VAR OLANI G�NCELLER�Z(ALTER)trigger ad� trg ve tablo ad� insert sql servera �zeldir. Ama� kay�t eklendi�i zaman buarada g�z�kecek */
select * from Tbl_Calisan
ALTER TRIGGER trg_Tbl_Calisan_Insert    
on Tbl_Calisan
for INSERT
as
begin
	declare @Id int
	select @Id = ID from inserted
	insert into Tbl_Durum values ('Yeni beklenen kay�t ID:' + CAST(@Id as nvarchar(10)) + ' eklendi.' --@Id modeli tan�mlad��� id
	+ CAST(GETDATE() as nvarchar(50) )) --en son eklenen id al�nd� ve bu kay�t ba�ka bir tabloya eklendi bu kod �ok �neli i� / s�nav

end

insert into Tbl_Calisan values ('Batuhan',4444,'e',3)--id otomatik artt��� i�in yazmaya gerek yok ve her �eyi ekleyece�i i�in sut�n adlar�n� eklemeye gerek yok 

select * from Tbl_Durum --buraya kimin yapt���n� hangi tablolar�n eklendi�ini falan yapabilirsin Hastane otomasyonunun da hastalar i�in 1 trigger hastan�n ge�mi� randevular� i�in 1 trigger yap�labilir. taburcu olan hastalr� sekreter ekrandan silecek bir trigger da olabilir.
--Final klasik ge�mi� olsun


/*S�LME DURUMU*/
CREATE TRIGGER  trg_Tbl_Calisan_Delete
on Tbl_Calisan
for DELETE
as
begin
	declare @Id int
	select @Id = ID from deleted
	insert into Tbl_Durum values ('Silinen kay�t ID:' + CAST(@Id as nvarchar(10)) --@Id modeli tan�mlad��� id
	+ CAST(GETDATE() as nvarchar(50) )) --en son eklenen id al�nd� ve bu kay�t ba�ka bir tabloya eklendi bu kod �ok �neli i� / s�nav

end

delete from TBL_Calisan where ID = 4 --silme i�lemini tetiklmek i�in
select * from Tbl_Durum

--haftaya viewler i�lenecek 