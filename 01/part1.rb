input = File.read('input').split("\n")
puts input.each_with_index.inject(0) {|sum,(n,i)| n.to_i < input[i+1].to_i ? sum+1 : sum}