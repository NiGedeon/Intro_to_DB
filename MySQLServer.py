import mysql.connector
from mysql.connector import error

def create_database(hostname,user,password):
	try:
		connection = mysql.connector.connect(
			host = hostname,
			username = user,
			password = your_password
		)

		if connection.isconnected():
			cursor = connection.cursor()
		
			cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
			print(f"Database alx_book_store is created successfully or already exists!")
			cursor.close()
			connection.close()

	except error as e:
		print(f"Error:{e}")

create_database("localhost","root","123wed")
