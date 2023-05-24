require 'statement'
RSpec.describe "Statement" do
  describe "print_statement" do
    let(:transaction1) {double( date: '12-12-2012', credit: 5.00, debit: 10.00, balance: 15.00) }
    let(:transaction2) {double( date: '24-05-2023', credit: 1000.00, debit: 10.00, balance: 990.00) }
    context "checks the output" do
      before do
        statement = Statement.new
        print_heading = 'date || credit || debit || balance'
        result = [transaction1] + print_heading
        allow(statement).to receive(statement.print_statement(transaction1)).and_return(result)
      end
    end
    context "checks the output again" do
      before do
        statement = Statement.new
        print_heading = 'date || credit || debit || balance'
        result = [transaction2] + print_heading
        allow(statement).to receive(statement.print_statement(transaction1)).and_return(result)
      end
    end
  end
end