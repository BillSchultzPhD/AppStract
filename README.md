# Overview
Some R markdown code to webscrape article titles and abstracts from the most recent issue of various academic journals. I was surprised that I couldn't find a tool like this that already exists, so I thought I'd try making one.

The code creates an HTML document (using the "readthedown" markdown theme from the "rmdformats" package) wherever the working directory on your machine is set, with the results for each journal in a separate table. I'm sure that the code itself is not optimal, but it is (or should be?) functional, as long as the HTML/CSS coding for these journal webpages is consistent over time. You may run into some occasional errors due to server timeouts and the like; just try running it again. Processing for each journal takes 30 seconds to a few minutes, so if you try to scrape all or many of the journals it could take some time to finish.

# Using AppStract
You need two files to use this tool (saved in the same folder on your computer): the R markdown document ("AppStract.Rmd") and the library script ("library.R"). The library script is something like a bibtex file. It generates a list, wherein each element is a nested list of 6 inputs needed to create a table of most-recent-abstracts for each journal. You can add new journals yourself by mimicking the current entries (see below).

USING THE TOOL: make sure you've installed all the packages in the "packages" code chunk, and then just indicate the codes for the journals you want in the "pickjournals" code chunk. Right now, it's set to scrape abstracts for Conservation Letters, Conservation Biology, the Journal of Peace Research, and the American Economic Review. Available journals and their codes are in the library file. But they're just acronyms of a journal's title. E.g., the American Political Science Review is "APSR." The only exception is Econometrica, which I gave the code "EA."

ADDING JOURNALS TO THE LIBRARY: You need six things. (1) A url for the "most recent" or "current issue" webpage for the journal. (2) The root url for articles. (3) Character strings that can be used (via regular expressions) to select out entries you don't want (e.g., book reviews). The default is "NULL," meaning no restrictions. (4, 5) CSS selectors to identify the title and abstract from the website's CSS source code. (6) And the journal's name. Finding good CSS selectors is the trickiest part, and requires a little trial and error. Right now, the code only works for journals that have a fixed "current issue" page, but I'll eventually add functionality for other journals.

I've already added options for some well-known journals in political science, economics, environmental research, and sociology. I occasionally add others on my own, but let me know if you have suggestions.

This is still a work in process. I'm sure it could use plenty of fine tuning.
