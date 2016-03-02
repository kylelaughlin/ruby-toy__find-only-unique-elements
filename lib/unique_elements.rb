# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
  occurance_hash = Hash.new
  arr.each do |a|
      occurances = 0
      arr.each do |b|
          if a == b
              occurances += 1
          end
      end
      occurance_hash[a] = occurances
  end
  unique_values = Array.new
  occurance_hash.each do |k, v|
      if v == 1
          unique_values << k
      end
  end
  unique_values
end
