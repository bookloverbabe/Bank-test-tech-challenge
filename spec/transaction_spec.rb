# require 'transaction'

# RSpec.describe Transaction do
#   describe "initilize" do
#     it "has a date" do
#       transaction = Transaction.new('12-12-2012', 5, 10, 15)
#       expect(transaction.date).to include('12-12-2012')
#     end
#     it "contains a credit amount" do
#       transaction = Transaction.new('12-12-2012', 5, 10, 15)
#       expect(transaction.credit).to include(5)
#     end
#     it "contains a debit amount" do
#       transaction = Transaction.new('12-12-2012', 5, 10, 15)
#       expect(transaction.debit).to include(10)
#     end
#     it "contains a balance amount" do
#       transaction = Transaction.new('12-12-2012', 5, 10, 15)
#       expect(transaction.balance).to include(15)
#     end
#   end  
# end