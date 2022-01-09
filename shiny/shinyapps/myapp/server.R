library(shiny)
library(RPostgreSQL)
library(DBI)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {


 driver <- dbDriver("PostgreSQL")
 # 
 # 
 con <- dbConnect(drv=driver,
                   dbname = "shiny",
                   host = Sys.getenv('DATABASE'),
                   port = 5432,
                   user = "user1",
                   password = "password1")
 # 
 # список схем
 database_list <- dbGetQuery(con, "SELECT datname FROM pg_database;")

   # # # список таблиц
   # list <- dbGetQuery(con,
   #            "SELECT table_name FROM information_schema.tables")


  # order_history <- dbGetQuery(con, "SELECT * FROM test_connection")

  output$text <- renderText({ database_list$datname[1] })

  # dbDisconnect(con)
})