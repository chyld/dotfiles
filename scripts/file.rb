temp = STDIN.read.chomp
files = Dir.foreach(temp).select {|f| !File.directory?(f)}
puts files.count

