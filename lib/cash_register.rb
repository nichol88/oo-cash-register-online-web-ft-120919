class CashRegister

  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)

    @total += price * quantity

  end

  def apply_discount
    d = (100.00 - @discount) / 100.00
    @total *= d
    "After the discount, the total comes to $#{@total.to_i}."
  end
end
