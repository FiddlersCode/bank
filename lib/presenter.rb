class Presenter
  def print_history
    show_headers
    format_transactions
    puts @print_array.join("\n")
  end

  private

  def show_headers
    p 'date || credit || debit || balance'
  end

  def format_transactions
    @transactions.each do | transaction |
      @string = transaction.join(" || ")
      @print_array << @string
    end
  end
end
