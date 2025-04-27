use Ogrenci2024_OO --eðer verilerimiz çalýþmýyorsa bunu etkinleþtirip kullanabiliriz
select * from Tbl_ogrenci
select ad from Tbl_ogrenci
select soyad from Tbl_ogrenci
select ad,soyad from Tbl_ogrenci
select *from Tbl_ogrenci where sehir='Erzurum'
select *from Tbl_ogrenci where agno>3.00
select *from Tbl_ogrenci where agno>3 and sehir='Erzurum'
select Ad as isim from Tbl_ogrenci
select ad as isim,soyad as soyadi from Tbl_ogrenci
select [ad] from Tbl_ogrenci
select * from Tbl_ogrenci
insert into Tbl_ogrenci(ad,soyad,sehir,agno,bolum)
values ('Nesim','Püsküllü','Aðrý',3.56,'Ýnþaat Mühendsliði')

