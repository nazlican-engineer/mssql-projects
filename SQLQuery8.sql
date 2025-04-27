/*
1-deðiþken tanýmlamak  için declare komutu  kullanmalýyýz 
2*@ iþareti kullanmalýyýz
*/
declare @ad   nvarchar(20) --tanýmlama
set @ad='Nazlýcan'  --atama
select @ad as isim--çaðýrma

go
declare @ad nvarchar(20)='Nazlýcan' ,@soyad nvarchar(20)='Püsküllü'
select @ad as isim,@soyad as soyad
go
declare @sayi1 int=20,@sayi2 int=30 ,@toplam int
set @toplam=@sayi1+@sayi2
select @toplam as [toplama iþlemi]

go 
declare @tarih datetime='01-02-2023  09:13:00' --tersten de tanýmlayabiliriz
select @tarih as history
go

declare @tarih datetime='2023-01-02  09:13:00'
set @tarih=getdate()---þu anki tarihi getirdi
select @tarih

go 
declare @tarih datetime--türünü yazmayý  unutma
set @tarih=getdate()
set @tarih='2023-12-04 09:13:00'--en son  hangisini set etmiþsen onu  seçer
select @tarih 

--MUTLAKA HOCAYA SOR NEDEN SAAT KISMINI NE ÞÝMDÝKÝ ZAMANI  NE DE TANIMLADIÐIM ÞEKÝLDE GÖSTERMEDÝ??????
go

DECLARE @tarih DATETIME = '2023-12-04 09:13:00';

SET @tarih = DATEADD(year, 2, @tarih);
SET @tarih = DATEADD(day, 3, @tarih);--hepsinde deðiþiklik yapmak istersem 

SELECT @tarih AS YeniTarih;


go


declare @t1 datetime
declare @t2 datetime
declare  @tarih_fark datetime
set @t1='2026-12-03 09:06:24'
set @t2='2028-11-04 10:09:33'
set @tarih_fark=DATEDIFF(year,@t1,@t2)
set @tarih_fark=datediff(minute,@t1,@t2)
set  @tarih_fark=datediff(day,@t1,@t2)
select @tarih_fark as [Tarihler arasýndaki fark]

go--HOCAYA SOR NEDEN 2-DAKÝKAFARK-GUN FARK ÞEKLÝNDE YAZMADDI

declare @t1 datetime
declare @t2 datetime
declare  @tarih_fark datetime
set @t1='2026-12-03 09:06:24'
set @t2='2028-11-04 10:09:33'
select tarih_fark=DATEDIFF(year,@t1,@t2)
select tarih_fark=datediff(minute,@t1,@t2)
select  tarih_fark=datediff(day,@t1,@t2)
--HOCAYA SOR BURADA NEDEN @ ÝÞARETÝN KALDIRINCA TEKER TEKER YAZIYROR DA @ EKLEYÝNCE COMMAND COMPLETED  SUCCESFULLY DÝYOR
--ASLINDA HATA VERMESÝ GEREKMÝYOR MU ????



