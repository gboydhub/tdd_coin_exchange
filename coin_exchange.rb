def coin_exchange(cents)
  coins_back = {}
  while cents > 0 do
    if cents >= 5
      coins_back[:nickel] = 1
      cents -= 5
    elsif cents >= 1
      coins_back[:penny] = 1
      cents -= 1
    end
  end
  coins_back
end