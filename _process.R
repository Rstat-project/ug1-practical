# change wd
#setwd(rstudioapi::getActiveProject())
#setwd("book")


# render a chapter or the whole book
browseURL(bookdown::render_book("index.Rmd"))
browseURL(bookdown::preview_chapter("appendix-c-githubclassroom.Rmd"))  ## change the file name in (" ")

# copies dir
#R.utils::copyDirectory(
#  from = "../docs",
#  to = "../inst/book", 
#  overwrite = TRUE, 
#  recursive = TRUE)

#unlink("../inst/book/.nojekyll")
#unlink("../docs/.nojekyll")
