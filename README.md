# AppStract
Some R markdown code to webscrape article titles and abstracts from the most recent issue of whatever journals you'd like. It creates an HTML document (using the "readable" markdown theme) wherever the working directory on your machine is set, with the results for each journal stored in separate tables. The code itself might not be pretty, but it is (or should be) functional, maybe with some occassional errors due to server timeouts and the like. The code requires some upfront setup (and maybe a little trial-and-error) for each journal, but it should work consistently after that's done.

This script currently compiles titles and abstracts (with a bit of messy formatting in some cases) for the 3 top Political Science journals. The code runs a bit slow, each journal will take two minutes or so. If you have any suggestions on journals to include, let me know. You should be able to use the existing examples to add other journals yourself. I'll expand the list over time.

An example of the output is [here](https://billschultzphd.netlify.app/md/AppStract.html).
