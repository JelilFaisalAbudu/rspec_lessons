Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "An ideal sandwich" do
	# Using RSpec hooks[before, after]
	# Use the 'before' hook to set up a common code across
	# Note: This technique is not actually the best.
	# Because the hook has to run for every example in the spec, which is expensive.
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

