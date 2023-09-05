# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
    max = 2147483647
    calc = (dividend.to_f/divisor.to_f).truncate
    calc > max ? max : calc
end
