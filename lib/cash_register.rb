class CashRegister
    attr_accessor :items, :discount, :total

    def initialize(discount=0)
        #'sets an instance variable @total on initialization to zero'
        @total = 0
        #'optionally takes an employee discount on initialization' 
        @discount = discount
        #'items returns an array containing all items that have been added'
        @items = []
        @last_transaction_amount = 0

    end

    def add_item(title,price,quantity=1) #instance method

        #'accepts a title and a price and increases the total' 
        @total += price * quantity 

        #'also accepts an optional quantity'
        quantity.times do #For quantity add each item to [items]
            items << title
        end

        #"doesn't forget about the previous total"
        self.last_transaction_amount = price * quantity
    end

    def apply_discount #instance method
        if discount != 0
            self.total = (total.to_f - (total.to_f * (discount.to_f/100)))
            p "After the discount, the total comes to #{self.total}"
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
