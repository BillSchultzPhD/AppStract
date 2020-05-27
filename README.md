# AppStract
Some R markdown code to webscrape article titles and abstracts from the most recent issue of whatever journals you'd like. It creates an HTML document (using the "readable" markdown theme) wherever the working directory on your machine is set, with the results for each journal stored in a separate table. The code itself may not be optimal, but it is (or should be) functional, as long as the HTML code for these journal webpages is consistent over time. You may run into some occassional errors due to server timeouts and the like. This code requires some upfront setup to add new journals, and maybe a little trial-and-error.

As is, this script currently compiles titles and abstracts for the most recent issues of the top 3 Political Science journals (APSR, AJPS, JOP). It runs a bit slow; each journal will take two minutes or so. If you have any suggestions on journals to include, let me know. You should be able to use the existing examples to add other journals yourself. I'll expand the list over time.

Keep in mind that this is still a work in process, I'm sure the results could still use a little fine tuning.
