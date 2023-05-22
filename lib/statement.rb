class Statement
  def initialize
    @balance = []
  end

  def balance(amount)
    return @balance.sum(amount)
  end

end