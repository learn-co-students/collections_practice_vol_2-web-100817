# your code goes here
  require "pry"
def begins_with_r(arg)
  arg.all?{ |word| word.chr === "r"}
end

def contain_a (arg)
  arg.map{|word| word.include?("a")? word: nil}.compact!
end

def first_wa (arg)
  arg.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings (arg)
  arg.map{ |word| word.kind_of?(String) ? word: nil}.compact
end

def count_elements (arg)
  new_array = []
  arg.each do |log|
    log[:count] = 0
    name = log[:name]
    arg.each do |hash|
       if hash[:name] === name
         log[:count] += 1
       end
     end
  end.uniq
end

def merge_data (data1, data2)
  data1.each do |person_array|
    name = person_array[:first_name]
    data2.each do |key2|
      key2.each do|person, per_info|
        if name === person
          per_info.each do |key, value|
            person_array[key] = value
          end
        end
      end
    end
  end
end

def find_cool (array)
  array.select {|person| person[:temperature].start_with?("cool")}
end

def organize_schools (array)
  location_hash = {}
  array.each do |school_array|
    schools.each do |school, school_info|
      school_info.each do |location_key, location|
        if !location_hash[location]
          location_hash[location] = [school]
        elsif !location_hash[location].include?(school)
          location_hash[location].push(school)
        end
      end
    end
  end
  location_hash
end
