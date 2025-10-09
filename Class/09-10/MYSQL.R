library(RMySQL)
# Loads the RMySQL package, which provides the necessary functions 
# to connect R to a MySQL database.

mydb = dbConnect(MySQL(), user='root', password='dbda',
                 dbname='rdb', host='localhost')
# Establishes the connection to the MySQL database and assigns the connection 
# object to the variable 'mydb'.
# - MySQL(): Specifies the database driver.
# - user='root': Specifies the database username.
# - password='dbda': Specifies the user's password.
# - dbname='rdb': Specifies the name of the database to connect to.
# - host='localhost': Specifies the location of the database server.

dbListTables(mydb)
# Lists and returns the names of all tables available within the connected 
# database ('rdb').

dbListFields(mydb, 'emp')
# Lists and returns the names of all columns (fields) in the specified 
# table ('emp') within the connected database.

# 1. Saving in MySQLResult object
rs = dbSendQuery(mydb, "Select * from emp")
# Sends the SQL query ("Select * from emp") to the database using the 
# established connection ('mydb'). It DOES NOT retrieve the data yet, 
# but stores the result set metadata (the pointer to the results) in 
# the 'rs' (Result Set) object.

# 2. Fetching the data from MySQL result object
data = fetch(rs, n=-1)
# Retrieves the data from the result set ('rs').
# - n=-1: Instructs R to fetch ALL remaining rows from the result set.
# The retrieved data is stored in the 'data' variable (typically as a data frame).

# fetch enables us to retrieve data chunk by chunk
# n is for retrieving the data in chunks
# (Comment explaining the 'fetch' function's chunking capability.)

dbClearResult(rs)
# Clears the result set ('rs') on the database server. This is a crucial step 
# to free up database resources after fetching the data.

dbDisconnect(mydb)
# Closes the connection ('mydb') to the database server, releasing all 
# connection-related resources.

