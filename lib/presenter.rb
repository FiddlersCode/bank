require_relative 'account'

class Presenter
  attr_reader :print_array
  def initialize
    @print_array = []
  end

  def format_history
    show_headers
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

#
# show_headers
# format_transactions
# puts @print_array.join("\n")
