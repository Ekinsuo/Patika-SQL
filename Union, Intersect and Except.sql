--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(select first_name from actor)
UNION ALL
(select first_name from customer);

--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
 (select first_name from actor)
 INTERSECT 
 (select first_name from customer);
 
 --actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
 (select first_name from actor)
 EXCEPT
 (select first_name from customer);
