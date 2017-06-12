require 'account'

describe 'account' do
  let(:account) { Account.new }
  it 'should start with a balance of zero' do
    expect(account.balance).to equal(0)
  end
end
