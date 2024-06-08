def stock_picker(array)
    original_arr = array.map(&:clone)

    array.delete(array.first) if array.max == array.first
    array.delete(array.last) if array.min == array.last

    days = array.slice(0, array.index(array.max) + 1)
    day_to_buy = original_arr.index(days.min)
    day_to_sell = original_arr.index(days.max)

    p [day_to_buy, day_to_sell]
end

    
stock_picker([17,3,6,9,15,8,6,1,10])