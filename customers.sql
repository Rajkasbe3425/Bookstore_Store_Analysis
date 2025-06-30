USE book_sales;

				-- Create Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(100),
    country VARCHAR(100)
);

select * from customers;
INSERT INTO customers
values
(1,	'Deborah Griffith','balljoseph@wright-keith.net',	1234567891,	'South Craigfort',	'Denmark'),
(2,	'Crystal Clements',	'kimberlybennett@curtis.com',	1234567892,	'East Derekberg',	'Nicaragua'),
(3,	'Susan Fuller',	'beanmichael@burnett-stewart.net',	1234567893,	'Austinbury	Equatorial', 'Guinea'),
(4, 'Jamie Ramirez',	'amandahood@warren.com',	1234567894,	'Dianamouth',	'Slovenia'),
(5,	'Marcus Murphy',	'connerjohn@yahoo.com',	1234567895,	'Smithbury',	'Guinea-Bissau'),
(6,	'Stephen Vasquez',	'ricemiguel@yahoo.com',	1234567896,	'Hamiltonstad',	'Rwanda'),
(7,	'Susan Hicks',	'jeffrey91@yahoo.com',	1234567897,	'East Rebecca',	'Montenegro'),
(8,	'Matthew Johnson',	'austinkenneth@manning.net',	1234567898,	'Kirstenborough',	'Israel'),
(9,	'Matthew Williams',	'jeffrey41@diaz.com',	1234567899,	'Rebeccafurt',	'Somalia'),
(10,'Ronald Osborn',	'staciekelley@heath.com',	1234567900,	'Lake Benjamin',	'Cameroon');
