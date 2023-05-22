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
      expect(account.credit(5)).to eq(5)
    end
    it "user deposits £30.25" do
      account = Account.new
      expect(account.credit(30.25)).to eq(30.25)
    end
  end
  context "returns the balance after user withdraws an amount" do
    it "user withdraws £1" do
      account = Account.new
      expect(account.debit(1)).to eq (-1)
    end
    it "user withdraws £10" do
      account = Account.new
      expect(account.debit(10)).to eq (-10)
    end
  end
  context "returns the date" do
    it "returns the date of 22th May 2023" do
      account = Account.new
      expect(account.date).to eq ('23-07-2023')
    end
  end
end