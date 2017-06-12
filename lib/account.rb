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
    create_transation
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

  def create_transation
    transaction = []
    transaction << @transaction_date
    transaction << @amount
    transaction << @balance
    @transactions << transaction
  end



  def format_transactions
    @transactions.each do | transaction |
      @string = transaction.join(" || ")
      @print_array << @string
    end
  end

end
