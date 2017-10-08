require 'pry'

def begins_with_r(array)
  array.all? do |i|
    i[0] == "r"
  end
end

def contain_a(array)
  array.select {|i| i.include? "a"}
end

def first_wa(array)
  array.each do |x|
    x = x.to_s
  if x.include? "wa"
    return x
  end
end
end

def remove_non_strings(array)
  array.delete_if do |fer|
    fer.class != String
  end
end

def count_elements(array)
  temparr = []
array.uniq.delete_if do |x|
if temparr.include? x
  true
else
  temparr << x
x[:count] = array.count(x)
  false
end
end
return temparr
end

def merge_data(keys, data)
  #keys = [{:first_name=>"blake"}, {:first_name=>"ashley"}]

  #data = [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},
  # "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]

  newhash = Hash.new
  newhash2 = Hash.new
i=0
keys.each do |x|
  x.each do |k, v|
    if v == data[0].keys[0]
      newhash = {"#{k}": v}.merge((data[0]["#{v}"]))
    elsif v == data[0].keys[1]
      newhash2 = {"#{k}": v}.merge((data[0]["#{v}"]))
    end
  end
end

finalarr = []
finalarr << newhash
finalarr << newhash2
return finalarr
end

def find_cool(cool)
#cool = [{:name=>"ashley", :temperature=>"sort of cool"},
 #{:name=>"blake", :temperature=>"cool"}]
 coolarr = []
  cool.each do |x|
    x.each do |k, v|
      if k == :temperature
        if v == "cool"
          coolarr.push(x)
        end
      end
    end
  end
return coolarr
end

def organize_schools(schools)

#schools = {"flatiron school bk"=>{:location=>"NYC"},
# "flatiron school"=>{:location=>"NYC"},
# "dev boot camp"=>{:location=>"SF"},
# "dev boot camp chicago"=>{:location=>"Chicago"},
# "general assembly"=>{:location=>"NYC"},
# "Hack Reactor"=>{:location=>"SF"}}

#newhash where location is the key, and the value is an array of the schools
newhash = Hash.new
newhash = {"NYC"=>[], "SF"=>[], "Chicago"=>[]}
schools.each do |x, y|
  y.each do |k,v|
      if v == "NYC"
        newhash["NYC"] << x
      elsif v == "SF"
        newhash["SF"] << x
      elsif v == "Chicago"
        newhash["Chicago"] << x
      end
    end
  end

  return newhash
end
