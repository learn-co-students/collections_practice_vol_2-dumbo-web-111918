# your code goes here
require "pry"

def begins_with_r(array)
  words_with_r = 0
  binding.pry
  all_begins_with_r = true
  binding.pry
  array.each do |word|
    words_with_r += 1 if word.split()[0] == "r" || word.split()[0] == "R"
    binding.pry
  end
  all_begins_with_r = words_with_r == array.size ? true : false
  binding.pry
  return all_begins_with_r
  binding.pry
end
