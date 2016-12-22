try(detach("package:SEO", unload=TRUE))
library(SEO)
library(shiny)
library(DT)
library(dygraphs)


shinyServer(function(input, output, session) {
  observeEvent(input$search, {
    if (input$domain != "" && input$keyword != "") {
      output$result <- renderText({
        SEO::get_position(input$domain, input$keyword)
      })
    }
  })
})

