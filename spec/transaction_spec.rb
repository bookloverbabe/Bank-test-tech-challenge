require 'transaction'

RSpec.describe Transaction do
  describe "initialize" do
    it "has a date" do
      transaction = Transaction.new('12-12-2012', 5, 10, 15)
      expect(transaction.date).to eq('12-12-2012')
    end
    it "contains a credit amount" do
      transaction = Transaction.new('12-12-2012', 5, 10, 15)
      expect(transaction.credit).to eq(5)
    end
    it "contains a debit amount" do
      transaction = Transaction.new('12-12-2012', 5, 10, 15)
      expect(transaction.debit).to eq(10)
    end
    it "contains a balance amount" do
      transaction = Transaction.new('12-12-2012', 5, 10, 15)
      expect(transaction.balance).to eq(15)
    end
  end  
end