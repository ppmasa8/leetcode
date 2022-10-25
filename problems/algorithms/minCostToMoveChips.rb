# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
    odd_cnt, even_cnt = 0, 0
    position.each{|p| p % 2 == 0 ? even_cnt+=1 : odd_cnt+=1}
    odd_cnt > even_cnt ? even_cnt : odd_cnt
end
