# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
    cnt = num_bottles
    while num_bottles / num_exchange > 0
        full = (num_bottles / num_exchange).round
        cnt += full
        num_bottles = full +
            num_bottles % num_exchange
    end
    cnt
end
