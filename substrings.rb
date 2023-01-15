def substrings(string, dictionary)
    arr = string.gsub(/[^a-zA-Z]/, " ").downcase.split()
    result = Hash.new(0)
    dictionary.map do |word|
        arr.each do |chars| 
            if chars.include?(word)
                result[word] += 1
            end
        end
    end
    p result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
