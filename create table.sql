create table utilisateur
(
	id SERIAL primary key,
	nom VARCHAR(255) not null,
	prenom VARCHAR(255) not null,
	email VARCHAR(320) UNIQUE NOT NULL,
	mot_de_passe CHAR(60) not null,
);

create table categorie
(
	id SERIAL primary key,
	nom VARCHAR(255) not null
);

create table produit  
(
	id SERIAL primary key,
	nom VARCHAR(255) not null,
	prix decimal(6,2) not null,
	quantite integer not null,
	id_categorie integer not null,
	constraint fk_generation foreign key (id_categorie) references categorie(id)
);