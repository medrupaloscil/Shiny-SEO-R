try(detach("package:SEO", unload=TRUE))
library(SEO)
library(shiny)
library(DT)
library(dygraphs)
library(shinyjs)
library(rhandsontable)

fluidPage(
  useShinyjs(), # on active shinyjs
  titlePanel("SEO 3000"),

  mainPanel(
    tabsetPanel(
      tabPanel("Home",
         sidebarLayout(
           sidebarPanel(
             textInput("domain", label = h3("Domain"), placeholder = "Ex: www.thinkr.fr/"),
             textInput("keyword", label = h3("Keyword"), placeholder = "Ex: thinkr"),
             actionButton("search", label = "Search")
           ),
           mainPanel(
             textOutput("result")
           )
         )
      ),
      tabPanel("Domains", plotOutput("summary"))
    )
  )
)






