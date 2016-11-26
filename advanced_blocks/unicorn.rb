#Unicorn = Struct.new(:name, :color)

class Unicorn
	attr_accessor :name, :color
	def initialize(name, color='white')
		@name = name
		@color = color
	end

	def white?() (self.color == "white") ? true : false end

	def say(what) "**;* #{what} **;*" end

end

=begin
rob = Unicorn.new("Robert")
puts rob.color
puts rob.white?
puts rob.say("Wonderful!")
=end