import mysql.connector
from mysql.connector import error

def database_name(dbname):
	try:
		connection = mysql.connector.connect(
			host = "localhost",
			username = "root",
			password = "yourpassword",
			database = dbname
		)

		if connection.isconnected():
			cursor = connection.cursor()
			cursor.execute("DESC Books;")
			cursor.execute("Select * from Books;")
			sho = cursor.fetchall()
			for row in show:
				print row
			cursor.close()
			connection.close()

	except error as e:
		print(f"Error:{e}")

database_name("alx_book_store")
