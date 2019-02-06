###
# Keela - Donor Detection
# Maud Boucherit, Feb 2019
#
# url: https://maudboucherit.shinyapps.io/donor_detection/

# Packages
library(shiny)
library(dplyr)
library(randomForest)
library(gapminder)

# Load data
col_names <- c('age','workclass','fnlwgt','education','education-num','marital-status','occupation','relationship',
               'race','sex','capital-gain','capital-loss','hours-per-week','native-country','class')
data <- read.csv('data/adult.data', col.names = col_names, strip.white = TRUE, colClasses = c('integer', 'factor', 'integer', 'factor', 'integer', 'factor', 'factor', 'factor', 'factor', 'factor', 'integer', 'integer', 'integer', 'factor', 'factor'))
data[data == '?'] <- NA; data$fnlwgt <- NULL; data$education.num <- NULL
data <- data[complete.cases(data), ]; data$class <- NULL

load('data/model.rda')

# Define UI for application that draws a histogram
ui <- fluidPage(
   # Application title
   titlePanel("Donor Detection"),

   # Sidebar with a slider input for number of bins
   fluidRow(
     
     column(4,
            wellPanel(
              sliderInput("age", "Age:", min = 17, max = 90, value = 35),
              selectInput("workclass", "Workclass:", choices = levels(data$workclass)[2:9], selected = 'Private'),
              selectInput("education", "Education:", choices = levels(data$education), selected = 'HS-grad'),
              selectInput("marital.status", "Marital Status:", choices = levels(data$marital.status))
            )       
     ),
     column(4,
            wellPanel(
              h6(), br(),
              selectInput("occupation", "Occupation:", choices = levels(data$occupation)[2:15], selected = 'Craft-repair'),
              selectInput("relationship", "Relationship:", choices = levels(data$relationship)),
              selectInput("race", "Race:", choices = levels(data$race), selected = 'White'),
              selectInput("sex", "Sex:", choices = levels(data$sex), selected = 'Male')
            )       
     ),
     column(4,
            wellPanel(
              numericInput("capital.gain", "Capital Gain:", min = 0, max = 99999, value = 0),
              numericInput("capital.loss", "Capital Loss:", min = 0, max = 99999, value = 0),
              sliderInput("hours.per.week", "Hours per week:", min = 1, max = 99, value = 40),
              selectizeInput("native.country", "Native Country:", choices = levels(gapminder$country), selected = 'United States')
            )
     )
   ),
   
      # The go button to filter everything at once
      actionButton("go", "Predict"),
      
      br(), 
      h3("This person is more likely to earn:"),
      h1(textOutput('prediction'))
   
)

# Define server logic required to draw a histogram
server <- function(input, output) {

  ## New data from input
  new_data <- eventReactive(input$go, {
    data$native.country <- NULL
    data %>% rbind(c(input$age, input$workclass, input$education, input$marital.status, input$occupation, input$relationship, input$race, input$sex, input$capital.gain, input$capital.loss, input$hours.per.week))
  })
  
  output$prediction <- renderText({
    if (as.character(predict(rf, new_data() %>% tail(1))) == '>50K') {'more than $50,000 a year'}
    else{'less than $50,000 a year'}
  })
}

# Run the application
shinyApp(ui = ui, server = server)
