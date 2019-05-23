class Card 

SUITS = [
  'Spade', 'Club', 'Diamond', 'Heart'
].freeze
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value 
  end 


end 