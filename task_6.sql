import mysql.connector 
connection = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "your_password",
    database = "alx_book_store"
) 
cursor = connection.cursor() 
sql = "INSERT INTO customers (customer_id,customer_name,email,address) VALUES(%s,%s,%s,%s),(%s,%s,%s,%s),(%s,%s,%s,%s)" 
val =[(
    2,
    "Blessing Malik",
    "bmalik@sandtech.com",
    "124 Happiness Ave"
),(
    3,
    "Obed Ehoneah",
    "eobed@sandtech.com",
    "125 Happiness Ave"
),(
    4,
    "Nehemial Kamolu",
    "nkamolu@sandtech.com",
    "126 Happiness Ave"
)]
cursor.execute(sql, val) 
cursor.commit() 
print(mycursor.rowcount, "record(s) inserted.") 
cursor.close() 
connection.close()
