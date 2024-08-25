# typed: true
require 'sorbet-runtime'

extend T::Sig

sig {params(a: Integer, b: Integer).returns(Integer)}
def sum(a, b)
  a + b
end

result_1 = sum(1, 3)
puts "result_1: #{result_1}"

# Type Error
# result_2 = sum('Hello, ', 'World!')
# puts "result_2: #{result_2}"
