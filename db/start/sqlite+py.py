# создание базы данных

import sqlite3

# db = sqlite3.connect('db/database.db') # метод коннект для создания базы db db3 sqlite sqlite3

with sqlite3.connect('db/database.db') as db:
	# pass
	# обьект класа курсор
	cursor = db.cursor()
	# null, integer, real, text, blob
	# query = """ CREATE TABLE IF NOT EXISTS expenses(id INTEGER, name TEXT) """
	query1 = """ INSERT INTO expenses (id, name) VALUES(1, 'Комуналка') """
	query2 = """ INSERT INTO expenses (name, id) VALUES('Бензин', 2) """
	query3 = """ INSERT INTO expenses VALUES(3, 'Интернет') """


	# будет бегать по базе и вносить изменения
	cursor.execute(query1)
	cursor.execute(query2)
	cursor.execute(query3)

	db.commit()





# db.close()

 