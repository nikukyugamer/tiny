# typed: true

require 'sorbet-runtime'

class App
  extend T::Sig

  sig { params(first: Integer, second: Integer).returns(Integer) }
  def sum(first, second)
    first + second
  end
end

result_one = App.new.sum(1, 3)
puts "result_one: #{result_one}"

# Type Error
# result_two = sum('Hello, ', 'World!')
# puts "result_two: #{result_two}"
