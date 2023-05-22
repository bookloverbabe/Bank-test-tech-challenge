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
  end

end