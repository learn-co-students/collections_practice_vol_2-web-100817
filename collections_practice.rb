# your code goes here
# your code goes here
def begins_with_r(array)
  array.all? {|x| x.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find do |word|
    if word[0] == "w" && word[1] == "a"
      return word
    end
  end
end

def remove_non_strings(array)
 array = array.select {|element| element.class == String }
 array
end


def count_elements(array)
 array_2 = array.group_by(&:itself).map{|key,value| key.merge(count: value.length)}
end

def merge_data(keys,data)
data[0].values.map.with_index {|v,i| keys[i].merge(v)}

end

def find_cool(cool)
  array = []
  cool.each_with_index do |key, index|
    if cool[index].values.include?("cool")
      array << key
    end
  end
  array
end

require 'pry'
def organize_schools(schools)
 new_hash = {}

 schools.each do |keys, value_hash|
   value_hash.each do |location, location_name|
     new_hash[location_name] ||= []
     new_hash[location_name] <<keys.to_s 
   end
 end
new_hash
 end
