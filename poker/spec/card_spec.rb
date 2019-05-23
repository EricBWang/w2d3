require "card"

describe "#initialize" do
  let(:card) {Card.new("Spade", 3)}
  it "should create suit and value instance variables" do 
    expect(card.suit).to eq("Spade")
    expect(card.value).to eq(3)
  end

  
end