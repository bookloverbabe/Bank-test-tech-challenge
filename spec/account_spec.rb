require 'account'

RSpec.describe Account do
  it "initializes with an empty bank account" do
    account = Account.new
    expect(account.bank_statement).to eq([])
  end

  context "returns the balance after user deposits and withdraws a sum" do
    it "user deposits £15" do
      account = Account.new
      expect(account.deposit(15)).to eq("15 deposited")
    end
    it "user withdraws £10" do
      account = Account.new
      expect(account.withdrawal(10)).to eq("10 withdrawn")
    end
  end

  context "returns the date" do
    it "returns the date of 22th May 2023" do
      account = Account.new
      expect(account.date).to include('23-07-2023')
    end
  end
  context "Is the input a number?" do
    it "checks if the amount is a number that is positive" do
      account = Account.new
      expect(account.valid?(500)). to eq (true)
    end
    it "returns error message as the input is not a valid number" do
      account = Account.new
      expect{account.check('cheese')}.to raise_error "Error: please enter a valid amount"
    end
  end
end