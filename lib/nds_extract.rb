require 'directors_database'
require "pry"
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
pp directors_database

def directors_totals(nds)
 directors_index = 0 
  grand_total = {} 
  while directors_index < nds.length do
      directors_name = nds[directors_index][:name]
      grand_total[directors_name] = 0  
      movies = nds[directors_index][:movies]
      movies_index = 0 
    while movies_index < movies.length do
     grand_total[directors_name] += movies[movies_index][:worldwide_gross]
      movies_index += 1
    end
    directors_index += 1
  end

  return grand_total

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
 def gross_for_director(director_data)
  movies_index = 0 
  worldwide_grosses = 0
  #binding.pry
  while movies_index < director_data[:movies].length do 
    directors_total = director_data[:movies][movies_index][:worldwide_gross]
    worldwide_grosses += directors_total
  movies_index +=1
  end
  return worldwide_grosses
end
