$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

directors_database

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  result = []
  director = 0
  while director < source.length do
    result << source[director][:name]
    director+=1
  end
  result
end

def total_gross(source)
  grand_total = 0
  result = {}
  dir_index = 0
  director_array = list_of_directors(source)
  while dir_index < director_array.length do
    result[array[dir_index]] = directors_totals(source)
    dir_index+=1
  end
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  result
end

pp directors_database
