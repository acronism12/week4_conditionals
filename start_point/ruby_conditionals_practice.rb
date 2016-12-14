def water_description(temperature)
  if temperature < 0
    return "Ice"
#  elsif temperature >= 0 && temperature < 100
#    return "Water"
  elsif temperature >= 100
    return "Steam"
  else
    return "Water"
  end
end

def calculate_tax(account_balance, account_type)
  if account_type == "normal"
    return 0.1 * account_balance
  else
    return 0
  end
end

def hero_movement(hero_race, dice_roll)
  if hero_race == "human"
    return dice_roll
  elsif hero_race == "elf"
    return dice_roll*2
  elsif hero_race == "dwarf"
    return dice_roll/2
  end
end

def should_eat(food_type, season)
  if food_type == "ice cream" && season == "winter" || food_type == "hot chocolate" && season == "summer"
    return "false"
  else
    return "true"
  end
end

def volume_of_cube(side_length)
  return side_length**3
end

def volume_of_sphere(radius)
  return (4*Math::PI*radius**3)/3
end

def convert_to_celsius(temp_in_f)
  return ((temp_in_f-32)/9)*5
end
