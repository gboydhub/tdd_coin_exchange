def coin_exchange(cents)
  coins_back = {}
  while cents > 0 do
    if cents >= 25
      coins_back[:quartar] = 1
      cents -= 25
    elsif cents >= 10
      coins_back[:dime] = 1
      cents -= 10
    elsif cents >= 5
      coins_back[:nickel] = 1
      cents -= 5
    elsif cents >= 1
      coins_back[:penny] = 1
      cents -= 1
    end
  end
  coins_back
end