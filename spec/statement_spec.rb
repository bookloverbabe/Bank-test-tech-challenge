require 'statement'
RSpec.describe "Statement" do
  describe "print_statement" do
  let(:transaction1) { double(:transaction, date: '12-12-2012', credit: 5, debit: 10, balance: 15) }
    before do
      statement = Statement.new
      bank_statement = [transaction1]
      allow(statement).to receive(statement.print_statement(transaction1)).and_return('12-12-2012 || 5 || 10 || 15')
    end
  end
end