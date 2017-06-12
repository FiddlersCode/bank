class Account
  attr_reader :balance, :deposit_date, :withdrawal_date, :show_history, :transactions
  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
    @transactions = []
  end

  def deposit(amount)
    @amount = amount
    @balance += @amount
    @deposit_date = Time.now.strftime "%d/%m/%Y"
    create_deposit
  end

  def withdraw(amount)
    @amount = amount
    if amount <= @balance
      @balance -= amount
    else
      p "You cannot withdraw more than your balance."
    end
    @withdrawal_date = Time.new.strftime "%d/%m/%Y"
  end

  def show_history
    p 'date || credit || debit || balance'

  end

  private
  def create_deposit
    @transactions << @deposit_date
    @transactions << @amount
    @transactions << @balance
  end

  def add_to_history

  end

end
