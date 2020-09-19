Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "Sanwich" do
	let(:sandwich) {Sandwich.new('delicious', [])}
	context "An ideal Sanwich" do
		it "tastes delicious" do
			taste = sandwich.taste
			expect(taste).to eq('delicious')
		end

		it 'lets me add toppings' do
			sandwich.toppings << 'cheese'
			toppings = sandwich.toppings
			expect(toppings).not_to be_empty
		end
	end
end
