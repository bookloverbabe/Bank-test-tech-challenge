# require './lib/transaction'
# require './lib/account'

# Takes the definitions from transactions and formats it here
# This class explains the format of the statement. The format
# Constants below show how the statement should look
# HEADING = "date || credit || debit || balance\n"
# # DIVIDER = " ||"
# class Statement(transaction)
#   def print_statement
#     transaction.each do |record|
#       p record(record)
#   end
# end