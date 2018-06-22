def coin_exchange(cents)
  coins_back = {}
  while cents > 0 do
    if cents >= 25
      unless coins_back[:quarter]; coins_back[:quarter] = 0; end
      
      coins_back[:quarter] += 1
      cents -= 25
    elsif cents >= 10
      unless coins_back[:dime]; coins_back[:dime] = 0; end
      coins_back[:dime] += 1
      cents -= 10
    elsif cents >= 5
      unless coins_back[:nickel]; coins_back[:nickel] = 0; end
      coins_back[:nickel] += 1
      cents -= 5
    elsif cents >= 1
      unless coins_back[:penny]; coins_back[:penny] = 0; end
      coins_back[:penny] += 1
      cents -= 1
    end
  end
  coins_back
end