library(RecordLinkage)

shinyServer(function(input, output) {
  
  

    
  
  output$text <- renderText({
    x<-(levenshteinSim(input$first, input$second))*100
    if(input$submit > 0) {
      paste("The word",input$first,"and",input$second,"are similar from", x,"%")
    }
  })
  

})

