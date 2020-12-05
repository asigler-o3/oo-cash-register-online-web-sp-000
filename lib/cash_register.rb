class CashRegister

  attr_accessor :total, :discount, :price, :items

    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(price, quantity = 1)
      @price = price
      @total += price * quantity
    end

    def apply_discount
      if discount > 0 && total
        self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
        return "After the discount, the total comes to $#{total}."
      else
        return "There is no discount to apply."
      end
    end

    def items (item, quantity = 1)
      if quantity > 1
        counter = 0
        while counter < quantity
          @items << item
          counter += 1
        end
      else
        @items << item
      end
    end

    def void_last_transaction
      @total -= @price
      return @total
    end
end
