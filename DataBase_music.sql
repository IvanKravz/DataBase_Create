create table music_genres (
	genre_id SERIAL primary key,
	name VARCHAR(60) not NULL
);

create table artists (
	artist_id SERIAL primary key,
	name VARCHAR(60) not NULL
);

create table albums (
	albums_id SERIAL primary key,
	name VARCHAR(60) not null,
	Year_release DATE not null 
);

create table tracks (
	tracks_id SERIAL primary key,
	albums_id INTEGER references albums(albums_id),
	name VARCHAR(60) not null,
	duration time not null
);

create table music_collection (
	collection_id SERIAL primary key,
	name VARCHAR(60) not null,
	Year_release DATE not null
);

create table artists_music_genres (
	id SERIAL primary key,
	artist_id INTEGER references artists(artist_id),
	genre_id INTEGER references music_genres(genre_id)
);

create table artists_albums (
	id SERIAL primary key,
	artist_id INTEGER references artists(artist_id),
	albums_id INTEGER references albums(albums_id)
);

create table collection_tracks (
	id SERIAL primary key,
	collection_id INTEGER references music_collection(collection_id),
	tracks_id INTEGER references tracks(tracks_id)
);

