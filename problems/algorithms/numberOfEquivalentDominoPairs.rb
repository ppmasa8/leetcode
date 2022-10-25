# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
    hash = Hash.new(0)
    cnt = 0
    dominoes.each do |d|
        if d[0] < d[1]
            hash[d[0]*10 + d[1]] += 1
        else
            hash[d[1]*10 + d[0]] += 1
        end
    end
    hash.each{|_,v| cnt += (v * (v - 1)) / 2}
    cnt
end
