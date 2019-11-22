def pet_shop_name(name)
  return name[:name]
end

def total_cash(name)
  return name[:admin][:total_cash]
end

def add_or_remove_cash(name, number)
  return name[:admin][:total_cash] = name[:admin][:total_cash] + number
end
