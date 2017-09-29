def begins_with_r(array)
  array.all? do |word|
    word.include?("r")
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)


end

def count_elements(array)
  array.each_with_object(Hash.new(0)) do |word,counts|
    counts[word] +=1
  end
end

def merge_data(array1,array2)
end

def find_cool
end

def organize_schools
end
