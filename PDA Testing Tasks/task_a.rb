# Task A

# Carry out Static testing on the code below.
# Correct the errors below that you spotted in task 1.
require_relative('card.rb')
class CardGame

  def initialize(suit, value)
    @suit = suit
    @value = value;
  end

  def checkforAce(card) # should be a class method i.e. self.method_name
    if card.value = 1 # == would be preferable, this would check if the value of two operands are equal or not, if yes then condition becomes true.
      return true
    else
      return false
    end
  end


  dif highest_card(card1 card2) # Def' misspelt. Comma missing between paramaters in brackets
  if card1.value > card2.value
    return card.name #".name" is not an attribute
  else
    card2
  end
end
end # Final 'end' is superfluous


def self.cards_total(cards)
  total  # Needs to be initialised - i.e "total = 0"
  for card in cards
    total += card.value  # total to be enclosed within #{} 
    return "You have a total of" + total # return should not be inside the loop
  end
end
