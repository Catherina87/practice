# Create a deck of cards with attributes like suit and value. 
# Shuffle the deck of cards. (can't use .shuffle)

def create_deck
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Ace', 'Jack', 'Queen', 'King']

  deck = []

  suits.each do |suit|
    values.each do |value|
      deck << "#{suit}: #{value}"
    end
  end

  return deck.sample(52) # .sample method returns a random element 
end                      # from array or a number of random elements

puts create_deck