# @param {String} s
# @return {Integer}
def roman_to_int(s)
  number = 0
  s.reverse.chars.each do |char|
    case char
    when 'I'
      number += (number >= 5 ? -1 : 1)
    when 'V'
      number += 5
    when 'X'
      number += 10 * (number >= 50 ? -1 : 1)
    when 'L'
      number += 50
    when 'C'
      number += 100 * (number >= 500 ? -1 : 1)
    when 'D'
      number += 500
    when 'M'
      number += 1000
    end
  end
  number
end
