require_relative './stack'

def balancing_parentheses(string)
  stack = Stack.new
  needed = 0

  string.chars.each do |c|
    if c == "("
      stack.push c
      needed += 1
    else
      if stack.size == 0
        needed += 1
      else
        stack.pop
        needed -= 1
      end
    end
  end

  needed
end

# puts balancing_parentheses('(()())')
# puts balancing_parentheses('()))')
# puts balancing_parentheses(')))')
# puts balancing_parentheses('(((')