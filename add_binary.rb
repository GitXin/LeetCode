# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  str = ''
  carry = false
  length = [a.size, b.size].max
  i = 1
  while i <= length
    index = -i
    sum = a[index].to_i + b[index].to_i
    if carry
      sum += 1
      carry = false
    end
    case sum
    when 3
      carry = true
      str = '1' + str
    when 2
      carry = true
      str = '0' + str
    when 1, 0
      str = sum.to_s + str
    end
    i += 1
  end

  if carry
    str = '1' + str
  end

  str
end

=begin
def add_binary(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end
=end