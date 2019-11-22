def pet_shop_name(name)
  return name[:name]
end

def total_cash(name)
  return name[:admin][:total_cash]
end

def add_or_remove_cash(name, number)
  return name[:admin][:total_cash] += number
end

def pets_sold(pets)
  return pets[:admin][:pets_sold]
end

def increase_pets_sold(name, pets)
  return name[:admin][:pets_sold] += pets
end

def stock_count(name)
  number_of_pets = name[:pets].length
  return number_of_pets
end

def pets_by_breed(names, breed)
pets_of_particuar_breed = []
  for name in names[:pets]
    pets_of_particuar_breed.push(name) if name[:breed] == breed 
    # if name[:breed] == breed
    #   pets_of_particular_breed.push(name)
    # end
  end
  return pets_of_particuar_breed
end
