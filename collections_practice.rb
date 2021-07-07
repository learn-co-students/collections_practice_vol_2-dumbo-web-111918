def begins_with_r(array)
    r_array = []
    array.each do |word| 
      if word[0] == "r" 
        r_array << word 
      end
    end
    
    if r_array.length == array.length 
      return true 
    else
      return false 
    end
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w" && word[1] == "a"
      return word 
    end
  end
end

def contain_a 
end

def contain_a(array)
  a_words = []
  array.each do |word| 
    if word.include? "a"
      a_words << word 
    end
  end
  return a_words 
end

def remove_non_strings(array)
  array.delete_if do |element| !(element.is_a? String) 
  end
  array 
end


def count_elements(arr) 
arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end

def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes
 end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each { |k,v| cool_hashes << hash if k == :temperature && v == "cool"}
  end
  cool_hashes
end

def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end 




