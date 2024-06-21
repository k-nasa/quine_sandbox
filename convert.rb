f = File.read("nasa2.txt")
aa = f.chars.map {|t|
  if t == ' '
    0
  elsif t == "\n"
    t
  else
    1
  end
} * ''

puts aa

bits = aa.gsub("\n", "").reverse.to_i(2)

width = aa.split("\n").first.size
height = aa.split("\n").size
len = width * height -1

(0..len).each do |i|
  print bits[i] == 1 ? 1 : " ";
  print "\n" if i % width == width - 1
end

puts bits.to_s.length
puts aa.count('1')

bin = [Marshal.dump(bits)].pack("m").gsub("\n", "")

puts "width #{width}, height #{height}"

puts "#bits #{bits}"
puts "#data bits #{bin}"
puts bin.length
