import mysql.connector
from mysql.connector import error

def create_database(hostname,user,password,dbname):
	try:
		connection = mysql.connector.connect(
			host = hostname,
			username = user,
			password = your_password
		)

		if connection.isconnected():
			cursor = connection.cursor()
			val = f"CREATE DATABASE  IF NOT EXISTS {dbname}; "
			cursor.execute(val)
			print(f"Database {dbname} is created successfully or already exists!")
			cursor.close()
			connection.close()

	except error as e:
		print(f"Error:{e}")

create_database("localhost","root","123wed","alx_book_store")
