/*
1-de�i�ken tan�mlamak  i�in declare komutu  kullanmal�y�z 
2*@ i�areti kullanmal�y�z
*/
declare @ad   nvarchar(20) --tan�mlama
set @ad='Nazl�can'  --atama
select @ad as isim--�a��rma

go
declare @ad nvarchar(20)='Nazl�can' ,@soyad nvarchar(20)='P�sk�ll�'
select @ad as isim,@soyad as soyad
go
declare @sayi1 int=20,@sayi2 int=30 ,@toplam int
set @toplam=@sayi1+@sayi2
select @toplam as [toplama i�lemi]

go 
declare @tarih datetime='01-02-2023  09:13:00' --tersten de tan�mlayabiliriz
select @tarih as history
go

declare @tarih datetime='2023-01-02  09:13:00'
set @tarih=getdate()---�u anki tarihi getirdi
select @tarih

go 
declare @tarih datetime--t�r�n� yazmay�  unutma
set @tarih=getdate()
set @tarih='2023-12-04 09:13:00'--en son  hangisini set etmi�sen onu  se�er
select @tarih 

--MUTLAKA HOCAYA SOR NEDEN SAAT KISMINI NE ��MD�K� ZAMANI  NE DE TANIMLADI�IM �EK�LDE G�STERMED�??????
go

DECLARE @tarih DATETIME = '2023-12-04 09:13:00';

SET @tarih = DATEADD(year, 2, @tarih);
SET @tarih = DATEADD(day, 3, @tarih);--hepsinde de�i�iklik yapmak istersem 

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
select @tarih_fark as [Tarihler aras�ndaki fark]

go--HOCAYA SOR NEDEN 2-DAK�KAFARK-GUN FARK �EKL�NDE YAZMADDI

declare @t1 datetime
declare @t2 datetime
declare  @tarih_fark datetime
set @t1='2026-12-03 09:06:24'
set @t2='2028-11-04 10:09:33'
select tarih_fark=DATEDIFF(year,@t1,@t2)
select tarih_fark=datediff(minute,@t1,@t2)
select  tarih_fark=datediff(day,@t1,@t2)
--HOCAYA SOR BURADA NEDEN @ ��ARET�N KALDIRINCA TEKER TEKER YAZIYROR DA @ EKLEY�NCE COMMAND COMPLETED  SUCCESFULLY D�YOR
--ASLINDA HATA VERMES� GEREKM�YOR MU ????



