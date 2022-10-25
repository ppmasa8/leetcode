# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    arr = []
    (1..n).each do |i|
        if i % 15 == 0
            arr << "FizzBuzz"
        elsif i % 3 == 0
            arr << "Fizz"
        elsif i % 5 == 0
            arr << "Buzz"
        else
            arr << i.to_s
        end
    end
    arr
end
