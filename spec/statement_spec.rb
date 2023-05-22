require "statement"

RSpec.describe Statement do
  it "initializes" do
    statement = Statement.new
    # The balance returns 0
    expect(statement.balance(0)).to eq(0)
  end
end