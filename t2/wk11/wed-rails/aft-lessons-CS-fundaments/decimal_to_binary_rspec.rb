require 'rspec'
require_relative("decimal_to_binary")

describe "Should convert decimal to binary" do
	it "when decimal number given" do
		expect(decimal_to_binary(10)).to eq("1010")
	end
	it "when 1 is given" do
		expect(decimal_to_binary(1)).to eq("1")
	end
	it "when 0 is given" do
		expect(decimal_to_binary(0)).to eq("0")
	end
end