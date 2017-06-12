class Account
  attr_reader :balance, :deposit_date, :withdrawal_date

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    @deposit_date = Time.now.strftime "%d/%m/%Y"
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else
      p "You cannot withdraw more than your balance."
    end
    @withdrawal_date = Time.new.strftime "%d/%m/%Y"
  end

end
