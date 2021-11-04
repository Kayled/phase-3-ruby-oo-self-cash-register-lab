class CashRegister
attr_accessor :total    
attr_reader :discount, :items

    def initialize (discount=0)
        @total = 0
        @discount = discount 
        @items = []
    end

    def add_item (title, price, quantity=1)
        quantity.times do 
        self.items << title
        end
        
        self.total = self.total + price * quantity
    end

    def apply_discount
        if self.discount == 0 
           return "There is no discount to apply."
        end
        amount_to_remove = self.total * (discount / 100.to_f)
        self.total = self.total - amount_to_remove 
        "After the discount, the total comes to $#{total.to_i}."
    end

    


    
end
