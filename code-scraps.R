# Scrap code from rmarkdown

### GoogleVis version:

``` {r echo = FALSE, results = "asis"}
d1 <- data.frame(Activity = names(wtd01[6:10]), Rate = sapply(wtd01[6:10], mean))
d1$Activity <- gsub("reading..viewing","reading or viewing",d1$Activity)
d1$Activity <- gsub("\\."," ",d1$Activity)
M <- gvisColumnChart(d1,
                     options = list(title='Student Activity',
                                    vAxis="{format:'#,###%'}",
                                    legend = 'none'
                     ))
plot(M)
```