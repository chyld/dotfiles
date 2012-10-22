Pry.prompt = [proc { |obj, nest_level, _| "#{nest_level} :: #{obj}:#{obj.class} :> " }, proc { |obj, nest_level, _| "* " }]

Pry.config.commands.alias_command "l0", "ls -q"
Pry.config.commands.alias_command "l1", "ls -pli"
Pry.config.commands.alias_command "l2", "ls -pligc"
Pry.config.commands.alias_command "l3", "ls -pligcv"
Pry.config.commands.alias_command "ll", "ls -pliv"

#require "awesome_print"
require "active_support/all"

files = {}
files[:awesome_print] = "https://github.com/michaeldv/awesome_print"
files[:activesupport] = "http://api.rubyonrails.org"

#ap files

