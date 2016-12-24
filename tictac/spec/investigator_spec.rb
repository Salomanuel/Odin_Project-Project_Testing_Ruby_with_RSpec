require "rspec"
require "investigator"

describe Detective do
	it "says what noise the thingie makes" do
		thingie = Thingie.new
		subject = Detective.new(thingie)

		result = subject.investigate

		expect(result).to match(/It went '(erp|blop|ping|ribbit)!'/)
	end
end