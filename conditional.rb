# def show_balance(pin_code)
#   if pin_code == 1234
#     return "Balance is £1234.56"
#   else
#     return "PIN code incorrect"
#   end
# end
#
# print "Please enter your PIN: "
# pin_code = gets().chomp.to_i()
# puts show_balance(pin_code)

def enter_ride(height, weight)
  if height >= 120 && weight <= 150
    return "Enter"
  else
    return "You shall not pass!"
  end
end

print "Please enter your height in cm: "
input_height = gets.chomp().to_i()
print "Please enter your weight in kg: "
input_weight = gets.chomp().to_i()

#call the function
puts enter_ride(input_height, input_weight)
