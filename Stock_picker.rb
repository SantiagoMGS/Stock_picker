stock_prices=[1,17,3,6,9,15,8,6,1,10,18,0]
def stock_picker(prices)
    profit = 0
    result = [0,0]
    prices.each_with_index  do |buy, buyidx|
        prices.each_with_index do |sell, sellidx|
            if (buy - sell) < profit && buyidx < sellidx
                result[0]=buyidx
                result[1]=sellidx
                profit = buy-sell
            end
        end
    end
    result
end

p stock_picker(stock_prices)