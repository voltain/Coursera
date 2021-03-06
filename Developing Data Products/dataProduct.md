Word Similarity with Levenshtein Distance
========================================================
author: Michael Brabec
date: October 25th, 2015

Introduction
========================================================

This presentation was created as short documentation of the project for coursera course *Developing Data Products*

The course was delivered by Brian Caffo, PhD, Jeff Leek, PhD, Roger D. Peng, PhD

Johns Hopkins Bloomberg School of Public Health


The Application - Objectives
========================================================

* Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
* Deploy the application on Rstudio's shiny server
* Share the application link by pasting it into the text box below
* Share your server.R and ui.R code on github

Levenshtein distance - Definition
========================================================
In information theory and computer science, the Levenshtein distance is a string metric for measuring the difference between two sequences. Informally, the Levenshtein distance between two words is the minimum number of single-character edits (i.e. insertions, deletions or substitutions) required to change one word into the other. It is named after Vladimir Levenshtein, who considered this distance in 1965.

Levenshtein distance may also be referred to as edit distance, although that may also denote a larger family of distance metrics. It is closely related to pairwise string alignments.

Example of Levenshtein distance
========================================================


```r
library(RecordLinkage)
first<-"wholemeal bread"
second<-"wholewheat bread"
x<-(levenshteinSim(first, second))*100
x
```

```
[1] 81.25
```
The script takes the first word and compares to the second one with function levenshteinSim and returns similarity in percentage.

Conclusion
========================================================
The working application is available on 

[https://voltain.shinyapps.io/dataProduct](https://voltain.shinyapps.io/dataProduct)



