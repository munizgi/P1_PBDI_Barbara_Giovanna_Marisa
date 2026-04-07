
-- Enunciado 2 - Sobrevivência em função da classe social
DO $$
DECLARE
cur_sobrevivente REFCURSOR;
qtd_sobrevivente INT;
classe_sobrevivente INT;
contador INT := 0;
BEGIN 
    OPEN cur_sobrevivente FOR SELECT id_passageiro FROM titanic WHERE classep = 1;
    LOOP
        FETCH cur_sobrevivente INTO qtd_sobrevivente;
        contador := contador + 1;
        EXIT WHEN NOT FOUND;
    END LOOP;
    RAISE NOTICE 'A quantidade de sobreviventes é %', contador;
    CLOSE cur_sobrevivente;
END;
$$






-- Enunciado 1 - Base de dados e criação de tabela
CREATE TABLE titanic (
id_passageiro SERIAL PRIMARY KEY,
sobrevivente INT,
classep INT,
fare FLOAT,
generop CHAR (6), 
embarked CHAR(1)
);

SELECT * FROM titanic

