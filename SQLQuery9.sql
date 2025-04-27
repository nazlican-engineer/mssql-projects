Use Ogrenci2024_OO
select *from tbl_not
select *from tbl_tc


select t1.ad,t1.soyad,t2.vize,t2.final
from tbl_tc t1
 inner join tbl_not  t2 on t1.tc=t2.tc --inner joinla ayný sonucu verir


select t1.ad,t1.soyad
from tbl_tc t1
right join tbl_not t2 on  t1.tc=t2.tc

select t1.ad,t1.soyad
from tbl_not t2
left join tbl_tc t1 on t1.tc=t2.tc

select t1.ad,t1.soyad,t2.final
from tbl_tc t1
cross  join tbl_not t2

------------------------------------

use NORTHWND
 select p1.ProductName as [Ürün Adý]
 s1.CompanyName,
 c1.CategoryName
 from Products p1
 inner join Suppliers s1 on p1.SupplierID=s1.SupplierID
 inner join  Categories c1 on p1.CategoryID=c1.CategoryID
 where c1.CategoryName='Beverages' and
 s1.CompanyName='Exotic Liquids'


 select *from Products p1
 inner join Suppliers s1 on p1.SupplierID=s1.SupplierID
 inner join Categories c1 on p1.CategoryID=c1.CategoryID
 where c1.CategoryName='Beverages' and 
 s1.CompanyName='Exotic Liquids'

 
 select p1.UnitPrice ücret,
 p1.ProductName ürün,c1.CategoryName
 from Products p1
 inner join Suppliers s1 on p1.SupplierID=s1.SupplierID
 inner join Categories c1 on p1.CategoryID=c1.CategoryID
 where (c1.CategoryName='Beverages') and (p1.UnitsInStock between 15 and 40)
 order by ücret

