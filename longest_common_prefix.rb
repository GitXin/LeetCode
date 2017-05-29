# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?
  return strs[0] if strs.length == 1
  prefix = ""
  strs.first.chars.each_with_index do |char, index|
    strs.each do |str|
      return prefix if str[index] != char
    end
    prefix << char
  end
  prefix
end