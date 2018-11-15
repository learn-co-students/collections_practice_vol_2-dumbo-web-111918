# your code goes here
require "pry"

# #contain_a
#   return all elements that contain the letter 'a' (FAILED - 1)
# #first_wa
#   Return the first element that begins with the letters 'wa' (FAILED - 2)
# #remove_non_strings
#   remove anything that's not a string from an array (FAILED - 3)
# #count_elements
#   count how many times something appears in an array (FAILED - 4)
# #merge_data
#   combines two nested data structures into one (FAILED - 5)
# #find_cool
#   find all cool hashes (FAILED - 6)
# #organize_schools
#   organizes the schools by location (FAILED - 7)

def begins_with_r(array)
  words_with_r = 0
  all_begins_with_r = true
  array.each do |word|
    words_with_r += 1 if word.split("")[0] == "r" || word.split("")[0] == "R"
  end
  all_begins_with_r = words_with_r == array.size ? true : false
  return all_begins_with_r
end

def contain_a(array)
  contains_a_array = []
  word_array = []
  array.each do |word|
    word_array = word.split("")
    word_array.each do |word_split|
      if word_split == "a" || word_split == "A"
        contains_a_array << word
        break
      end
    end
  end
  return contains_a_array
end

def first_wa(elements_hash)
  starts_with_wa = ""
  wa_letter = ""
  elements_hash.each do |value|
    first_two_letters = value.to_s.split("")[0] + value.to_s.split("")[1]
    if first_two_letters == "wa" || first_two_letters == "Wa"
      starts_with_wa = value
      break
    end
  end
  return starts_with_wa
end

def remove_non_strings(array)
  array.delete_if {|type| type.class != String}
  return array
end

def count_elements(array_of_elements)
  count_array = []
  count_hash = {}
  array_of_elements.each do |element|
    # binding.pry
    element.each do |attribute, value|
      # binding.pry
      if count_hash.has_value?(value)
        count_hash[:count] += 1
        # binding.pry
      else
        count_hash = {attribute => value, :count => 1}
        count_array << count_hash
        # binding.pry
      end
    end
  end
  return count_array
end

def merge_data(hash1, hash2)
  merged_array = []
  merged_hash = {}

  hash2.each do |index2|

    index2.each do |key, attribute2|

      attribute2.each do |attribute2, value2|
        merged_hash[attribute2] = value2
          # binding.pry

        hash1.each do |index1|

          index1.each do |attribute1, value1|
            if value1 == key
              merged_hash[attribute1] = value1
              # binding.pry
            end
          end
        end
      end
      merged_array << merged_hash
      merged_hash = {}
      # binding.pry
    end
  end
  return merged_array
end

def find_cool(hash)
  return_array = []
  hash.each do |array_value|
    array_value.each do |key, value|
      if value == "cool"
        return_array << array_value
      end
    end
  end
  return return_array
end

def organize_schools(schools)
  school_hash = []
  organized_schools = {}
  schools.each do |school, location|
    location.each do |location, city|
      if organized_schools.has_key?(city)
        organized_schools[city] << school
      else
        organized_schools[city] = [school]
      end
    end
  end
  return organized_schools
end
