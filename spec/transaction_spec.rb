require 'transaction'

RSpec.describe Transaction do
  describe "initialize" do
    it "has a date" do
      transaction = Transaction.new('12-12-2012', 5, 10, 15)
      expect(transaction.date('12-12-2012')).to eq('12-12-2012')
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
  context "define deposit and withdrawal" do
    it "user deposits £5" do
      transaction = Transaction.new('12-12-2012', 20, 10, 30)
      expect {transaction.deposit(20)}.to change {transaction.balance}.by(20)
    end
    it "user withdraws £10" do
      transaction = Transaction.new('12-12-2012', 20, 10, 30)
      expect {transaction.withdrawal(10)}.to change {transaction.balance}.by(-10)
    end
  end
  context "returns the date" do
    it "returns the date of 22th May 2023" do
      account = Account.new
      expect(account.date('23-07-2023')).to eq('23-07-2023')
    end
  end
end