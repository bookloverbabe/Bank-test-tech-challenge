class Statement
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
end