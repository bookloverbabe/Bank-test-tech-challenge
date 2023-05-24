require 'time'
require_relative 'transaction'

# This class explains what the data does. The action.
class Account < Transaction
  ERROR = "Error: please enter a valid amount"
  attr_accessor :bank_statement
  def initialize
    @bank_statement = []
  end

  def create_transaction(date, credit, debit, balance)
    transaction = Transaction.new(date, credit, debit, balance)
    @bank_statement << transaction
  end
  
  # Deposit = credit
  def deposit(amount)
    return "#{amount} deposited"
  end

  # Withdrawal = debit
  def withdrawal(amount)
    return "#{amount} withdrawn"
  end

  def valid?(amount)
    (amount.is_a? Numeric) && amount.positive?
  end

  def check(amount)
    fail ERROR unless valid?(amount)
  end
end