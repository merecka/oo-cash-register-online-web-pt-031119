require 'pry'

class CashRegister

#  @@total_bill = nil

  attr_accessor :total, :discount, :price, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount.to_i
  end

  # def self.total
  #   @@total_bill
  # end

  def add_item(item, price, quantity=1)
    self.total = self.total + (price * quantity)
  #  binding.pry
  end

#  binding.pry
  def apply_discount
  #  binding.pry
    if self.discount != 0
      binding.pry
      self.total = self.total * ((100-self.discount.to_i)/100)
    #  binding.pry
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
#    binding.pry
    self.total
  end

end
