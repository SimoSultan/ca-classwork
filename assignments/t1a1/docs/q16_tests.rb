require 'test/unit'
require_relative 'q16_code.rb'

system "clear"

class AllergyTest < Test::Unit::TestCase

  # testing the creation of a Twitter instance and it calling the countdown timer and returning the correct EXP
  def test_list_of_allergies()

    program = Main.new()
    allergies = program.allergies
    # score = program.score

    assert_equal({}, get_combination_of_allergies_from_score(0, allergies))
    assert_equal(["eggs"], get_combination_of_allergies_from_score(1, allergies))
    assert_equal(["strawberries", "eggs"], get_combination_of_allergies_from_score(9, allergies))
    assert_equal(["tomatoes", "strawberries", "peanuts", "eggs"], get_combination_of_allergies_from_score(27, allergies))
    assert_equal(["chocolate", "tomatoes", "shellfish", "eggs"], get_combination_of_allergies_from_score(53, allergies))
    assert_equal(["cats", "pollen", "strawberries"], get_combination_of_allergies_from_score(200, allergies))

  end

end