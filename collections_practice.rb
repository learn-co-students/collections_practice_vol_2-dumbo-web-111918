require 'pry'

def begins_with_r(array)
  yes = true
  array.each {|i|
  if i.start_with?("r")
    yes = true
  else
    yes = false
    break
  end}
  return yes
end

def contain_a(array)
  new = []
  array.each { |i|
  if i =~ /a/
    new.push(i)
  end}
  return new
end

def first_wa(array)
  word = array.find {|i|
    i[0] == "w" and i[1] == "a"}
  return word
end

def remove_non_strings(array)
  list = []
  array.each {|i|
  if i.is_a?(String)
    list.push(i)
  end}
  return list
end

def count_elements(array)
  list = []
  holder = {}
  array.each {|i|
  if holder.has_key?(i[:name])
    holder[i[:name]] += 1
  else
    holder[i[:name]] = 1
  end}
  holder.each {|name, count|
    list.push({name: name, count: count})
  }
  return list
end

def merge_data(keys, items)
  list = []
  keys.each {|what|
    name = what[:first_name]
    items.each {|yes|
    if yes[name]
      merged_hash = yes[name]
      merged_hash[:first_name] = name
      list.push(merged_hash)
    end
      }
  }
  list
end

def find_cool(cool)
  list = []
  cool.each { |thing|
  if thing[:temperature] == "cool"
    list.push(thing)
  end
  }
  list
end

def organize_schools(schools)
  new_hash = {}
  schools.each {|place|
    if new_hash.has_key?(place[1][:location])
      location = place[1][:location]
      new_hash[location].push(place[0])
    else
      location = place[1][:location]
      new_hash[location] = [place[0]]
    end
  }
  new_hash
end
