--
-- Файл сгенерирован с помощью SQLiteStudio v3.4.4 в Вт ноя 5 17:40:28 2024
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Автомобили
CREATE TABLE IF NOT EXISTS Автомобили ("Марка и Модель" TEXT, "Гос.Номер" TEXT, Механик TEXT, Местоположение TEXT REFERENCES Места (Место) ON DELETE NO ACTION ON UPDATE NO ACTION MATCH SIMPLE);
INSERT INTO Автомобили ("Марка и Модель", "Гос.Номер", Механик, Местоположение) VALUES ('Кон', '959', 'Графский', 'Ноябрьск');

-- Таблица: Места
CREATE TABLE IF NOT EXISTS Места (Место TEXT PRIMARY KEY);
INSERT INTO Места (Место) VALUES ('Ноябрьск');
INSERT INTO Места (Место) VALUES ('Мессояха');

-- Таблица: Сотрудники
CREATE TABLE IF NOT EXISTS Сотрудники (Фамилия TEXT PRIMARY KEY, "Имя Отчество" TEXT, СНИЛС TEXT, ВУ TEXT, "Дата ВУ" TEXT, "Табельный номер" TEXT, Местонахождение TEXT);
INSERT INTO Сотрудники (Фамилия, "Имя Отчество", СНИЛС, ВУ, "Дата ВУ", "Табельный номер", Местонахождение) VALUES ('Сатлыганов', 'Ильшат Ришатович', '125-00-00-00', '123123', '1488', '228', 'Ноябрьск');
INSERT INTO Сотрудники (Фамилия, "Имя Отчество", СНИЛС, ВУ, "Дата ВУ", "Табельный номер", Местонахождение) VALUES ('Ололош', 'Ололой Ололоевич', '123', '123', '13', '123', '123');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
