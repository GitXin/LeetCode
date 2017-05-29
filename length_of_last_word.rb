# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  last_word = s.split(' ')[-1]
  last_word.nil? ? 0 : last_word.size
end