class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else
      p "You cannot withdraw more than your balance."
    end
  end

end
