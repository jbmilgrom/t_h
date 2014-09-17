class Inventory  

  @@inventory = {}

  # inventory can be accessed as a whole outside of class
  def self.contains?(item)
    @@inventory.keys.include?(item)
  end 

  def self.set_price(item, price)
    @@inventory[item] = { "price" => price }
  end

  def self.price(item)
    @@inventory[item]["price"] if @@inventory[item]["price"]
  end

  def self.set_deal(item, quantity, price)
    @@inventory[item]["deal"] = { "quantity" => quantity, "price" => price }
  end

  def self.deal(item)
    @@inventory[item]["deal"] if @@inventory[item]["deal"]
  end

end
