require 'account'

describe 'account' do
  let(:account) { Account.new }
  let(:date) { Time.new.strftime "%d/%m/%Y" }
  let(:headers) { 'date || credit || debit || balance'}
  let(:deposit) { [date, 1000, 1000] }
  let(:withdrawal) { [date, -500, 500 ]}

  context 'initialize' do
    it 'should start with a balance of zero' do
      expect(account.balance).to equal(0)
    end
  end

  context 'account actions requiring deposit' do
    before(:each) do
      account.transact(1000)
    end

    it 'should accept a deposit' do
      expect(account.balance).to equal(1000)
    end

    it 'should show the date of the deposit' do
      expect(account.transaction_date).to include(date)
    end

    it 'should add the deposit to the transactions array' do
      expect(account.transactions).to include(deposit)
    end
  end

  context 'account actions requiring deposit and withdrawal' do
    before(:each) do
      account.transact(1000)
      account.transact(-500)
    end

    it 'should issue a withdrawal' do
      expect(account.balance).to equal(500)
    end

    it 'should show the date of the withdrawal' do
      expect(account.transaction_date).to eq(date)
    end

    it 'should add the withdrawal to the transactions array' do
      expect(account.transactions).to include(withdrawal)
    end
  end
end
