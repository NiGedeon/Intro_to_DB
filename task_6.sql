import mysql.connector 
connection = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "your_password",
    database = "alx_book_store"
) 
cursor = connection.cursor() 
sql = "INSERT INTO customers (customer_id,customer_name,email,address) VALUES(%s,%s,%s,%s)" 
val1 =(
    2,
    "Blessing Malik",
    "bmalik@sandtech.com",
    "124 Happiness  Ave."
)
cursor.execute(sql,val1)
cursor.commit()
val2 =(
    3,
    "Obed Ehoneah",
    "eobed@sandtech.com",
    "125 Happiness  Ave."
)
cursor.execute(sql,val2)
cursor.commit()

val3 =(
    4,
    "Nehemial Kamolu",
    "nkamolu@sandtech.com",
    "126 Happiness  Ave."
)
cursor.execute(sql,val3) 
cursor.commit() 
print(mycursor.rowcount, "record(s) inserted.") 
cursor.close() 
connection.close()
