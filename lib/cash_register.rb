require 'pry'

class CashRegister

    attr_reader :discount
    attr_accessor :total, :items, :last_price

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_price
    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            self.items << title
        end
        @last_price = price * quantity
        @total += price * quantity
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            new_total = @total * @discount / 100
            @total -= new_total
            "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total -= @last_price
    end

    # binding.pry

end