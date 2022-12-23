require 'pry'

class CashRegister

    attr_reader :discount, :items, :last_price
    attr_accessor :total, :last_price

def initialize employee_discount=0
    @total = 0
    @discount = employee_discount
    @items = []
    @last_price = 0
end

# def employee_discount
#     @employee_discount
# end

def add_item title, price, quantity=1
    @title = title
    # @quantity = quantity
    # puts total * quantity
    self.total += price * quantity
    self.last_price = price * quantity
    # self.items << title * quantity
    quantity.times do
        self.items << title
    end
end

def apply_discount
    if self.discount > 0
    self.total = self.total - (self.total * (self.discount * 0.01))
    # self.total = self.total - (self.discount.to_f / 100) * self.total
    "After the discount, the total comes to $#{self.total.to_i}."
    else 
        "There is no discount to apply."
    end
end

# def items
    # @items = []
#     @items
#     items.push[self.title]
# end

def void_last_transaction
    self.total = self.total - self.last_price
end

end

binding.pry

# fido = CashRegister.new(0)
# fido.add_item("Soap", 3, 2)
# fido.apply_discount(10)