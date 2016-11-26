module WithYield
	def self.thrice
		3.times { yield }
	end
end

module WithProcCall
	def self.thrice(&block)
		3.times { block.call }
	end
end

   WithYield::thrice {puts "Hello World"}
puts "*"*40
WithProcCall::thrice {puts "Hello World"}