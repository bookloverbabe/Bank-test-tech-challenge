require 'time'

class Account
# return the date || credit || debit || balance.
# statement is comprised of key, the date, and the value, amount and balance
  def initialize
    @balance = []
  end

  def balance
    return @balance.sum
  end
  
  # Credit is a deposit
  def credit(amount)
    return @balance.sum(amount)
  end

  # Debit is a withdrawal
  def debit(amount)
    return @balance.sum(- amount)
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