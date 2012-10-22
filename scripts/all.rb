temp = STDIN.read.chomp
files = Dir.foreach(temp)
puts (files.count - 2)

