# @param {String} s
# @return {Boolean}
MAPPINGS = {
  ')' => '(',
  ']' => '[',
  '}' => '{'
}
def is_valid(s)
  stack = []
  s.each_char do |char|
    if MAPPINGS[char].nil?
      stack.push(char)
    else
      return false if MAPPINGS[char] != stack.pop
    end
  end
  stack.empty?
end