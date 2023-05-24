# This class explains the format of the statement. The format
# Takes the bank_statement instance variable from account class which contains the data, and formats it
# Format = "date || credit || debit || balance\n"

class Statement
  def print_statement(bank_statement)
    print_heading
    bank_statement.each { |transaction| puts transaction.date + "||" + transaction.credit('%#.2f') + "||" +  transaction.debit('%#.2f') + "||" + transaction.balance('%#.2f')}
  end

  def print_heading
    puts 'date || credit || debit || balance'
  end
end
