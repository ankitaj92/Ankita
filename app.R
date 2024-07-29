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

#SERVER.R
library(shiny)

#writing Server function
shinyServer(function(input, output) {
  
  output$displot <- renderPlot({
    if(input$s=='a1') { i<-1 }
    if(input$s=='b1') { i<-2 }
    if(input$s=='c1') { i<-3 }
    if(input$s=='d1') { i<-4 }
    if(input$s=='e1') { i<-5 }
    if(input$s=='f1') { i<-6 }
    if(input$s=='g1') { i<-7 }
    if(input$s=='h1') { i<-8 }
    if(input$s=='i1') { i<-9 }
    if(input$s=='j1') { i<-10 }
    if(input$s=='k1') { i<-11 }
    if(input$s=='l1') { i<-12 }
    if(input$s=='m1') { i<-13 }
    if(input$s=='n1') { i<-14 }
    if(input$k=='a2') { j<-1 }
    if(input$k=='b2') { j<-2 }
    if(input$k=='c2') { j<-3 }
    if(input$k=='d2') { j<-4 }
    if(input$k=='e2') { j<-5 }
    if(input$k=='f2') { j<-6 }
    if(input$k=='g2') { j<-7 }
    if(input$k=='h2') { j<-8 }
    if(input$k=='i2') { j<-9 }
    if(input$k=='j2') { j<-10 }
    if(input$k=='k2') { j<-11 }
    if(input$k=='l2') { j<-12 }
    if(input$k=='m2') { j<-13 }
    if(input$k=='n2') { i<-14 }
    #read data
    census <- read.csv("census.csv")
    X    <- census[, i]
    Y    <- census[, j]
    
  plot(X,Y, col="blue")
  })
})

# Run the application 
shinyApp(ui = UI, server = Server)