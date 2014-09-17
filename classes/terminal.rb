  
class Terminal

  def initialize
    @counter = {}
  end

  # enables setting price from an instance of Terminal (giving Terminal the necessary functionality without exposing all of Inventory)
  def set_price(item, price)
    Inventory.set_price(item, price)
  end
  
  # enables setting deal specs from an instance of Terminal (giving Terminal the necessary functionality without exposing all of Inventory)
  def set_deal(item, quantity, price)
    Inventory.set_deal(item, quantity, price)
  end

  def scan(item)
    if Inventory.inventory.keys.include?(item)
      @counter[item] = 0 unless @counter[item]
      @counter[item] += 1
    else
      puts "error: item not registered"
    end
  end

  def total
    total = 0
    @counter.each do |item, count|
      total += total_per(item, count)
    end
    return dollar_format(total)
  end

  def total_per(item, count)
    price_per_item = Inventory.price(item)
    if Inventory.deal(item)
      deal = Inventory.deal(item)
      # price of remainder plus price of number of multiples of deal quantity
      return ( count % deal["quantity"] ) * price_per_item + ( count / deal["quantity"] ) * deal["price"] 
    else 
      return count * price_per_item
    end
  end

  def dollar_format(total)
    "$%.2f" % total
  end

end