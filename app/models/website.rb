require 'open-uri'

class Website < ApplicationRecord

	def headline

		begin

		file = open("http://#{name}")

		contents = file.read
		unless contents.index("<h1>").nil?
			header_start = contents.index("<h1>") + 4
			header_end = contents.index("</h1>") - 1
			p contents[header_start..header_end]
		else
			p "There were no h1 tags on #{name}."			
		end
	rescue
		puts "You typed in something wrong. please try again"
	end
	end
end
