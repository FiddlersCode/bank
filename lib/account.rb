class Account
  attr_reader :balance, :transaction_date, :show_history, :transactions
  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
    @transactions = []
    @print_array = []
  end

  def transact(amount)
    @amount = amount
    @balance += amount
    @transaction_date = Time.new.strftime "%d/%m/%Y"
    record_transaction
  end

  private

  def record_transaction
    transaction = []
    transaction << @transaction_date
    transaction << @amount
    transaction << @balance
    @transactions << transaction
  end
end
