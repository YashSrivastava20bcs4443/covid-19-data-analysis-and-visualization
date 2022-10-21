# covid-19-data-analysis-and-visualization

The goal of our project is to create a MATLAB program that processes and visualizes COVID-19 pandemic data. Once you load it, you will get a single variable called covid_data that is a large cell array. Each data cell for a given country and date contains a 2-element vector of doubles: the first element is the cumulative case count, while the second is the cumulative number of deaths.

Our program converts this data into a set of objects: one object per country and state. States should be contained by their countries. Countries could be stored in a vector of country objects in the app itself. Another way is to create an instance of the same class we use for countries and states, call it global, and have it store all the countries. The app would then contain the single global object as a property. This option would create a 3-level hierarchy: the global object stores data for the entire world and a vector of country objects, while the objects of countries that have states in the database would store their corresponding states. Again, we can use the same class definition for all three kinds of objects because they store essentially the same kind of data.


Craeted by:
YASH SRIVASTAVA || 
KHWAHISH AGARWAL || 
YOGESH GELHOT || 
SWETA NEGI 

![preview img](/preview.png)
