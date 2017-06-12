require_relative './presenter.rb'
class Account
  attr_reader :balance, :transaction_date, :transactions
  INITIAL_BALANCE = 0

  def initialize
    @balance = INITIAL_BALANCE
    @transactions = []
  end

  def transact(amount)
    @amount = amount
    @balance += amount
    @transaction_date = Time.new.strftime "%d/%m/%Y"
    record_transaction
  end

  def print_history(presenter = Presenter.new)
    presenter.format_history
  end

  private

  def record_transaction
    transaction = []
    transaction.push(@transaction_date, "%.2f" % @amount, "%.2f" % @balance)
    @transactions << transaction
  end
end
