# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substr = ''
  max = long = 0

  s.chars.each_with_index do |char, index|
    if substr.include? char
      max = long if long > max
      char_index = substr.index(char)
      substr = substr[(char_index + 1)...substr.size]
      substr << char
      long = substr.size
    else
      substr << char
      long += 1
    end
  end

  [max, long].max
end