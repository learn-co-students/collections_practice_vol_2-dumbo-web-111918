require "pry"
def begins_with_r (tools)
  tools.each do |tool|
    if tool[0] != "r"
      return false
    end
  end
  true
end

=begin
def begins_with_r (tools)
  tools.all?{|tool| tool[0] == "r"}
end
=end

def contain_a (arr)
  arr.select do |element|
    element.include? "a"
  end
end

def first_wa (arr)
  arr.find do |value|
    value.to_s.start_with?("wa")
  end
end

def remove_non_strings (arr)
  arr.select do |element|
    element.is_a? String
  end
end

def count_elements (arr)

end
