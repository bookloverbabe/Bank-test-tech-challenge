require "account"

# This class defines the data, and inherits the actions from the account class
class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

end
