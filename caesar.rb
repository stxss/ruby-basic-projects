def caesar_cipher(string, shift_factor)
    original_arr = []
    new_str = ""

    upper = ("A".."Z").to_a
    lower = ("a".."z").to_a
    
    string.each_char { |c| original_arr.push(c) }

    new_arr = original_arr.map do |c|
        if (c.ord >= 65 && c.ord <= 90) 
            upper[(c.ord - 65 + shift_factor) % upper.length]
        elsif (c.ord >= 97 && c.ord <= 122) 
            lower[(c.ord - 97 + shift_factor) % lower.length]
        else
            c.ord.chr
        end
    end
    p new_arr.join()
end 

print "Enter your string to encrypt: "
string = gets.chomp

print "Now enter your desired shift factor: "
shift_factor = gets.chomp.to_i

caesar_cipher(string, shift_factor)