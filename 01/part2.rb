input = File.read('input').split("\n").map(&:to_i)
ans = input.each_with_index.inject(0) do |sum,(n,i)|
  input[i..i+2].compact.sum < input[i+1..i+3].compact.sum ? sum+1 : sum
end
puts ans