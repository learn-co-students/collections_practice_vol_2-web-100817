# your code goes here
def begins_with_r(array)
  array.each do |element|
    if element[0].downcase != "r"
    return false
  end
end
return true
end

def contain_a(array)
  array.select do |x|
    x.downcase.include? "a"
  end
end

def first_wa(words)
  words.each do |x|
    if x[0] == "w" && x[1] == "a"
      return x
    end
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a?String
  end
end

def count_elements(array)
  array.each do |element|
  element[:count] = 0
  name = element[:name]
  array.each do |hash|
    if hash[:name] == name
      element[:count] +=1
  end
end
end
return array.uniq
end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]

    otherObject.each do |property,value|
      object[property] = value
    end
  end
end


def find_cool(array)
  container = []
  array.each do |element|
      container << element if element[:temperature] == "cool"
   end
 return container
end


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, hash|
  location = hash[:location]
  organized_schools[location] ||= []
  puts name
  organized_schools[location] << name
end
return organized_schools
end
