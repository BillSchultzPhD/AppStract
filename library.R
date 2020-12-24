

l <-  list( 
  
  list( "https://www.mitpressjournals.org/toc/glep/current" , #latest issue
        "https://www.mitpressjournals.org/doi/abs/10.1162/" , #article url
        c("notes-from-the-editors") , #restrict results
        ".chaptertitle" , #CSS pattern to find title
        ".abstractSection.abstractInFull" , #CSS pattern to find abstract
        "Global Environmental Politics") , #what title to display?
  
  list( "https://onlinelibrary.wiley.com/toc/15206688/current" , 
        "https://onlinelibrary.wiley.com/doi/10.1002/" , 
        c("NULL") , 
        ".citation__title" , 
        ".abstract-group" , 
        "Journal of Policy Analysis and Management" ) ,
  
  list( "https://www.cambridge.org/core/journals/american-political-science-review/latest-issue" , 
        "https://www.cambridge.org/core/journals/american-political-science-review/article/" , 
        c("notes-from-the-editors") , 
        ".heading_08" , 
        ".abstract" , 
        "American Political Science Review" ) ,
  
  list( "https://onlinelibrary.wiley.com/toc/15405907/current" , 
        "https://onlinelibrary.wiley.com/doi/abs/" , 
        c("NULL") , 
        ".citation__title" , 
        ".abstract-group" , 
        "American Journal of Political Science" ) ,
  
  list( "https://www.journals.uchicago.edu/toc/jop/current" , 
        "https://www.journals.uchicago.edu/doi/10.1086/" , 
        c("NULL") , 
        ".citation__title" , 
        ".hlFld-Abstract" , 
        "Journal of Politics" ) ,
  
  list( "https://www.cambridge.org/core/journals/international-organization/latest-issue" , 
        "https://www.cambridge.org/core/journals/international-organization/article/" , 
        c("NULL") , 
        ".article-title" , 
        ".abstract" , 
        "International Organization" ) ,
  
  list( "https://www.cambridge.org/core/journals/world-politics/latest-issue" , 
        "https://www.cambridge.org/core/journals/world-politics/article/" , 
        c("NULL") , 
        ".heading_08" , 
        ".abstract" , 
        "World Politics" ) ,
  
  list( "https://journals.sagepub.com/toc/CPS/current" , 
        "https://journals.sagepub.com/doi/full/10.1177/" , 
        c("NULL") , 
        ".art_title" , 
        ".hlFld-Abstract" , 
        "Comparative Political Studies" ) ,
  
  list( "https://www.cambridge.org/core/journals/political-analysis/latest-issue" , 
        "https://www.cambridge.org/core/journals/political-analysis/article/" , 
        c("NULL") , 
        ".heading_08" , 
        ".abstract" , 
        "Political Analysis" ) ,
  
  list( "https://journals.sagepub.com/toc/JTP/current" , 
        "https://journals.sagepub.com/doi/full/10.1177/" , 
        c("NULL") , 
        ".art_title", 
        ".abstractSection.abstractInFull" , 
        "Journal of Theoretical Politics" ) ,
  
  list( "https://www.journals.uchicago.edu/toc/ajs/current" , 
        "https://www.journals.uchicago.edu/doi/10.1086/" , 
        c("NULL") , 
        ".citation__title", 
        ".abstractSection.abstractInFull" , 
        "American Journal of Sociology" ) ,
  
  list( "https://journals.sagepub.com/toc/asra/current" , 
        "https://journals.sagepub.com/doi/full/10.1177/" , 
        c("NULL") , 
        ".art_title", 
        ".abstractSection.abstractInFull" , 
        "American Sociological Review" ) ,
  
  list( "https://spssi.onlinelibrary.wiley.com/toc/17512409/current" , 
        "https://spssi.onlinelibrary.wiley.com/doi/10.1111/" , 
        c("NULL") , 
        ".citation__title", 
        ".article-section__content.en.main" , 
        "Social Issues and Policy Review" ) ,
  
  list( "https://www.cambridge.org/core/journals/british-journal-of-political-science/latest-issue" , 
        "https://www.cambridge.org/core/journals/british-journal-of-political-science/article/" , 
        c("NULL") , 
        ".heading_08", 
        ".abstract" , 
        "British Journal of Political Science" ) ,
  
  list( "https://www.mitpressjournals.org/toc/rest/current" , 
        "https://www.mitpressjournals.org/doi/abs/10.1162/" , 
        c("NULL") , 
        ".hlFld-Title", 
        ".abstractSection.abstractInFull" , 
        "Review of Economics and Statistics" ) ,
  
  list( "https://onlinelibrary.wiley.com/toc/14680262/current" , 
        "https://onlinelibrary.wiley.com/doi/10.3982/" , 
        c("NULL") , 
        ".citation__title", 
        ".article-section__content.en.main" , 
        "Econometrica" ) ,
  
  list( "https://conbio.onlinelibrary.wiley.com/toc/1755263x/current" , 
        "https://conbio.onlinelibrary.wiley.com/doi/10.1111/" , 
        c("NULL") , 
        ".citation__title", 
        ".abstract-group" , 
        "Conservation Letters" ) , 
  
  list( "https://conbio.onlinelibrary.wiley.com/toc/15231739/current" , 
        "https://conbio.onlinelibrary.wiley.com/doi/10.1111/" , 
        c("NULL") , 
        ".citation__title", 
        ".article-section__content.en.main" , 
        "Conservation Biology" ) ,
  
  list( "https://journals.sagepub.com/toc/JPR/current" , 
        "https://journals.sagepub.com/doi/full/10.1177/" , 
        c("NULL") , 
        ".art_title", 
        ".hlFld-Abstract" , 
        "Journal of Peace Research" ) ,
  
  list( "https://www.aeaweb.org/journals/aer/search-results?ArticleSearch%5Bcurrent%5D=1&JelClass%5Bvalue%5D=0&journal=1&ArticleSearch%5Bq%5D=" , 
        "https://www.aeaweb.org/articles" , 
        c("NULL") , 
        ".title", 
        ".article-information.abstract" , 
        "American Economic Review" )
  
  )

names(l) <- c( "GEP", "JPAM", "APSR", "AJPS", "JOP",
              "IO" , "WP" , "CPS" , "PA" , "JTP", "AJS",
              "ASR" , "SIPR" , "BJPS" , "RES" , "EA" , 
              "CL" , "CB" , "JPR" , "AER" )
