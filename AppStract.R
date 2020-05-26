
##############
############## Packages
##############

#install.packages("Rcrawler")
library(Rcrawler)
#install.packages("tidyverse)
library(tidyverse)
#install.packages("xlsx")
library(xlsx)

##############
############## Function
##############

#######
####### Cpen function
#######

AppStract <- function() {
  
#######
####### APSR (Initial Output)
#######
  
# setup
latest_issue_url <- "https://www.cambridge.org/core/journals/american-political-science-review/latest-issue"
article_url <- "https://www.cambridge.org/core/journals/american-political-science-review/article/"

internal_links <- Rcrawler::LinkExtractor(url = latest_issue_url)$InternalLinks

# select only articles and not other internal links on page
internal_links <- internal_links[grepl(article_url, internal_links)]

# get rid of things that aren't research articles
# number of exclusions needed here may vary depending on journal
internal_links <- internal_links[!(grepl("notes-from-the-editors", internal_links ))]

# titles
# use "inspect source" on one of the article pages to find a useful "class"
# in the HTML code that stores the article's title
titles <- internal_links %>%
  
  purrr::map(~{
    
    unlist(ContentScraper(Url = .x, CssPatterns = ".article-title"))
    
  }) %>% 
  
  unlist()

# abstracts
# use "inspect source" on one of the article pages to find a useful "class"
# in the HTML code that stores the article's abstract
abstext <- internal_links %>%
  
  purrr::map(~{
    
    unlist(ContentScraper(Url = .x, CssPatterns = ".abstract"))
    
  }) %>% 
  
  unlist()

# initial output
out <- cbind(titles,abstext)
write.xlsx(out,
           "AppStract Output.xlsx",
           sheetName = "APSR")

#######
####### AJPS (Appended onto initial)
#######

# setup
latest_issue_url <- "https://onlinelibrary.wiley.com/toc/15405907/current"
article_url <- "https://onlinelibrary.wiley.com/doi/abs/"

internal_links <- Rcrawler::LinkExtractor(url = latest_issue_url)$InternalLinks

# select only articles and not other internal links on page
# no extra exlucsions needed for AJPS
internal_links <- internal_links[grepl(article_url, internal_links)]

# titles
# use "inspect source" on one of the article pages to find a useful "class"
# in the HTML code that stores the article's title
titles <- internal_links %>%
  
  purrr::map(~{
    
    unlist(ContentScraper(Url = .x, CssPatterns = ".citation__title"))
    
  }) %>% 
  
  unlist()

# abstracts
# use "inspect source" on one of the article pages to find a useful "class"
# in the HTML code that stores the article's abstract
abstext <- internal_links %>%
  
  purrr::map(~{
    
    unlist(ContentScraper(Url = .x, CssPatterns = ".abstract-group"))
    
  }) %>% 
  
  unlist()

out <- cbind(titles,abstext)
write.xlsx(out,
           "AppStract Output.xlsx",
           sheetName = "AJPS",
           append=TRUE)

#######
####### JOP (Appended onto initial)
#######

# setup
latest_issue_url <- "https://www.journals.uchicago.edu/toc/jop/current"
article_url <- "https://www.journals.uchicago.edu/doi/abs/"

internal_links <- Rcrawler::LinkExtractor(url = latest_issue_url)$InternalLinks

# select only articles and not other internal links on page
# no extra exlucsions needed for JOP
internal_links <- internal_links[grepl(article_url, internal_links)]

# titles
# use "inspect source" on one of the article pages to find a useful "class"
# in the HTML code that stores the article's title
titles <- internal_links %>%
  
  purrr::map(~{
    
    unlist(ContentScraper(Url = .x, CssPatterns = ".publicationContentTitle"))
    
  }) %>% 
  
  unlist()

# abstracts
# use "inspect source" on one of the article pages to find a useful "class"
# in the HTML code that stores the article's abstract
abstext <- internal_links %>%
  
  purrr::map(~{
    
    unlist(ContentScraper(Url = .x, CssPatterns = ".hlFld-Abstract"))
    
  }) %>% 
  
  unlist()

out <- cbind(titles,abstext)
write.xlsx(out,
           "AppStract Output.xlsx",
           sheetName = "JOP",
           append=TRUE)

#######
####### Close function
#######

}

##############
############## Use function
##############

AppStract()

