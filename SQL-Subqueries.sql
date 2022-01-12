--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
select count(length) from film
	where length >(
		select avg (length) from film);

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count (title) from film
	where rental_rate = ( 
		select max(rental_rate) from film);

--film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
select title from film
	where replacement_cost =(
	select min(replacement_cost) from film) 
and rental_rate = (
	select min(rental_rate) from film);
	
--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
select last_name, first_name, customer.customer_id,  
count (payment_id) from customer
	inner join payment on payment.customer_id = customer.customer_id 
 group by customer.customer_id
 order by count desc;
