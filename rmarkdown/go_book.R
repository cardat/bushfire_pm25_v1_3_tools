library(bookdown)

# render_book( "index.Rmd", pdf_book())

render_book("rmarkdown", bookdown::gitbook(split_by = "chapter", self_contained = FALSE, config = list(sharing = NULL, toc = list(collapse = "section"))) 
            )

unlink("docs", recursive = TRUE)
file.rename("rmarkdown/_book/", "docs/")

browseURL("docs/index.html")
