###### DATA FOR DEBUGGING #######
customers = [
  {
    name: "Alice",
    pets: [],
    cash: 1000
  },
  {
    name: "Bob",
    pets: [],
    cash: 50
  },
  {
    name: "Jack",
    pets: [],
    cash: 100
  }
]

pet_shop = {
  pets: [
    {
      name: "Sir Percy",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "King Bagdemagus",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "Sir Lancelot",
      pet_type: :dog,
      breed: "Pomsky",
      price: 1000,
    },
    {
      name: "Arthur",
      pet_type: :dog,
      breed: "Husky",
      price: 900,
    },
    {
      name: "Tristan",
      pet_type: :dog,
      breed: "Basset Hound",
      price: 800,
    },
    {
      name: "Merlin",
      pet_type: :cat,
      breed: "Egyptian Mau",
      price: 1500,
    }
  ],
  admin: {
    total_cash: 1000,
    pets_sold: 0,
  },
  name: "Camelot of Pets"
}

####### END OF DATA FOR DEBUGGING ########


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

def customer_cash(customers_index)
  return customers_index[:cash]
end

def remove_customer_cash(customers_index, amount_to_remove)
  customers_index[:cash] -= amount_to_remove
end

def customer_pet_count(customers_index)
customers_index[:pets].count()
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
  if new_pet != nil
    customer_index[:pets].push(new_pet)

    number_sold = 1
    increase_pets_sold(pet_shop,number_sold)

    pet_cost = new_pet[:price]
    customer_index[:cash] -= pet_cost
    pet_shop[:admin][:total_cash] += pet_cost
  else
  end
end


























def thing
end
