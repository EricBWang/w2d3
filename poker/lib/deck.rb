require "card.rb"



class Deck
  attr_reader :cards
  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      (1..13).each do |val|
        card = Card.new(suit, val)
        cards << card
      end
    end
  end

  def generate_hand
    cards.shuffle
    result = []
    5.times do 
      result << cards.shift
    end
    result
  end
end 