require 'account'

describe 'account' do
  let(:account) { Account.new }
  let(:date) { Time.now.strftime "%d/%m/%Y" }
  let(:headers) { 'date || credit || debit || balance'}
  let(:transaction) { [date, 1000, 1000] }

  context 'initialize' do
    it 'should start with a balance of zero' do
      expect(account.balance).to equal(0)
    end
  end

  context 'account actions requiring deposit' do
    before(:each) do
      account.deposit(1000)
    end

    it 'should accept a deposit' do
      expect(account.balance).to equal(1000)
    end

    it 'should show the date of the deposit' do
      expect(account.deposit_date).to eq(date)
    end

    it 'should add the deposi to the transactions array' do
      expect(account.transactions).to eq(transaction)
    end

    it 'should issue a withdrawal' do
      account.withdraw(500)
      expect(account.balance).to equal(500)
    end

    it 'should show the date of the withdrawal' do
      account.withdraw(500)
      expect(account.withdrawal_date).to eq(date)
    end

    xit 'should show the history of one transaction' do
      expect(account.show_history).to include(date + '|| 1000 || || 1000')
    end

  end

  context 'account actions not requiring deposit' do
    it 'should not go into negative balance' do
      account.withdraw(500)
      expect(account.balance).to equal(0)
    end

    it 'account history should show headers' do
      expect(account.show_history).to eq(headers)
    end
  end

end
