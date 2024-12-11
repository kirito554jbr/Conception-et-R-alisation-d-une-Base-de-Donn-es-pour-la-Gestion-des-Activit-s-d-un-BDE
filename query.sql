CREATE DATABASE BDE;

USE BDE;

CREATE TABLE bde (
    id_bde INT PRIMARY KEY,
    name VARCHAR(100),
    prenom VARCHAR(100),
    Date_Adhesion DATE
);




CREATE TABLE evenements (
    id_evenements INT PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(255),
    lieu VARCHAR(100),
    date DATE,
    budget DECIMAL(10, 2)
);

CREATE TABLE etudiants (
    id_etudiants INT PRIMARY KEY,
    name VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100),
    status VARCHAR(100)
);


CREATE TABLE sponsor (
    id_sponsor INT PRIMARY KEY,
    nom_de_entreprise VARCHAR(100),
    montant DECIMAL(10, 2)
);

CREATE TABLE role (
    id_role INT PRIMARY KEY,
    title VARCHAR(100),
     description VARCHAR(255)
);

CREATE TABLE contact_principale (
    id_contact_principale INT PRIMARY KEY,
    Nom VARCHAR(100),
    email VARCHAR(100),
    tele VARCHAR(100)
);





CREATE TABLE membre (
     id_bde int,
     id_etudiants int,
     PRIMARY KEY (id_bde, id_etudiants),
     FOREIGN KEY(id_bde) REFERENCES bde(id_bde),
     FOREIGN KEY(id_etudiants) REFERENCES etudiants(id_etudiants)
     );



CREATE TABLE organization (
     id_bde int,
     id_evenements int,
     PRIMARY KEY (id_bde, id_evenements),
     FOREIGN KEY(id_bde) REFERENCES bde(id_bde),
     FOREIGN KEY(id_evenements) REFERENCES evenements(id_evenements)
     );


CREATE TABLE participer (
     id_etudiants int,
     id_evenements int,
     PRIMARY KEY (id_etudiants, id_evenements),
     FOREIGN KEY(id_etudiants) REFERENCES etudiants(id_etudiants),
     FOREIGN KEY(id_evenements) REFERENCES evenements(id_evenements)
     );


CREATE TABLE montant_contribution (
     id_sponsor int,
     id_evenements int,
     PRIMARY KEY (id_sponsor, id_evenements),
     FOREIGN KEY(id_sponsor) REFERENCES sponsor(id_sponsor),
     FOREIGN KEY(id_evenements) REFERENCES evenements(id_evenements)
     );


insert into bde 
VALUES(1, "abdelilah", "kroud", "2024-10-09")
      (2, "soulaiman", "jaafar", "2024-10-09")
      (3, "salma", "tergi", "2024-10-09"),
      (4, "youness", "kamal", "2024-10-09"),
      (5, "abir", "meskini", "2024-10-09");


alter table etudiants
add constraint
unique(id_etudiants);



insert into etudiants 
VALUES  (2, "abdelilah", "kroud", "abdelilah_kroud@gmail.com", "etudiant"),

        (3, "abdelkbir", "hadoui", "abdelkbir_hadoui@gmail.com", "etudiant"),
        (4, "abir", "meskini", "abir_meskini@gmail.com", "etudiant"),
        (5, "ahmed", "follane", "ahmed_follane@gmail.com", "etudiant"),
        (6, "aymen", "jebrane", "aymen_jebrane@gmail.com", "etudiant"),
        (7, "ayoub", "benmansour", "ayoub_benmansour@gmail.com", "etudiant"),
        (8, "abdelhakim", "baala", "abdelhakim_baala@gmail.com", "etudiant"),
        (9, "amiri", "amir", "amiri_amir@gmail.com", "etudiant"),
        (10, "ilyas", "elassal", "ilyas_elassal@gmail.com", "etudiant"),
        (11, "ilyass", "samoudi", "ilyass_samoudi@gmail.com", "etudiant"),
        (12, "kamal", "younes", "kamal_younes@gmail.com", "etudiant"),
        (13, "kaoutar", "labjioui", "kaoutar_labjioui@gmail.com", "etudiant"),
        (14, "khadija", "ameksa", "khadija_ameksa@gmail.com", "etudiant"),
        (15, "abderrahman", "lahmidi", "abderrahman_lahmidi@gmail.com", "etudiant"),
        (16, "salma", "tergi", "salma_tergi@gmail.com", "etudiant"),
        (17, "smail", "najim", "smail_najim@gmail.com", "etudiant"),
        (18, "soulaiman", "jaafar", "soulaiman_jaafar@gmail.com", "etudiant"),
        (19, "wassim", "oucouc", "wassim_oucouc@gmail.com", "etudiant"),
        (20, "yassir", "mahir", "yassir_mahir@gmail.com", "etudiant"),
        (21, "zakaria", "kardache", "zakaria_kardache@gmail.com", "etudiant");



alter table evenements
add constraint
unique(id_evenements);

insert into evenements
VALUES  (1, "hackathon", "haking maraton", "youcode", "2024-02-11", 6000.00),
        (2, "codenet", "soirées de networking", "youcode", "2024-01-06",4500.00),
        (3, "ateliers", "ateliers techniques", "youcode", "2024-03-21", 5000.00),
        (4, "youleauge", "compétitions sportives", "youcode", "2024-01-10", 6000.00);



