# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
    seats.sort!
    students.sort!
    n = seats.size
    res = 0
    (0...n).each{|i| res += (seats[i]-students[i]).abs }
    res
end
