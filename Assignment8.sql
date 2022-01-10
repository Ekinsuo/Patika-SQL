--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
create table employee (
	id INTEGER primary key,
		name VARCHAR (50) not null,
			birthday DATE,
				email VARCHAR (100)
	)
--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
update employee
set name = 'Gary Hall',
	birthday = '1990/10/10',
		email = 'gary@hall.com'
		Where email like 'a%';

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
delete from employee
	where name like 'A%';
