def pet_shop_name(shop)
return shop[:name]
end

def total_cash(shop)
return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, sale_price)
  shop[:admin][:total_cash] += sale_price
end

def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold)
shop[:admin][:pets_sold] += sold
end

def stock_count(shop)
  return shop[:pets].count()
end

def pets_by_breed(shop, breed)
dog_breed = []
for pets in shop[:pets]
  if pets[:breed] == breed
    dog_breed.push(pets)
  end

end
return dog_breed
end

def find_pet_by_name(shop, name)
  for pets in shop[:pets]
    if pets[:name] == name
      return pets
    end
end
return nil
end

def remove_pet_by_name(shop, name)

pet = find_pet_by_name(shop, name)
shop[:pets].delete(pet)
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
return customer[:cash]
end

def remove_customer_cash(customer, cash)
customer[:cash]=customer[:cash]-cash
end

def customer_pet_count(customer)
return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
customer[:pets].push(new_pet)
end
