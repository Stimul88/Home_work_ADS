INSERT INTO genre(genre_name) 
VALUES('Хаус'),('Поп'),('R&B'),('Рок'),('Рок-н-Ролл');


INSERT INTO artiste(artiste_name) 
VALUES('Иванушки'),('Руки вверх'),('Ария'),('Король и Шут'),
('David Guetta'),('Элвис Пресли'),('Avicii'),('Rihanna');


-- Альбомы Иванушки

INSERT INTO album(album_name, year) 
VALUES('Тополиный пух', 2010);

-- Альбомы Руки вверх

INSERT INTO album(album_name, year) 
VALUES('Сделай ещё громче!', 1998);


-- Альбомы Ария

INSERT INTO album(album_name, year) 
VALUES('ИГРА С ОГНЁМ', 1989);

-- Альбомы Король и Шут

INSERT INTO album(album_name, year) 
VALUES('Продавец кошмаров', 2006);

-- Альбомы David Guetta

INSERT INTO album(album_name, year) 
VALUES('Silver Screen', 2022);

-- Альбомы Элвис Пресли

INSERT INTO album(album_name, year) 
VALUES('Las Vegas Hilton Presents Elvis', 1972);

-- Альбомы Avicii

INSERT INTO album(album_name, year) 
VALUES('Live A Life You Will Remember', 2021);

-- Альбомы Rihanna

INSERT INTO album(album_name, year) 
VALUES('Love On The Brain Dance Remixes', 2016);



-- Песни в альбоме "Тополиный пух" Иванушки


INSERT INTO track(track_name, time, album_id)
VALUES('Тучи','251', '1'),('Кукла','317','1');


-- Песни в альбоме "Сделай ещё громче!" Руки вверх


INSERT INTO track(track_name, time, album_id)
VALUES('Джимми Remix','233', '2'),('Club Disco','273','2'),('Пропадаешь зря','252','2');

-- Песни в альбоме "ИГРА С ОГНЁМ" Ария

INSERT INTO track(track_name, time, album_id)
VALUES('Игра с огнём','540','3'),('Что вы сделали с вашей мечтой?','318','3');



-- Песни в альбоме "Продавец кошмаров" Король и Шут

INSERT INTO track(track_name, time, album_id)
VALUES('Марионетки','216','4'),('Маска','284','4');


-- Песни в альбоме "Silver Screen" David Guetta

INSERT INTO track(track_name, time, album_id)
VALUES('Silver Screen (Shower Scene)','144','5'),('Silver Screen (Shower Scene)Club Mix','195','5');


-- Песни в альбоме "Las Vegas Hilton Presents Elvis" Элвис Пресли

INSERT INTO track(track_name, time, album_id)
VALUES('Also Sprach Zarathustra','79','6'),('See See Rider Las Vegas Hilton','171','6');


-- Песни в альбоме "Live A Life You Will Remember" Avicii

INSERT INTO track(track_name, time, album_id)
VALUES('The Nights','176','7'),('Wake Me Up','246','7');



-- Песни в альбоме "Love On The Brain Dance Remixes" Rihanna

INSERT INTO track(track_name, time, album_id)
VALUES('Don Diablo Remix','208','8'),('RY X Remix','217','8');




INSERT INTO collection(collection_name, year) 
VALUES('Сборник 1', '2016'),('Сборник 2', '2017'),('Сборник 3', '2018'),('Сборник 4', '2019'),('Сборник 5', '2020'),('Сборник 6', '2021'),('Сборник 7', '2022'),('Сборник 8', '2023');



INSERT INTO genre_artiste(genre_id, artiste_id) 
VALUES(1,5),(1,7),(1,2),(2,1),(2,2),(2,8),(3,8),(4,3),(4,4),(4,7),(5,6);



INSERT INTO artiste_album(artiste_id , album_id) 
VALUES(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);


INSERT INTO collection_track(track_id, collection_id) 
VALUES(1,1),(1,5),(1,7),(2,1),(2,4),(2,8),(3,2),(10,3),(4,8),(4,7),(15,4),(14,5),(5,7),(12,6),(7,8),(7,7);

