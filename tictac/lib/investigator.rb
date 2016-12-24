class Thingie
	def prod
		["erp!", "blop!", "ping!", "ribbit!"].sample
	end
end

class Detective

	def initialize(thingie)
		@thingie = thingie
	end

	def investigate
		"it went '#{thingie.prod}'"
	end

end