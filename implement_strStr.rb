# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if haystack == needle || needle.empty?
  i = 0
  while i < haystack.size - 1
    if needle[0] == haystack[i]
      return i if needle == haystack[i, needle.size]
    end
    i += 1
  end
  -1
end