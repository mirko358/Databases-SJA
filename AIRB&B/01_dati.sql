INSERT INTO Utente (nome, cognome, email) VALUES
    ('Mario', 'Rossi', 'mario.rossi@email.com'),
    ('Giulia', 'Bianchi', 'giulia.bianchi@email.com'),
    ('Luca', 'Verdi', 'luca.verdi@email.com'),
    ('Sara', 'Neri', 'sara.neri@email.com'),
    ('Elena', 'Russo', 'elena.russo@email.com'),
    ('Davide', 'Conti', 'davide.conti@email.com'),
    ('Chiara', 'Ferrari', 'chiara.ferrari@email.com'),
    ('Marco', 'Gallo', 'marco.gallo@email.com');





     INSERT INTO Alloggio (indirizzo, città, prezzo_notte, tipo_alloggio, numero_stanze) VALUES
    ('Via Roma 10', 'Milano', 80.00, 'Appartamento', 2),
    ('Corso Italia 25', 'Roma', 120.00, 'Casa', 3),
    ('Piazza Duomo 5', 'Milano', 60.00, 'Stanza Privata', 1),
    ('Viale Firenze 12', 'Firenze', 90.00, 'Appartamento', 2),
    ('Via Napoli 8', 'Napoli', 70.00, 'Casa', 3),
    ('Via Torino 15', 'Torino', 75.00, 'Appartamento', 2),
    ('Via Bologna 7', 'Bologna', 85.00, 'Casa', 3),
    ('Piazza Venezia 3', 'Roma', 95.00, 'Appartamento', 2),
    ('Via Genova 11', 'Genova', 65.00, 'Stanza Privata', 1),
    ('Viale Palermo 22', 'Palermo', 80.00, 'Appartamento', 2),
    ('Corso Venezia 9', 'Milano', 110.00, 'Casa', 3),
    ('Via Firenze 18', 'Firenze', 70.00, 'Stanza Privata', 1);





 INSERT INTO Periodo (data_inizio, data_fine) VALUES
    ('2026-02-10', '2026-02-15'),
    ('2026-02-12', '2026-02-18'),
    ('2026-03-01', '2026-03-05'),
    ('2026-03-10', '2026-03-15'),
    ('2026-04-10', '2026-04-12'),
    ('2026-04-15', '2026-04-20'),
    ('2026-05-05', '2026-05-10'),
    ('2026-05-20', '2026-05-25'),
    ('2026-06-01', '2026-06-07'),
    ('2026-06-10', '2026-06-15');





INSERT INTO Prenotazione 
    (id_utente, id_alloggio, id_periodo, stato, prezzo_totale, data_prenotazione, numero_ospiti, totale_notti) VALUES 
     
    -- prenotazioni utente 1 (Mario Rossi)
    (1, 1, 1, 'confermata', 80*5, '2026-01-25', 2, 5),
    (1, 2, 3, 'confermata', 120*4, '2026-02-20', 3, 4),
     
    -- prenotazioni utente 2 (Giulia Bianchi)
    (2, 3, 2, 'confermata', 60*6, '2026-01-28', 1, 6),
    (2, 4, 4, 'confermata', 90*6, '2026-02-25', 2, 6),
    
    -- prenotazioni utente 3 (Luca Verdi)
    (3, 5, 5, 'confermata', 70*2, '2026-03-20', 2, 2),
    (3, 6, 6, 'cancellata', 75*5, '2026-04-01', 2, 5),
    
     -- prenotazioni utente 4 (Sara Neri)
    (4, 7, 7, 'confermata', 85*5, '2026-04-10', 3, 5),
     (4, 8, 8, 'confermata', 95*6, '2026-05-01', 2, 6),
    
    -- prenotazioni utente 5 (Elena Russo)
    (5, 9, 1, 'confermata', 65*5, '2026-01-15', 1, 5),
    (5, 10, 2, 'confermata', 80*6, '2026-02-01', 2, 6),
    
    -- prenotazioni utente 6 (Davide Conti)
    (6, 11, 3, 'confermata', 110*4, '2026-02-18', 3, 4),
    (6, 12, 4, 'confermata', 70*6, '2026-03-01', 1, 6),
    
    -- prenotazioni utente 7 (Chiara Ferrari)
    (7, 1, 5, 'confermata', 80*2, '2026-04-01', 2, 2),
       (7, 2, 6, 'cancellata', 120*5, '2026-04-15', 3, 5),
    
    -- prenotazioni utente 8 (Marco Gallo)
    (8, 3, 7, 'confermata', 60*5, '2026-05-01', 1, 5),
    (8, 4, 8, 'confermata', 90*6, '2026-05-10', 2, 6);
