require 'time'
# This class defines the data, and inherits the actions from the account class. The definition
class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(date, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def deposit(amount)
    @balance += @credit
  end

  def withdrawal(amount)
    @balance -= @debit
  end

  def date(date)
    @date = Time.strptime(date, '%d-%m-%Y').strftime('%d-%m-%Y') 
  end

end
