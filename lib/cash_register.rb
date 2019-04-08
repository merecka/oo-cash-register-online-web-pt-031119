require 'pry'

class CashRegister

#  @@total_bill = nil

  attr_accessor :total, :discount, :price, :quantity, :items

  def initialize(discount=0)
    @total = 0.to_f
    @discount = discount.to_f
  end

  # def self.total
  #   @@total_bill
  # end

  def add_item(item, price, quantity=1)
    self.items << item
    self.total = self.total + (price * quantity)
  #  binding.pry
  end

#  binding.pry
  def apply_discount
    if self.discount != 0
      perc_disc = ((100-self.discount)/100)
      self.total = self.total * perc_disc
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    
  end

end
