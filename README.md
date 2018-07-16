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
