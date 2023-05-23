require 'time'

class Account
# This class explains what the data does
# return the date || credit || debit || balance.
# statement is comprised of key, the date, and the value, amount and balance
  # Initialize calls upon the 
  def initialize
    @balance = []
  end

  def balance
    return @balance.sum
  end
  
  # Credit is a deposit, use dependancy injection from transaction class
  def credit(amount)
    @balance.sum(amount)
      return "#{amount} deposited"
  end

  # Debit is a withdrawal
  def debit(amount)
    @balance.sum(- amount)
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
  
  # If the user does not  input an amount, return the balance
  def zero_amount(amount)
    if amount == 0
      return @balance.sum
    end
  end
end