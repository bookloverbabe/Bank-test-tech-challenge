require "statement"

RSpec.describe Statement do
  it "initializes" do
    statement = Statement.new
    # The balance returns 0
    expect(statement.balance).to eq(0)
  end

  context "returns the balance after user deposits a sum" do
    it "user deposits £5" do
      statement = Statement.new
      expect(statement.credit(5)).to eq(5)
    end
    it "user deposits £30.25" do
      statement = Statement.new
      expect(statement.credit(30.25)).to eq(30.25)
    end
  end
  context "returns the balance after user withdraws an amount" do
    it "user withdraws £1" do
      statement = Statement.new
      expect(statement.debit(1)).to eq (-1)
    end
    it "user withdraws £10" do
      statement = Statement.new
      expect(statement.debit(10)).to eq (-10)
    end
  end
end