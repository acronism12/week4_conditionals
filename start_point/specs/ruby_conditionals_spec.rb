require( 'minitest/autorun' )
require_relative( '../ruby_conditionals_practice' )

class ConditionalsPracticeTest < MiniTest::Test

  # Water Description
  # Write a function; water_description which takes in a temperature (Fixnum) as an argument
  # The function should return a string "ice" if the temperature is below 0
  def test_is_ice_when_below_0
    #temperature < 0
    result = water_description(-10)
    assert_equal("Ice", result)
  end

  # The function should return a string "water" if the temperature is above 0
  def test_is_water_when_above_0
    result = water_description(50)
    assert_equal("Water", result)
  end

  # The function should return a string "steam" if the temperature is above 100
  def test_is_steam_when_above_100
    result = water_description(120)
    assert_equal("Steam", result)
  end

  # Tax Calculator
  # Write a function that returns the tax due for a bank account. The function should take in the
  # the amount of the bank account(Float) and the account_type(String)
  # The function should return 10 percent of the value of a "normal" bank account
  def test_returns_10_percent_for_normal_bank_account
    result = calculate_tax(100.00, "normal")
    assert_equal(10.00, result)
  end

  def test_returns_0_for_a_offshore_bank_account
    result = calculate_tax(100.0, "offshore")
    assert_equal(0.00, result)
  end

  # Hero Movement
  # Write a function that returns the movement of a hero.
  # The function takes in the the race of the hero: "human", "elf", "dwarf"  as a String
  # And a dice roll - FixNum

  # The function should return the dice roll value if the hero is human
  def test_returns_stength_value_for_human
    result = hero_movement("human", 6)
    assert_equal(6, result)
  end

  # The function should return the dice roll value times two if the hero is elf
  def test_returns_strength_value_times_2
    result = hero_movement("elf", 6)
    assert_equal(12, result)
  end

  # The function should return half the dice roll for a dwarf
  def test_returns_strength_value_halved
    result = hero_movement("dwarf", 6)
    assert_equal(3, result)
  end

  # Create a should_eat function; that takes in a food(String) and season(String) - winter,summer,spring, autumn
  # return false if "ice cream" and "winter",
  def test_icecream_in_winter_result
    result = should_eat("ice cream", "winter")
    assert_equal("false", result)
  end

  # return false if "hot chocolate" and "summer",
  def test_hot_chocolate_in_summer_result
    result = should_eat("hot chocolate", "summer")
    assert_equal("false", result)
  end

  # returns true in all other cases
  def test_all_other_cases
    result = should_eat("apples", "spring")
    assert_equal("true", result)
  end

  #Given the length of a side of a cube calculate the volume
    def test_volume_of_cube()
      result = volume_of_cube(3)
      assert_equal(27, result)
    end

    #Given the radius of a sphere calculate the volume
    def test_volume_of_sphere()
      result = volume_of_sphere(5)
      assert_equal((500*(Math::PI))/3, result)
    end

    #Given a value in farenheit, convert this into celsius.
    def test_fahrenheit_to_celsius()
      result = convert_to_celsius(212)
      assert_equal(100, result)
    end

end
