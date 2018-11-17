string = ["ruby", "rspec", "rails"]





def begins_with_r (string)
  string.each {|x| return false if x.start_with?("r") == false}
  true
end

def contain_a (string)
  string.select { |x|  x.include?("a") == true  }
end

def first_wa (string)
  string.find { |x| x.to_s.start_with?("wa")}
end

def remove_non_strings(string)
  string.delete_if {|x| x != x.to_s}
end

def count_elements (string)
  string.uniq.collect do |item|
    item[:count] = string.count(item)
    item
  end
end

def merge_data(keys, data)
  new = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        new << merged_person
      end
    end
  end
new
end


def find_cool(string)
container = []
string.each do |element|
  container << element if element[:temperature] == "cool"
end
container
end

def organize_schools(schools)
organized_schools = {}
schools.each do |name, location_hash|
  location = location_hash[:location]
  if organized_schools[location]
    organized_schools[location] << name
  else
    organized_schools[location] = []
    organized_schools[location] << name
  end
end
organized_schools
end
