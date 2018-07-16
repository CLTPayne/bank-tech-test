Bank Tech Test Challenge
=================

### Quickstart:
#### How to install the code:
Use Ruby 2.5.1
```
$ git clone https://github.com/CLTPayne/bank-tech-test.git
$ cd bank-tech-test
$ bundle install
```
#### How to use the application:
1. Open IRB
2. Example interaction:
```
2.5.1 :001 > require './lib/account.rb'
 => true
2.5.1 :002 > account = Account.new
 => #<Account:0x00007ff7f30aaa58 @balance=0, @transactions=[]>
2.5.1 :003 > account.deposit(1000, "10/01/2012")
 => [{:date=>"10/01/2012", :credit=>1000, :debit=>0, :balance=>1000}]
2.5.1 :004 > account.deposit(2000, "13/01/2012")
 => [{:date=>"10/01/2012", :credit=>1000, :debit=>0, :balance=>1000}, {:date=>"13/01/2012", :credit=>2000, :debit=>0, :balance=>3000}]
2.5.1 :005 > account.withdraw(500, "14/01/2012")
 => [{:date=>"10/01/2012", :credit=>1000, :debit=>0, :balance=>1000}, {:date=>"13/01/2012", :credit=>2000, :debit=>0, :balance=>3000}, {:date=>"14/01/2012", :credit=>0, :debit=>500, :balance=>2500}]
2.5.1 :006 > require './lib/printer.rb'
 => true
2.5.1 :007 > Printer.display_statement(account)
 => "date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00 \n13/01/2012 || 2000.00 || || 3000.00 \n10/01/2012 || 1000.00 || || 1000.00 "
```

#### How to run the tests
Spec file includes feature tests and unit tests
All tests are run via ```rspec```
Code coverage XXXX


#### Approach to solving the challenge:
1. Review app specification and distill into user stories (below)
2. Diagram a basic structure to fulfil the user requirements
3. Set up a basic Ruby file structure
4. Write first feature test based on exploration of ideal code in IRB
5. Follow TDD to write smaller unit tests to drive the code
6. Start with one class
7. Review SRP to separate concerns and design a object orientated structure

#### Code style
Standard Ruby

#### Code example
```
```

#### Specification
```
As a bank customer
So that I can put money in the bank
I want to deposit funds in an account

As a bank customer
So that I can spend my money
I want to withdraw funds form an account

As a bank customer
So that I can see how much money I have
I want to print an account statement
```
Example printed statement:
```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
