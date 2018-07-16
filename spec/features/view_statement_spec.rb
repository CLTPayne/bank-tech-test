require 'account'

describe 'View bank statement feature' do

  it 'prints a tidy history of transactions' do
    account = new Account
    account.deposit(1000, "10/01/2012")
    account.deposit(2000, "13/01/2012")
    account.withdraw(500, "14/01/2012")
    statement =
      "date || credit || debit || balance
      14/01/2012 || || 500.00 || 2500.00
      13/01/2012 || 2000.00 || || 3000.00
      10/01/2012 || 1000.00 || || 1000.00"
    expect(Printer.display_statement(account)).to eql(statement)
  end

end
