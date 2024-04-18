#install.packages("RMariaDB")
library(RMariaDB)
con <- dbConnect(MariaDB(), 
                 dbname = "example_db", 
                 host = "localhost", 
                 user = "root", 
                 password = "", 
                 port = 3306)
