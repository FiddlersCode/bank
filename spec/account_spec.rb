require 'account'

describe 'account' do
  let(:account) { Account.new }
  it 'should start with a balance of zero' do
    expect(account.balance).to equal(0)
  end

  it 'should accept a deposit' do
    account.deposit(1000)
    expect(account.balance).to equal(1000)
  end

  it 'should issue a withdrawal' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to equal(500)
  end
end
