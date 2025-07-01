library(bookdown)
source("rmarkdown/config.R")
# render_book( "index.Rmd", pdf_book())

unlink("docs", recursive = TRUE)

render_book("rmarkdown", bookdown::gitbook(split_by = "chapter", 
                                           self_contained = FALSE, 
                                           config = list(sharing = NULL, 
                                                         toc = list(collapse = "section"))),
            output_dir = "../docs" # relative to source folder
            )

browseURL("docs/index.html")
