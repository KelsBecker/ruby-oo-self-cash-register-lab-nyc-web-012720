class CashRegister
    attr_accessor :items, :discount, :total

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
          items << title
        end
    end

    def apply_discount
        self.total *= (1 - 0.20)
        
        if total != 0
            return "After the discount, the total comes to $#{total.to_i}."
        else
            puts "There is no discount to apply."
        end

    end


end

