def is_sum_equal(first_word, second_word, target_word)
    make_sum(first_word) + make_sum(second_word) == make_sum(target_word)
end

def make_sum(str)
    res = []
    (0...str.size).each do |i|
        res << str[i].ord - 'a'.ord
    end
    res.join.to_i
end
