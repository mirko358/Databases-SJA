create database Airbnb;

use airbnb;

CREATE TABLE Utente (
        id_utente INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL,
        cognome VARCHAR(50) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE
    );



    CREATE TABLE Alloggio (
        id_alloggio INT AUTO_INCREMENT PRIMARY KEY,
        indirizzo VARCHAR(100) NOT NULL,
        città VARCHAR(50) NOT NULL,
        prezzo_notte DECIMAL(8,2) NOT NULL,
        tipo_alloggio VARCHAR(50) NOT NULL,  -- es. appartamento, casa, stanza privata
        numero_stanze INT NOT NULL
    );



CREATE TABLE Periodo (
        id_periodo INT AUTO_INCREMENT PRIMARY KEY,
        data_inizio DATE NOT NULL,
        data_fine DATE NOT NULL);



    CREATE TABLE Prenotazione (
        id_utente INT NOT NULL,
        id_alloggio INT NOT NULL,
        id_periodo INT NOT NULL,
        stato ENUM('confermata','cancellata') NOT NULL,
        prezzo_totale DECIMAL(8,2) NOT NULL,
        data_prenotazione DATE NOT NULL,
        numero_ospiti INT NOT NULL,
        totale_notti INT NOT NULL,
        PRIMARY KEY (id_utente, id_alloggio, id_periodo),
        FOREIGN KEY (id_utente) REFERENCES Utente(id_utente)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
        FOREIGN KEY (id_alloggio) REFERENCES Alloggio(id_alloggio)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
        FOREIGN KEY (id_periodo) REFERENCES Periodo(id_periodo)
            ON DELETE CASCADE
            ON UPDATE CASCADE
    );
