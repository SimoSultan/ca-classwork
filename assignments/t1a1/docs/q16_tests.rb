require 'test/unit'
require_relative 'q16_code.rb'

system "clear"

class AllergyTest < Test::Unit::TestCase

  # testing the creation of a Twitter instance and it calling the countdown timer and returning the correct EXP
  def test_list_of_allergies()

    program = Main.new()
    allergies = program.allergies

    assert_equal(["eggs"], get_combination_of_allergies_from_score(1, allergies))
    # assert_equal(["eggs", "strawberries"], get_combination_of_allergies_from_score(9, allergies))
    assert_equal([], get_combination_of_allergies_from_score(0, allergies))

  end

end