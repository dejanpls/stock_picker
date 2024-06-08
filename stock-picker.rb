def stock_picker(array)
    selected = array.reject {|price| price == array.max && price == array.first || price == array.min && price == array.last}
    
    days = selected.slice(0, selected.index(selected.max) + 1)
    day_to_buy = array.index(days.min)
    day_to_sell = array.index(days.max)

    p [day_to_buy, day_to_sell]
end

    
stock_picker([17,3,6,9,15,8,6,1,10])