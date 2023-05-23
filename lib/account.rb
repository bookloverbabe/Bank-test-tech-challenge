require 'time'
require_relative 'transaction'

# This class explains what the data does. The action.
class Account < Transaction
  attr_accessor :bank_statement
  def initialize
    @bank_statement = []
  end

  def create_transaction(date, credit, debit, balance)
    transaction = Transaction.new(date, credit, debit, balance)
    @bank_statement << transaction
    # @bank_statement.push(date, credit, debit, balance)
  end

  def credit(amount)
    @transaction.balance += @transaction.credit
      return "#{amount} deposited"
  end

  # Debit is a withdrawal
  def debit(amount)
    @transaction.balance -= @transaction.debit
      return "#{amount} withdrawn"
  end

  def date
    return Time.strptime('23-07-2023', '%d-%m-%Y').strftime('%d-%m-%Y') 
  end

  def valid?(amount)
    (amount.is_a? Numeric) && amount.positive?
  end

  def check(amount)
    fail "Error: please enter a valid amount" unless valid?(amount)
  end
  
  # If the user does not input an amount, return the balance
  def zero_amount(amount)
    if amount == 0
      return @transaction.balance.sum
    end
  end
end