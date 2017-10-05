require "pry"

def begins_with_r(collection)
  collection.each do |word|
    return false if word[0] != "r"
  end
  return true
end

def contain_a(collection)
  a_collection = []
  collection.each do |word|
    if word.include? "a"
      a_collection << word
    end
  end
  return a_collection
end

def first_wa(collection)
  collection.each do |word|
    first_two_letters = word[0] + word[1]
    return word if first_two_letters == "wa"
  end
end

def remove_non_strings(collection)
  collection.keep_if { |element| element.is_a? String }
  return collection
end

def count_elements(collection)
  total_counts = []
  uniq_elements = collection.uniq
  uniq_elements.each do |element|
    total_counts << { element.keys.first => element.values.first, count: collection.count(element) }
  end
  return total_counts
end

def merge_data(collection1, collection2)
  merged_data = []
  collection1.each do |element|
    element.each do |key1, value1|
      collection2[0].each do |key2, value2|
        if value1 == key2
          value2[key1] = value1
          merged_data << value2
        end
      end
    end
  end
  return merged_data
end

def find_cool(collection)
  cool_hashes = []
  collection.each do |element|
    return cool_hashes << element if element[:temperature] == "cool"
  end
end

{"NYC"=>["flatiron school bk", "flatiron school", "general assembly"], "SF"=>["dev boot camp", "Hack Reactor"], "Chicago"=>["dev boot
 camp chicago"]}

def organize_schools(collection)
  schools_by_location = {}
  unique_school_locations(collection).each do |unique_location|
    schools_in_unique_location = []
    collection.each do |school, location_data|
      schools_in_unique_location << school if location_data[:location] == unique_location
    end
    schools_by_location[unique_location] = schools_in_unique_location
  end
  return schools_by_location
end

# helper method - finds list of all unique school locations
def unique_school_locations(collection)
  unique_locations = []
  collection.each do |school, location_data|
    unique_locations << location_data[:location]
  end
  unique_locations = unique_locations.uniq
end
