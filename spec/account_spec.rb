require "account"

RSpec.describe Account do
  it "initializes" do
    account = Account.new
    # The balance returns 0
    expect(account.balance).to eq(0)
  end

  context "returns the balance after user deposits a sum" do
    it "user deposits £5" do
      account = Account.new
      expect(account.credit(5)).to eq ("5 deposited")
    end
    it "user deposits £30.25" do
      account = Account.new
      expect(account.credit(30.25)).to eq("30.25 deposited")
    end
  end
  context "returns the balance after user withdraws an amount" do
    it "user withdraws £1" do
      account = Account.new
      expect(account.debit(1)).to eq ("1 withdrawn")
    end
    it "user withdraws £10" do
      account = Account.new
      expect(account.debit(10)).to eq ("10 withdrawn")
    end
  end
  context "returns the date" do
    it "returns the date of 22th May 2023" do
      account = Account.new
      expect(account.date).to eq ('23-07-2023')
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

  context "the user does not input or number" do
    it "returns the latest balance, which is £5" do
      account = Account.new
      expect(account.zero_amount(0)). to eq (0)
    end
    # it "returns the latest balance, which is £5" do
    #   account = Account.new
    #   result_one = account.credit(5)
    #   # result_two = account.balance
    #   expect(account.zero_amount(0)).to eq (5)
    # end
  end
end