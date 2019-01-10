require("pry")

def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if food == snack
      return true
    end
  end
  return false
end

# def likes_to_eat(person, food)
# return person[:favourites][:snacks].include?(food)


def add_friend(person, friend)
  person[:friends] << friend
  return person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].length
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
return total
end

def money_lending(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def all_foods(people)
  food_arrays = []
  for person in people
    food_arrays += person[:favourites][:snacks]
  end
  return food_arrays
end

def no_friends(people)
  no_friends = []
  for person in people
    if person[:friends].empty?
      no_friends.push(person)
    end
  end
  return no_friends 
end



end
