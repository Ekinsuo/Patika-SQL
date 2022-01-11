--city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
 select city, country from city
	 left join country on city.country_id = country.country_id;
 
 --customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
 select payment_id, last_name, first_name 
 from payment
	 right join customer on payment.customer_id = customer.customer_id;

-- rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
select rental_id, first_name, last_name 
from rental
     full join customer on rental.customer_id = customer.customer_id;
 
