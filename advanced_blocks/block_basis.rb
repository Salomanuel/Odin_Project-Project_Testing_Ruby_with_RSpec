class Flyer
	attr_reader :name, :email, :miles_flown

	def initialize(name, email, miles_flown)
		@name        = name
		@email       = email
		@miles_flown = miles_flown
	end

	def to_s
		"passenger #{name} (#{email}): #{miles_flown}NM"
	end
end


flyers = []
1.upto(5) do |j|
	flyers << Flyer.new("person#{j}", "flyer#{j}@email.com", "#{j*800}")
end

puts flyers

puts "*" * 60

def printfive
	1.step(9,2) do |j|
		puts "#{j} situp"
		puts "#{j} pushup"
		puts "#{j} chinup"
		puts
	end
end

printfive
