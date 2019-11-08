

def pet_shop_name(pet_shop)
return pet_shop[:name]
end

def total_cash(pet_shop)
return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,cash)
pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,number_sold)
  pet_shop[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop)
pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed)
  pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets.push(pet[:name])
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
    return pet
    end
  end
  nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
    pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
pet_shop[:pets].push(new_pet)
end

def customer_cash(customer_index)
  return customer_index[:cash]
end

def remove_customer_cash(customer_index, amount_to_remove)
  customer_index[:cash] -= amount_to_remove
end

def customer_pet_count(customer_index)
customer_index[:pets].count()
end

def add_pet_to_customer(customer_index, new_pet)
customer_index[:pets].push(new_pet)
end

###### OPTIONAL ######

def customer_can_afford_pet(customer_index, new_pet)
  if customer_index[:cash] >= new_pet[:price]
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, new_pet, customer_index)
  if new_pet != nil && customer_can_afford_pet(customer_index, new_pet) == true

    customer_index[:pets].push(new_pet)

    number_sold = 1
    increase_pets_sold(pet_shop,number_sold)

    pet_cost = new_pet[:price]
    remove_customer_cash(customer_index, pet_cost)
    add_or_remove_cash(pet_shop, pet_cost)
  else
  end
end
### additonal addional ###
# as the pet has been sold it should be removed from the stock
def sell_pet_to_customer_and_remove(pet_shop, new_pet, customer_index)
  if new_pet != nil && customer_can_afford_pet(customer_index, new_pet) == true

    customer_index[:pets].push(new_pet)

    number_sold = 1
    increase_pets_sold(pet_shop,number_sold)

    pet_cost = new_pet[:price]
    remove_customer_cash(customer_index, pet_cost)
    add_or_remove_cash(pet_shop, pet_cost)

    pet_name = new_pet[:name]
    remove_pet_by_name(pet_shop, pet_name)

  else
  end
end
