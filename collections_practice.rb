# your code goes here
array = ["rat", "fang", true, "rat"]
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end


def contain_a(array)
	array.find_all {|word| word.include?("a")}
end


def first_wa(array)
  array.find {|prefix| prefix.match(/^wa/)}
end

def remove_non_strings(array)
	array.delete_if {|string| string.class != String}
end


def count_elements(array)
  new_array = []
  array.each do |hash|
    # this is where our if is going to be 
    # if it doesnt already exist inside new_array 
    new_array.push({:name => hash[:name], :count => 1})
    # else 
    match_new_array = new_array.select{|new_hash| hash[:name] == new_hash[:name]}
    match_new_array[0][:count] += 1
    end 
  end
  new_array
end

