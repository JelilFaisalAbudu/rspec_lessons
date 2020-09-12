Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  it 'should be delicious' do
    sandwich = Sandwich.new('delicious', [])

    taste = sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'lets me add more toppings' do
    sandwich = Sandwich.new('delicious', [])
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings
    expect(toppings).not_to be_empty
  end
end
