create database note;

\c note;

CREATE TABLE notes (
    id_notes INT PRIMARY KEY,
    note_mathematique FLOAT,
    note_francais FLOAT
);

CREATE TABLE sessions (
    id_sessions INT PRIMARY KEY,
    date_session DATE,
    lieu VARCHAR(255)
);

CREATE TABLE candidats (
    id_candidats INT PRIMARY KEY,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    statut_admission BOOLEAN
);
CREATE TABLE statuts (
    id_statuts INT PRIMARY KEY,
    id_candidat INT REFERENCES candidats(id_candidats),
    id_note INT REFERENCES notes(id_notes),
    admis BOOLEAN
);

INSERT INTO notes (id_notes, note_mathematique, note_francais)
VALUES (1, 15.5, 13.0),
       (2, 18.0, 14.5),
       (3, 12.0, 11.5),
       (4, 16.5, 15.0),
       (5, 14.0, 12.5);

INSERT INTO sessions (id_sessions, date_session, lieu)
VALUES (1, '2023-08-01', 'Salle A'),
       (2, '2023-08-02', 'Salle B'),
       (3, '2023-08-03', 'Salle C'),
       (4, '2023-08-04', 'Salle D'),
       (5, '2023-08-05', 'Salle E');

INSERT INTO candidats (id_candidats, nom, prenom, statut_admission)
VALUES (1, 'marco', 'Avotra', TRUE),
       (2, 'Messi', 'ronaldo', FALSE),
       (3, 'neymar', 'kane', TRUE),
       (4, 'suiz', 'David', FALSE),
       (5, 'king', 'tsiory', TRUE);

INSERT INTO statuts (id_statuts, id_candidat, id_note, admis)
VALUES (1, 1, 1, TRUE),
       (2, 2, 2, FALSE),
       (3, 3, 3, TRUE),
       (4, 4, 4, FALSE),
       (5, 5, 5, TRUE);

