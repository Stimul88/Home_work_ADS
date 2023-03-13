create table if not exists genre (
	genre_id serial primary key,
	genre_name VARCHAR (15) UNIQUE not null
);




create table if not exists artiste (
	artiste_id serial primary key,
	artiste_name VARCHAR (60) unique not null
);



create table if not exists album (
	album_id serial primary key,
	album_name VARCHAR (60) UNIQUE not null,
	year NUMERIC not null
);

create table if not exists track (
	track_id serial primary key,
	track_name VARCHAR (60) not null,
	time INTEGER not null,
	album_id INTEGER REFERENCES album(album_id)
);



create table if not exists collection (
	collection_id serial primary key,
	collection_name VARCHAR (60) not null,
	year NUMERIC not null
	
);


create table if not exists artiste_album (
	artiste_id INTEGER references Artiste(artiste_id),
	album_id INTEGER references Album(album_id),
	constraint rk primary key (artiste_id, album_id)
);


create table if not exists genre_artiste (
	genre_id INTEGER references Genre(genre_id),
	artiste_id INTEGER references Artiste(artiste_id),
	constraint pk primary key (genre_id, artiste_id)
);


create table if not exists collection_track (
	track_id INTEGER NOT NULL REFERENCES Track(track_id),
	collection_id INTEGER references Collection(collection_id),
	constraint mk primary key (track_id, collection_id)
);