Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "An ideal sandwich" do
	# Using RSpec hooks[before, after]
	# Use the 'before' hook to set up a common code across
	before { @sandwich = Sandwich.new('delicious', []) }

	it "tastes delicious" do
		taste = @sandwich.taste
		expect(taste).to eq('delicious')
	end

	it "does not have an empty toppings" do
		toppings = @sandwich.toppings << 'cheese'
		expect(toppings).not_to be_empty
	end
	
	
	
end

