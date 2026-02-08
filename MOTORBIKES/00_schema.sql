CREATE TABLE concessionari (
        id_concessionario INT AUTO_INCREMENT PRIMARY KEY,
        partita_iva VARCHAR(11) NOT NULL UNIQUE,
        indirizzo VARCHAR(255) NOT NULL,
        nome_proprietario VARCHAR(100) NOT NULL
    );


CREATE TABLE moto (
        targa VARCHAR(10) PRIMARY KEY,
        casa_produttrice VARCHAR(50) NOT NULL,
        modello VARCHAR(50) NOT NULL,
        cilindrata INT NOT NULL,
        anno_produzione YEAR NOT NULL,
        id_concessionario INT NOT NULL,
        CONSTRAINT fk_moto_concessionari
            FOREIGN KEY (id_concessionario)
            REFERENCES concessionari(id_concessionario)
            ON DELETE CASCADE
            ON UPDATE CASCADE
    );


 CREATE TABLE vendita (
        id_vendita INT AUTO_INCREMENT PRIMARY KEY,
        data_vendita DATE NOT NULL,
        prezzo DECIMAL(10,2) NOT NULL,
        id_concessionario INT NOT NULL,
        targa_moto VARCHAR(10) NOT NULL,
        CONSTRAINT fk_vendita_concessionari
            FOREIGN KEY (id_concessionario)
            REFERENCES concessionari(id_concessionario)
           ON DELETE CASCADE
           ON UPDATE CASCADE,
        CONSTRAINT fk_vendita_moto
            FOREIGN KEY (targa_moto)
            REFERENCES moto(targa)
            ON DELETE CASCADE
            ON UPDATE CASCADE
     );
