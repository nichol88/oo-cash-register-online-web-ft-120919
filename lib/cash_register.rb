class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = (100.00 - discount) / 100.00
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity

  end
end
