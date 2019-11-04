require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
pp directors_database

def directors_totals(nds)
  index = 0 
  movies = directors_database[0][:movies]
   while index < movies.length do
     puts movies[index][:title]
   index += 1
   end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
 def gross_for_director(director_data)
end
