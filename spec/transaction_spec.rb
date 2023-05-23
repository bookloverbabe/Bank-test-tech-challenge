require "transaction"

RSpec.describe Transaction do
  describe "initilize" do
    transaction = Transaction.new('12-12-2012', 5, 10, 15)
      it "has a date" do
        expect(transaction.date). to eq('12-12-2012')
      end
  end
end