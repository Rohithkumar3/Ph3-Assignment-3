create database Assignment3
use Assignment3
create table Products(
PId int primary key,
PQ int not null,
PPrice float not null,
DiscountPercent float not null,
ManufacturingDate date)

insert into Products values
(1, 10,1000.00,10.00, '09/12/2023'),
(2, 20,5000.00,20.00, '03/16/2023'),
(3, 60,20000.00,30.00, '11/09/2023'),
(4, 80,5000.00,10.00, '06/26/2023'),
(5, 40,3000.00,10.00, '01/22/2023')

select * from Products

create function CalDiscountedValue
(
@price float, @DiscountPercent float
)
returns float as
begin
declare @DiscountValue float;
set @DiscountValue= @price-(@price * @DiscountPercent/100)
 return @DiscountValue
end

select * from dbo.Products

select pid as PID,
Pprice as Price,
discountpercent as Discount,
dbo.CalDiscountedValue(pprice,DiscountPercent) as PriceAfterDiscount from products



