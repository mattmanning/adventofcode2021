hsh = File.read('input').split("\n").inject({ h: 0, depth: 0}) do |pos,line|
  d, n = /(\w+)\s(\d)/.match(line)[1..2]
  case d
  when 'forward'
    { h: pos[:h] + n.to_i, depth: pos[:depth] }
  when 'up'
    { h: pos[:h], depth: pos[:depth] - n.to_i }
  when 'down'
    { h: pos[:h], depth: pos[:depth] + n.to_i }
  end
end

puts hsh[:h] * hsh[:depth]
