# @param {String} s
# @return {Integer}
def roman_to_int(s)
  sum = 0
  # plus
  sum += s.count("I")
  sum += s.count("V")*5
  sum += s.count("X")*10
  sum += s.count("L")*50
  sum += s.count("C")*100
  sum += s.count("D")*500
  sum += s.count("M")*1000
  #minus
  sum -= s.scan(/[I][V]/).size*2
  sum -= s.scan(/[I][X]/).size*2
  sum -= s.scan(/[X][L]/).size*20
  sum -= s.scan(/[X][C]/).size*20
  sum -= s.scan(/[C][M]/).size*200
  sum -= s.scan(/[C][D]/).size*200

  return sum
end