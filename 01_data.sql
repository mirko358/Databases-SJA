 INSERT INTO concessionari (partita_iva, indirizzo, nome_proprietario) VALUES
    ('01234567890', 'Via Roma 10, Milano', 'Mario Rossi'),
    ('09876543210', 'Corso Italia 25, Torino', 'Luigi Bianchi'),
    ('11122233344', 'Viale Europa 5, Bologna', 'Giuseppe Verdi'),
    ('22233344455', 'Via Napoli 18, Napoli', 'Antonio Esposito'),
    ('33344455566', 'Piazza Duomo 3, Firenze', 'Francesco Neri'),
    ('44455566677', 'Via Garibaldi 40, Genova', 'Paolo Ferri'),
    ('55566677788', 'Corso Vittorio Emanuele 12, Roma', 'Stefano Conti'),
    ('66677788899', 'Via Libertà 90, Palermo', 'Salvatore Russo');


    INSERT INTO moto (targa, casa_produttrice, modello, cilindrata, anno_produzione, id_concessionario) VALUES
    ('AB123CD', 'Yamaha', 'MT-07', 689, 2021, 1),
    ('EF456GH', 'Honda', 'CB650R', 649, 2022, 2),
    ('IJ789KL', 'Ducati', 'Monster', 937, 2023, 3),
    ('MN012OP', 'Kawasaki', 'Z900', 948, 2021, 1),
    ('QR345ST', 'BMW', 'R 1250 GS', 1254, 2020, 2),
    ('UV678WX', 'Suzuki', 'SV650', 645, 2019, 3),
    ('YZ901AB', 'KTM', '390 Duke', 373, 2022, 1),
    ('CD234EF', 'Aprilia', 'RS 660', 659, 2023, 2),
    ('GH567IJ', 'Triumph', 'Street Triple', 765, 2021, 3),
    ('KL890MN', 'Moto Guzzi', 'V85 TT', 853, 2020, 1),
    ('OP123QR', 'Harley-Davidson', 'Iron 883', 883, 2019, 2),
    ('ST456UV', 'Benelli', 'TRK 502', 500, 2022, 3);


    INSERT INTO vendita (data_vendita, prezzo, id_concessionario, targa_moto) VALUES
    ('2023-01-15', 15000.00, 1, 'AB123CD'),
    ('2023-02-20', 12000.50, 2, 'EF456GH'),
    ('2023-03-05', 9500.00, 3, 'IJ789KL'),
    ('2023-03-22', 18000.75, 1, 'MN012OP'),
    ('2023-04-10', 22000.00, 2, 'QR345ST'),
    ('2023-04-18', 13500.25, 3, 'UV678WX'),
    ('2023-05-01', 17000.00, 1, 'YZ901AB'),
    ('2023-05-15', 14500.50, 2, 'CD234EF');