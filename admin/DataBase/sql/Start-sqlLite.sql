1.
https://www.sqlite.org/download.html
скачиваем длл Precompiled Binaries и тулзу
распаковываем в одну директорию длл и sqlite3.exe

2. запускаем екзешник
.open r_user.db
каждая бд хранится в отдельном файле и в нем можно хранить много таблиц
всегда начинай работу с єтой строки иначе дата не сохранится на харде, а останется в озу до выгрузки
.help
.quit


структура базы
	r_users
	-------
CREATE TABLE r_user(
	id INTEGER PRIMARY KEY AUTOINCREMENT, -- должно быть ключевым
	name VARCHAR(50),
	phone VARCHAR(50)
);

список таблиц
.tables

схема таблицы
.schema r_user

хранится в двоичном виде

3. добавим несколько записей в базу

INSERT INTO r_users (name, phone)
	VALUES ('Roman', '+3983427');
INSERT INTO r_users (name, phone)
	VALUES ('Lana', '+3289323');
INSERT INTO r_users (name, phone)
	VALUES ('Lara', '+92839283');
INSERT INTO r_users (name, phone)
	VALUES ('Klara', '+93848923');
INSERT INTO r_users (name, phone)
	VALUES ('Matvey', '+1084131');
INSERT INTO r_users (name, phone)
	VALUES ('Olga', '+39594829');

вывод формата простая таблица
SELECT * FROM r_users;

вывод формата столбец = значение
.mode line
SELECT * FROM r_users;

.mode column таблица с колонками
SELECT * FROM r_users;

.headers on заголовки столбцов

.width 2 8 12 ширина стовбців


4. 
