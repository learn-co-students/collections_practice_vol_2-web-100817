def begins_with_r(array)
  holder = 0
  array.each do |word|
    if word.start_with?("r")
      holder += 1
    end
  end
    if holder == array.length
      return true
    else
      return false
    end
end


def contain_a(array)
  answer = []
  array.each do |word|
    if word.include?"a"
      answer.push(word)
    end
  end
  answer
end

def first_wa(array)
  array.each do |word|
    if word.to_s.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  answer = []
  array.each do |item|
    if item.class == String
      answer.push(item)
    end
  end
  answer
end

def count_elements(array)
  answer = []
temp = array.each_with_object(Hash.new(0)) { |item,counts| counts[item] += 1 }
holder = temp.each do |name, num|
  answer.push(name)
end
answer.each do |item|
  holder.each do |name, num|
    if item = name
  item[:count] = num
end
end
end
answer
end

def merge_data(arr1, arr2)
  answer = []
  arr1.each do |person|
    person.each do |key, val|
    arr2.each do |info|
      info.each do |name, stuff|
        if val == name
        answer.push(stuff = person.merge(stuff))
      end
    end
end
  end
end
  answer
end

def find_cool(arrs)
answer = []
  arrs.each do |hashed|
    if hashed.has_value?("cool")
      answer.push(hashed)
    end
end
answer
end

def organize_schools(hash)
  answer = {}

    hash.each do |name, place|
      place.each do |title, loca|
      answer[loca] = []
    end
    end
    hash.each do |name, place|
      place.each do |title, loca|
      answer.each do |city, arr|
        if loca == city
          answer[loca].push(name)
        end
      end
    end
  end
    answer
end
