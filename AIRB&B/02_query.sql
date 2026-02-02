   # "join" per collegare il nome e cognome dell'utente al prezzo totale della loro 
   # prenotazione:

    select utente.nome,utente.cognome,prenotazione.prezzo_totale
    from utente
    join prenotazione on utente.id_utente = prenotazione.id_utente;




   # "left join" per mostrare tutti gli utenti e lo stato delle loro prenotazioni, se 
   # esistente, associando dunque la tabella di sinistra con quella di destra:

    select utente.nome,utente.cognome,prenotazione.stato
    from utente
    left join prenotazione on prenotazione.id_utente =
    utente.id_utente;




   # "right join" per associare la tabella di destra con quella di sinistra, s'è possibile, in 
   # questo caso si associa la tabella delle prenotazioni con quella degli alloggi per 
   # mostrare, in questo caso, il totale di notti prenotate in quel determinato alloggio ed il 
   # prezzo totale:

    select prenotazione.totale_notti,prenotazione.prezzo_totale,alloggio.indirizzo,alloggio.città
    from prenotazione 
    right join alloggio on alloggio.id_alloggio = prenotazione.id_alloggio;




    # "join a cascata" che permette di associare i dati di più tabelle, in questo caso per 
    # associare e mostrare le corrispondenze tra la tabella utente, alloggio e prenotazione e 
    # fornire delle informazioni utili generali della prenotazione:

    select utente.nome,utente.cognome,alloggio.indirizzo,alloggio.città,prenotazione.stato,prenotazione.totale_notti
    from utente
    join prenotazione on prenotazione.id_utente = utente.id_utente
    join alloggio on alloggio.id_alloggio = prenotazione.id_alloggio;




    # "theta join" con "where" e > per filtrare solo le prenotazioni con una durata
    # maggiore a tre notti:

    select alloggio.indirizzo,alloggio.città,prenotazione.totale_notti
    from alloggio
    join prenotazione on prenotazione.id_alloggio = alloggio.id_alloggio
    where prenotazione.totale_notti > 3;




    # "theta join" con "and" e >= per associare la tabella alloggio con quella delle     
    # prenotazioni e filtrare soltanto le prenotazioni dove il numero di ospiti è maggiore o
    # uguale a due:

    select alloggio.indirizzo,alloggio.città,prenotazione.prezzo_totale,prenotazione.numero_ospiti
    from alloggio
    join prenotazione on prenotazione.id_alloggio = alloggio.id_alloggio
    and prenotazione.numero_ospiti >= 2;