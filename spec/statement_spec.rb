require 'statement'

RSpec.describe "Statement" do
  describe "print_statement" do
    it "print the statement" do
      statement = Statement.new
      bank_statement = ['12-12-2012', 5 , 10, 15]
      expect(statement.print_statement(bank_statement)).to include( '12-12-2012' || '5' || '10' || '15' )
    end
  end
end