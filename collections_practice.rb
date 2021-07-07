# your code goes here
def begins_with_r(array)
  !array.any? do |word|
    !word.start_with?("r")
  end 
end
def contain_a(array)
  array.select do |word|
    word.include?("a")
  end 
end 
def first_wa(array)
  a = array.join("-")
  b = a.split("-")
  array[b.find_index(b.find do |word|
    word.start_with?("wa")
  end)]
end
def remove_non_strings(array)
  array.delete_if do |word|
    !word.is_a?(String)
  end 
end
def count_elements(array)
  hash = {}
  array.each do |x|
    hash[x] = array.count(x) 
  end 
  hash.collect do |k, v|
    k[:count] = v
    k
  end 
end 
def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |person_stats|
      person_stats[(name_hash.values).join].each do |k, v|
        name_hash[k] = v 
      end
    end 
  end
  keys
end 
def find_cool(cool_hash)
  arr = []
  cool_hash.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        arr << hash 
      end 
    end 
  end 
  arr
end 
def organize_schools(schools)
  organized_hash = {}
  schools.each do |school, data|
    data.each do |key, location|
      if (organized_hash.keys).include?(location)
      organized_hash[location] << school 
      else 
      organized_hash[location] = [school]
      end 
    end 
  end 
  organized_hash
end 