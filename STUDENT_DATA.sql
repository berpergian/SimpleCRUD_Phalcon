create table STUDENT_DATA (
	id INT UNSIGNED NOT NULL,
	name VARCHAR(50) NOT NULL,
	address VARCHAR(50)
);
insert into STUDENT_DATA (id, name, address) values (1, 'Sileas Merigot', '55452 Northview Center');
insert into STUDENT_DATA (id, name, address) values (2, 'Augustine Rowdell', '64 Granby Plaza');
insert into STUDENT_DATA (id, name, address) values (3, 'Doe Lampen', '72848 Crowley Place');
insert into STUDENT_DATA (id, name, address) values (4, 'Ynez Frie', '3349 Novick Terrace');
insert into STUDENT_DATA (id, name, address) values (5, 'Herold McKerlie', '91 Jackson Hill');
insert into STUDENT_DATA (id, name, address) values (6, 'Otis Mallett', '23 Golf Course Avenue');
insert into STUDENT_DATA (id, name, address) values (7, 'Celinka Hillatt', '5 Northland Park');
insert into STUDENT_DATA (id, name, address) values (8, 'Dimitri Colbourne', '4812 Menomonie Hill');
insert into STUDENT_DATA (id, name, address) values (9, 'Darby Van Baaren', '75277 Pleasure Plaza');
insert into STUDENT_DATA (id, name, address) values (10, 'Harriott Leates', '488 Continental Hill');
insert into STUDENT_DATA (id, name, address) values (11, 'Rouvin De Bruyn', '129 Coleman Hill');
insert into STUDENT_DATA (id, name, address) values (12, 'Aguste Duchenne', '214 Jana Place');
insert into STUDENT_DATA (id, name, address) values (13, 'Lanny Agostini', '98 Golden Leaf Court');
insert into STUDENT_DATA (id, name, address) values (14, 'Marys Shemwell', '74 Thompson Way');
insert into STUDENT_DATA (id, name, address) values (15, 'Bambie Farland', '3 Helena Way');
insert into STUDENT_DATA (id, name, address) values (16, 'Adoree Tattoo', '3391 Clarendon Lane');
insert into STUDENT_DATA (id, name, address) values (17, 'Nadiya Dinsell', '6929 Pennsylvania Court');
insert into STUDENT_DATA (id, name, address) values (18, 'Hugibert Brocket', '00 Eagan Junction');
insert into STUDENT_DATA (id, name, address) values (19, 'Maurene Ducker', '08744 Elmside Plaza');
insert into STUDENT_DATA (id, name, address) values (20, 'Clayson Bayly', '058 Service Center');
insert into STUDENT_DATA (id, name, address) values (21, 'Hollis Normington', '9017 La Follette Point');
insert into STUDENT_DATA (id, name, address) values (22, 'Tammi Pestridge', '9 Kings Parkway');
insert into STUDENT_DATA (id, name, address) values (23, 'Dorisa Feldhammer', '0 West Place');
insert into STUDENT_DATA (id, name, address) values (24, 'Zuzana Ganiford', '319 Acker Circle');
insert into STUDENT_DATA (id, name, address) values (25, 'Andre Karsh', '79358 Katie Junction');

ALTER TABLE `STUDENT_DATA`
  ADD PRIMARY KEY (`id`);
