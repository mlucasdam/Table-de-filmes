CREATE TABLE filmes (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (30) NOT NULL,
    duração TIME (6),
    diretor VARCHAR (30) NOT NULL,
    genero VARCHAR (30) NOT NULL
)

INSERT INTO filmes (titulo, duração, diretor, genero) VALUES ('Psicopata Americano', '01:42:00', 'Mary Harrom', 'Terror');
INSERT INTO filmes (titulo, duração, diretor, genero) VALUES ('Driver', '01:40:00', 'Nicolas Winding Refn', 'Drama');
INSERT INTO filmes (titulo, duração, diretor, genero) VALUES ('Clube da luta', '02:19:00' 'David Fincher', 'Suspense');
INSERT INTO filmes (titulo, duração, diretor, genero) VALUES ('Blade Runner 2049', '02:43:00', 'Denis Villeneuve', 'Ficção Cientifica');
INSERT INTO filmes (titulo, duração, diretor, genero) VALUES ('O abutre', '01:57:00', 'Dan Glory', 'Thriller');

ALTER TABLE filmes ADD lançamento INT NOT NULL AFTER genero;

UPDATE filmes SET lançamento = '2000' WHERE id = 1;
UPDATE filmes SET lançamento = '2011' WHERE id = 2;
UPDATE filmes SET lançamento = '1999' WHERE id = 3;
UPDATE filmes SET lançamento = '2017' WHERE id = 4;
UPDATE filmes SET lançamento = '2014' WHERE id = 5;

SELECT * FROM filmes ORDER BY lançamento DESC 
