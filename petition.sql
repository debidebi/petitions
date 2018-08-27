DROP DATABASE IF EXISTS petition_app;
CREATE DATABASE petition_app;

\c petition_app;

CREATE TABLE petitions (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  body TEXT NOT NULL,
  signature_count INTEGER NOT NULL
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  petition_id INTEGER REFERENCES petitions(id),
  body TEXT NOT NULL
);

INSERT INTO petitions (title, body, signature_count)
  VALUES ('No meat in the cafeteria!', 'We should be eating healthier and more colorful lunches.', 3),
  ('Video games at recess!', 'Some of us dont want to go outside and play.', 12),
  ('Homework for teachers.', 'Why dont the teachers have worksheets??', 6);

INSERT INTO comments (petition_id, body)
  VALUES (1, 'But I like burgers!'),
  (1, 'Great idea!'),
  (1, 'Can we compromise here? Maybe a salad day'),
  (2, 'just play game boy bro'),
  (2, 'If we do that, then I wont have anyone to play with :('),
  (3, 'I dunno if we can do that...'),
  (3, 'YEAH!'),
  (3, 'What would we make them do?'),
  (3, '...teachers do have homework. they prep for class');
