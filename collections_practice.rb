def begins_with_r(array)
  array.all? do |name| name.start_with?("r")
end
end

def contain_a(array)
  array.select do |name| name.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    if word[0, 2] == "wa"
      return word
  end
end
end

def remove_non_strings(array)
 array.delete_if {|name| name.class != String}
 return array
end

def count_elements
  array.group_by{}
