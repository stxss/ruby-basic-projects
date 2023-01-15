def stock_picker(array)
    options = {}
    array.each_with_index do |elem, i|
        (i+1...array.size).each do |j|
            statement = "#{-elem} + #{array[j]}  = #{-elem + array[j]}"
            trade = [i,j]
            options[[trade]] = -elem + array[j]
        end
    end
    buy = options.max_by {|k,v| v}[0][0][0]
    sell = options.max_by {|k,v| v}[0][0][1]
    profit = options.max_by {|k,v| v}[1]
    puts "The profit for this trade is $#{array[sell]} - $#{array[buy]} = $#{profit}"
    p options.max_by {|k,v| v}[0][0]
end

stock_picker([17,3,6,9,15,8,6,1,10])