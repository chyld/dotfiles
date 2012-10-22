temp = STDIN.read.chomp
dirs = Dir.foreach(temp).select {|f| File.directory?(f)}
puts dirs.count - 2
