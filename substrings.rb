# frozen_string_literal: true

def substrings(string, dictionary)
  arr = string.gsub(/[^a-zA-Z]/, " ").downcase.split
  result = Hash.new(0)
  dictionary.map do |word|
    arr.each do |chars|
      result[word] += 1 if chars.include?(word)
    end
  end
  p result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
