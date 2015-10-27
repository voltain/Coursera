shinyUI(fluidPage(
  titlePanel("Word Similarity with Levenshtein Distance"),
  fluidRow(
    column(12, wellPanel(
      # Copy the line below to make a text input box
      textInput("first", label = "Enter the first word: ", value = "wholemeal bread"),
      textInput("second", label = "Enter the second word: ", value = "wholewheat bread"),
      actionButton("submit", "Compare")
    )),
    column(12,
           verbatimTextOutput("text")
    )    ,
    column(12,
           h2('Documentation'),
           p('In information theory and computer science, the Levenshtein distance is a metric for measuring the amount of difference between two sequences (i.e. an edit distance). The Levenshtein distance between two strings is defined as the minimum number of edits needed to transform one string into the other, with the allowable edit operations being insertion, deletion, or substitution of a single character.'),
           p('The script takes the first word and compares with another, based on their distance it calculates the percentage.'),
           p(' '),
           p('If you are interested in Levenshtein Disctance same as me, please look at my previous project about similarity of Slavic Languages:',a(href='http://www.michaelbrabec.com/slavic-words-similarity/','http://www.michaelbrabec.com/slavic-words-similarity/'))
           )
  )
))


