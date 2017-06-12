class Account
  attr_reader :balance, :deposit_date, :withdrawal_date, :show_history, :transactions
  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
    @transactions = []
    @print_array = []
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
    create_withdrawal
  end

  def print_history
    show_headers
    format_transactions
    puts @print_array.join("\n")
  end

  private

  def show_headers
    p 'date || credit || debit || balance'
  end

  def create_deposit
    transaction = []
    transaction << @deposit_date
    transaction << '%.2f' % @amount
    transaction << ""
    transaction << '%.2f' % @balance
    @transactions << transaction
  end

  def create_withdrawal
    transaction = []
    transaction << @withdrawal_date
    transaction << ""
    transaction << '%.2f' % @amount
    transaction << '%.2f' % @balance
    @transactions << transaction
  end

  def format_transactions
    @transactions.each do | transaction |
      @string = transaction.join(" || ")
      @print_array << @string
    end
  end

end
