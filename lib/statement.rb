# This class explains the format of the statement. The format
# Takes the bank_statement instance variable from account class which contains the data, and formats it
# Format = "date || credit || debit || balance\n"
DIVIDER = "||"

class Statement
  def print_statement(bank_statement)
    # print_heading
    bank_statement.each { |transaction| puts transaction.date + "||" + transaction.credit.to_s + "||" +  transaction.debit.to_s + "||" + transaction.balance.to_s }.join(',')
  end
end

  # def print_heading
  #   puts 'date || credit || debit || balance'
  # end
