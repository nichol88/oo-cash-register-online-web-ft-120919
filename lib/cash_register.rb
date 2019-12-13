class CashRegister

  attr_accessor :discount, :total
  ITEMS = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    ITEMS << title
    @total += price * quantity

  end

  def apply_discount
    d = (100.00 - @discount) / 100.00
    @total *= d
    if @discount != 0
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    ITEMS
  end

end
