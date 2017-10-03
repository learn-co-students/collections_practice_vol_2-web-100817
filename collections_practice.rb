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

def count_elements(array)
  array.each do |first_hash|
    first_hash[:count] = 0
    name = first_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        first_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  keys.each do |name|
    data.each do |hash|
      name.merge!(hash[name[:first_name]])
    end
  end
end


def find_cool(array)
  array.select {|value| value if value.has_value?("cool")}
end


def organize_schools(array)
  new_hash = Hash.new

  array.each do |key, value|
      if new_hash.include?(value[:location])
        new_hash[value[:location]] << key
      else
        new_hash[value[:location]] = [key]
      end
  end
  new_hash
end
