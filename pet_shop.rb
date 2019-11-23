def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(shop_name)
  return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, cash_being_added_or_removed)
  return shop_name[:admin][:total_cash] += cash_being_added_or_removed
end

def pets_sold(shop_name)
  return shop_name[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, pets)
  return shop_name[:admin][:pets_sold] += pets
end

def stock_count(pet_name)
  return pet_name[:pets].length
end

def pets_by_breed(petshop, search_breed)
  pets_of_particuar_breed = []
  for individual_pet in petshop[:pets]
    pets_of_particuar_breed.push(individual_pet) if individual_pet[:breed] == search_breed
  end
  return pets_of_particuar_breed
end

def find_pet_by_name(shop_name, pet_name)
  for whole_pet in shop_name[:pets]
    return whole_pet if whole_pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(shop_name, pet_name)
  for each_pet in shop_name[:pets]
    shop_name[:pets].delete(each_pet) if each_pet[:name] == pet_name
  end
end

def add_pet_to_stock(shop_name, new_pet)
  shop_name[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer (shop_name, whole_pet, customer)

  if whole_pet == nil
    return nil
  else
    #check customer has cash
    if customer_can_afford_pet(customer, whole_pet)
    #subtract price of pet from customer's cash
      #remove_cutomer_cash(customer, whole_pet)
      customer[:cash] -= whole_pet[:price]
    #increase total cash amount for shop to reflect sale
      shop_name[:admin][:total_cash] += whole_pet[:price]
    #add pet to customer's tally
      add_pet_to_customer(customer, whole_pet)
    #delete pet from shop
      shop_name[:pets].delete(whole_pet)
    #update number of pets sold
      shop_name[:admin][:pets_sold] += 1
    end
  end

end
