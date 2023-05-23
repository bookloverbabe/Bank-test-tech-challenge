require "transaction"

RSpec.describe Transaction do
  describe "initilize" do
    transaction = Transaction.new('12-12-2012', 5, 10, 15)
      it "has a date" do
        expect(transaction.date).to eq('12-12-2012')
      end
      it "contains a credit amount" do
        expect(transaction.credit).to eq(5)
      end
      it "contains a debit amount" do
        expect(transaction.debit).to eq(10)
      end
      it "contains a balance amount" do
        expect(transaction.balance).to eq(15)
      end
  end
end