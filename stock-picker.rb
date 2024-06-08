def stock_picker(array)
    # Handle edge cases when the lowest day is the last day or the highest day is the first day
    selected = array.reject {|price| price == array.max && price == array.first || price == array.min && price == array.last}
    
    # Slice the array upto and including max price
    prices = selected.slice(0, selected.index(selected.max) + 1)

    day_to_buy = array.index(prices.min)
    day_to_sell = array.index(prices.max)

    pick = [day_to_buy, day_to_sell]

    p pick
end

    
stock_picker([17,3,6,9,15,8,6,1,10])