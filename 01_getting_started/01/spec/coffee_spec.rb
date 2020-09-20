class Coffee

	def ingredients
		@ingredients ||= []
	end

	def add(ingredient)
		ingredients << ingredient
	end

	def price
		1.00 + ingredients.size * 0.25
	end
end

RSpec.configure do |config|
	# Configure to focus on specific examples when I run rdpec without passing any *args to it.
	config.filter_run_when_matching(focus: true)

	# Configure to store only failing examples to for me to rerun using the flag --only-failures
	config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe "A cup of coffee" do
	let(:coffee) { Coffee.new }

	it "costs $1.00" do
		expect(coffee.price).to eq(1.00)  
	end
	
	# The f prpended to the #context gained focus when you run rspec only
	fcontext "with milk" do
		before { coffee.add(:milk) }
		it "costs $1.25" do
			expect(coffee.price).to eq(1.25)
		end
		
	end
	
end
