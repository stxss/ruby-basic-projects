# frozen_string_literal: true

class Caesar
  attr_accessor :string, :shift_factor

  def initialize
    # print "Enter your string to encrypt: "
    # string = gets.chomp

    # print "Now enter your desired shift factor: "
    # shift_factor = gets.chomp.to_i

    @string = string
    @shift_factor = shift_factor
    # shift(string, shift_factor)
  end

  def shift(string, shift_factor)
    original_arr = []

    upper = ("A".."Z").to_a
    lower = ("a".."z").to_a

    string.each_char { |c| original_arr.push(c) }

    new_arr = original_arr.map do |c|
      if c.ord >= 65 && c.ord <= 90
        upper[(c.ord - 65 + shift_factor) % upper.length]
      elsif c.ord >= 97 && c.ord <= 122
        lower[(c.ord - 97 + shift_factor) % lower.length]
      else
        c.ord.chr
      end
    end
    p new_arr.join
  end
end
