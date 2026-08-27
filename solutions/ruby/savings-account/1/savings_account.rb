module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      3.213
    elsif balance < 1000 and balance >= 0
      0.5
    elsif balance >= 1000 and balance < 5000
      1.621
    else 
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    cur_bal = current_balance
    counter = 0
    
    while cur_bal < desired_balance
      cur_bal = annual_balance_update(cur_bal)
      counter += 1
    end

    counter
  end
end
