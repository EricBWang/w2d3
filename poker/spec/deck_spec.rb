require 'deck'

describe '#initialize' do
  let(:deck) {Deck.new}
  it 'should initialize a deck of 52 cards' do
    expect(deck.cards.count).to eq(52)
  end
end