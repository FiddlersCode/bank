# Bank
by Paula Muldoon (Makers Academy remote April 2017 cohort)

### About
I spent one day creating this practice tech test.

---

## Run locally
View the repository [here](https://github.com/pmuldoon86/bank) on GitHub

Clone the repo. Then:

```bash

```
#### To run the tests
from within the main folder:
```bash
rspec
```

---
## Processes
* User stories
* Diagramming
* TDD

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012

**And** a deposit of 2000 on 13-01-2012

**And** a withdrawal of 500 on 14-01-2012

**When** she prints her bank statement

**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

---

## User stories
As a client,
So I can know how much money I have
I would like to be able to see my account balance

As a client,
So I can store my money safely
I would like to be able to make a deposit

As a client,
So I can spend my money
I would like to be able to withdraw funds

As a client
So I can track my spending/saving
I would like to be able to see my account history

## Technologies used

* [Ruby 2.4.0](https://www.ruby-lang.org/en/)
* [RSpec](http://rspec.info/)
