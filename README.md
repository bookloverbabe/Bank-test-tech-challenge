# Project name: bank tech test challenge
# Description
Programming language: Ruby
Testing language: rspec. Set up rspec using method outlined here (https://github.com/bookloverbabe/golden-square/blob/main/pills/setting_up_an_rspec_project.md)

The purpose of this project is to create an application that shows a person's bank balance. It must include all deposits (credit) and withdrawals (debit) made by the person, the date on which they where made, and the account's overall balance at the end of each transaction.

|Input|Process|Output|
|-----|-------|------|
|Withdraws a sum of money|The amount withdrawn is subtracted from the overall amount in the account|The program returns the statement|
|Deposits a sum of money|The amount deposited is added to the overall amount in the account|The program returns the statement|
|No money is withdrawn or deposited|Nothing happens to the overall balance|The statement is returned|

Each statement consists of the date, amount (and whether it is a credit or debit) and balance.

**Every transaction must include the date!**

The data must be organised as so:
date || credit || debit || balance

The data must be stored in key value pairs or a hash, where the date is the key and the value is the amount (+ or - to represent credit or debit) and the balance. This is the statement hash.
# Requirements
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
# Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
# What the program does
1. It must first ask if the user is making a deposit (credit) or a withdrawal (debit)
2. The user must then input a number. In the above example, the input is a float to two decimal points.
3. Depending on the type of tranactions, the number inputted by the user is either subtracted or added to the overall balance
4. The program returns a statement, with the date, amount and balance
5. The program must remember every transaction and only act upon the most recent balance. Keep data in chronological order.
# Edge cases
## Wrong data types
The only input expected by the user is a float to two decimal places. If the user inputs a number to more than two decimal places, return an error.
If the user inputs something other than a number, return error.

## Other unexpected inputs/actions
If the user doesn't input anything, return the most recent statement.
If the user inputs an int (no decimal points) add .00 to the end of the number.
what if the user makes multiple transaction in a single day? 
## Error handling
Inform user that the program only take numbers and ask to input them again to input a number