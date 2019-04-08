require 'pry'

class CashRegister

  @@total_bill = nil

  attr_accessor :total, :discount, :price, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def self.total
    @@total_bill
  end

  def add_item(item, price, quantity=1)
    @total += (price * quantity)
  #  binding.pry
  end

#  binding.pry
  def apply_discount
    if @discount != 0
      self.total = @total * ((100-@discount)/100)
    #  binding.pry
      "After the discount, the total comes to $#{@@total}."
    else
      "There is no discount to apply."
    end
#    binding.pry
    @total
  end

end
