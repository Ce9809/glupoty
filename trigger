CREATE TABLE Uczen (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    ocena INT
);


DELIMITER $$

CREATE TRIGGER przed_wstawieniem_uczen
BEFORE INSERT ON Uczen
FOR EACH ROW
BEGIN
    SET NEW.ocena = FLOOR(1 + RAND() * 6);
END$$

DELIMITER ;

INSERT INTO Uczen (imie, nazwisko) VALUES
('Jan', 'Kowalski'),
('Anna', 'Nowak'),
('Piotr', 'Wiśniewski'),
('Maria', 'Zielińska');
