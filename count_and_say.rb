# @param {Integer} n
# @return {String}
def count_and_say(n)
  str = '1'
  return str if n == 1
  (n-1).times do
    str = say(str)
  end
  str
end

def say(str)
  say = ""
  stack = []
  str.each_char do |char|
    if stack.empty? || stack[0] == char
      stack.push char
    else
      say << "#{stack.size}#{stack[0]}"
      stack.clear
      stack.push char
    end
  end
  say << "#{stack.size}#{stack[0]}" unless stack.empty?
  say
end