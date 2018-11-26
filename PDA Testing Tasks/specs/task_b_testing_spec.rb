require("minitest/autorun")
require_relative("../task_b_testing_spec.rb")
require_relative("../task_b.rb")


class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("hearts", 1)
    @card2 = Card.new("clubs", 7)
    @card3 = Card.new("clubs", 10)
    @cards = [@card1, @card2, @card3]
  end

  def test_checkforAce_pass()
    result = CardGame.checkforAce(@card1)
    assert_equal(true, result)
  end

  def test_checkforAce__fail()
    result = CardGame.checkforAce(@card2)
    assert_equal(false, result)
  end

  def test_highest_card
    result = CardGame.highest_card(@card1, @card2)
    assert_equal(@card2, result)
  end

  def test_lowest_card
    result = CardGame.lowest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_highest_card__other
    result = CardGame.highest_card(@card2, @card1)
    assert_equal(@card2, result)
  end

  def test_cards_total
    p @cards
    result = (CardGame.cards_total(@cards))
    assert_equal( "You have a total of 18", result)
  end

end
