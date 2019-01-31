# -*- coding: UTF-8 -*-
require 'open3'

print "Install the vim-plugin. Is it ok? [y|n]:"
response = gets
case response
when /^[yY]/
	dir = "./.vim/bundle/"
	if File.exists?(dir)
		print "create [#{dir}] directory\n"
		Open3.capture3("rm -rf #{dir}")
		Open3.capture3("mkdir -p #{dir}")
	end
	File.open("plugin_list.txt") do |f|
		f.each_line do |line|
			Open3.capture3("cd #{dir}; git clone #{line}")
			print "clone #{line} ...\n"
		end
	end
end
