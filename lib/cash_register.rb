
class CashRegister
    
    attr_accessor :total,:discount,:last_price

    def initialize(discount = 0)        
        @total=0  
        @discount=discount 
        @itemArray=[]
        @last_price = 0
               
    end    
    

    def add_item(title,price,quantity=1)
            
        @last_price = (price * quantity)       
        @total += (price * quantity)       
        
        quantity.times do
        @itemArray << title    
        end  
    end

    def apply_discount
        if (discount > 0)
      @total -= @total * (discount.to_f / 100.0 ) 
      "After the discount, the total comes to $#{@total.to_i}." 
        else
            "There is no discount to apply."   
        end  
    end

    def items()        
        @itemArray        
    end
    
    def void_last_transaction 
        @total -= @last_price
    end

end

