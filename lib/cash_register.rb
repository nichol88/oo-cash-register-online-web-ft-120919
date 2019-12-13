class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    d = (100.00 - @discount) / 100.00
    @total += price * quantity * @discount

  end
end
