#UI.R
library(shiny)
library(shinydashboard)
census <- read.csv("census.csv")
ui <- dashboardPage(
  dashboardHeader(title = "Basic dashboard"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      #writing title
      titlePanel("Income Prediction"),
  
  sidebarLayout(
    sidebarPanel(
      #taking inputs using radiobuttons
      radioButtons("s", "Select X-axis:",
                   list("age"='a1', "workclass"='b1', "education_level"='c1',
                        "education.num"='d1',"marital.status"='e1',"occupation"="f1", "relationship"='g1',
                        "race"='h1', "sex"='i1', 
                        "capital.gain"='j1', "capital.loss"='k1', "hours.per.week"='l1',
                        "native.country"='m1', "income"='n1')),
      #taking input k using radiobuttons
      radioButtons("k", "Select Y-axis:",
                   list("age"='a2', "workclass"='b2', "education_level"='c2', "education.num"='d2',
                        "marital.status"='e2',"occupation"='f2', "relationship"='g2', 
                        "race"='h2', "sex"='i2', "capital.gain"='j2',
                        "capital.loss"='k2', "hours.per.week"='l2', 
                        "native.country"='m2', "income"='n2'))     
    ),
    
    #displaying the output plot
    mainPanel(
      plotOutput("displot")
    )
  )
)))