def begins_with_r(array)
  array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word[0..1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |element| element.class != String }
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  array = []
  keys.each do |person|
    name = person[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        array << merged_person
      end
    end
  end
  array
end

def find_cool(cool)
  array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      array << person
    end
  end
  array
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    organized[location] ||= []
    organized[location] << school
  end
  organized
end



