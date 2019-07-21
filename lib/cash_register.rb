class CashRegister
    attr_accessor :items, :discount, :total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction_amount = 0

    end

    def add_item(title,price,quantity=1) #instance method
        @total += (price * quantity)
        quantity.times do
            items << title
        end
        @last_transaction_amount = price * quantity           
    end

    def apply_discount #instance method
        if discount != 0
            @total = (total.to_f - (total.to_f * (discount.to_f/100)))
            p "After the discount, the total comes to $#{@total}"
        else p "There is no discount to apply"
        end
    end
        #'applies the discount to the total price'
        #'returns success message with updated total' 
        #'reduces the total'

        #if no employee discount
        #'returns a string error message that there is no discount to apply'
        

    def void_last_transaction #instance method
        #'subtracts the last transaction from the total'
    end

        


end
