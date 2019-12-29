select * from dbo.Persons

select * 
from PC;

select model, speed, hd 
from PC
where price < 400;

select * 
from product;

select product.maker, pc.speed, pc.hd
from product, pc
where product.model = pc.model and pc.hd > 45

select distinct maker from Product

select ram from pc where ram < 45

select * from pc
where ram in (select ram from pc where ram < 45)

select * from pc
where price > '45s'

select * 
from PC
where ram >= 15 and ram <= 45;

select * 
from PC
where ram between 15 and 45;