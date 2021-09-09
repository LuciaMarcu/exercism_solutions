module SavingsAccount
    
    @interest_rate
    
    def self.interest_rate(balance)        
        if balance < 0
            @interest_rate = -3.213      
        elsif balance.between?(0, 999.999)
            @interest_rate = 0.5      
        elsif balance.between?(1000, 4999.999)
            @interest_rate = 1.621      
        else
            @interest_rate = 2.475   
        end  
    
    end

    def self.annual_balance_update(balance)
        interest_rate(balance)
        if balance < 0
            @interest_rate = 3.213
        end
        net_interest = balance * @interest_rate / 100    
        balance_update = balance + net_interest   
    end

    def self.years_before_desired_balance(current_balance, desired_balance) 
        year = 0
        until current_balance >= desired_balance
            current_balance = annual_balance_update(current_balance)
            year += 1
        end
        year
    end

end