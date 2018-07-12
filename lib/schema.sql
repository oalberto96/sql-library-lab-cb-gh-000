
CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  author_id INTEGER,
  subgenre_id INTEGER,
  title TEXT
);

CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
  name TEXT
);


CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  series_id INTEGER,
  title TEXT,
  year DATETIME
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  author_id INTEGER,
  series_id INTEGER,
  name TEXT,
  motto TEXT,
  species TEXT
);

CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  book_id INTEGER,
  character_id INTEGER
);
