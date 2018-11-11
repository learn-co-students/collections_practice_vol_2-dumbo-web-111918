# your code goes here

def begins_with_r(array)
  match_array = []
  match_array = array.select {|word| word.start_with?('r')}
  if array.size == match_array.size
    true
  else
    false
  end
end

def contain_a(array)
  new = []
  array.each do |word|
    eval = word.include?('a')
    if eval == true
      new.push(word)
    end
  end
  new
end

def first_wa(array)
  array.find do |val|
    val.to_s.start_with?('wa') ## use .to_s to convert values to STRINGS, then use .start_with?() to check for 'wa'
  end
end

def remove_non_strings(array)
  array.select do |word|
    word.is_a? String # check if String
  end
end

def count_elements(array)
  a = array.group_by(&:itself) # will group all identical components, put them into a hash under same key
  a.collect {|key, val| key.merge(count: val.size)} # use merge to combine two hashes into one hash!
end

=begin
def merge_data(keys, data)
  new = []
  keys.each do |i| # iterate through keys array
    data.first.collect do |key, val| # grab the first
      if i.values[0] == key
        new << i.merge(val)
      end
    end
  end
  new
end
=end

def merge_data(keys, data)
  merged = [] # create empty array
  keys.each do |entry| # iterate through keys, grab each entry from hash
    name_key = entry[:first_name] # assign the name value to match below

    data.each do |hash| # iterate through data list

      hash.each do |name, info| # iterate through each hash, assign name, info

        if name_key == name # if name key in key_entry is == to name in hash
          merged_hash = {entry.key(name_key) => name_key} # create a hash, where we merge with this assigned order...
          # .key(value) returns the key for the value entered
          merged << merged_hash.merge(info) # merge the values from data into this hash
        end
      end
    end
  end
  merged
end

def find_cool(array)
  new = []
  array.each do |hash|
    temp = hash[:temperature]
    if temp == 'cool'
      new << hash
    end
  end
  new
end

def organize_schools(school_dict)
  new = {}
  school_dict.collect do |k, v|
    new[v[:location]] = []
  end
  new.each do |k, v|
    school_dict.each do |skl, data|
      if k == data[:location]
      v << skl
      end
    end
  end
end
