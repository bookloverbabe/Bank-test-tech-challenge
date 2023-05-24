# require './lib/account'

# This class explains the format of the statement. The format
# Takes the bank_statement instance variable from account class which contains the data, and formats it
# Format = "date || credit || debit || balance\n"
DIVIDER = "||"

class Statement < Account
  def print_statement(bank_statement)
    bank_statement.each { |record| puts transaction.date + DIVIDER +  transaction.credit + DIVIDER + transaction.debit + DIVIDER + transaction.balance }
  end
end