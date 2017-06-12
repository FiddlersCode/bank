require 'presenter_spec'

describe 'presenter' do
  xit 'should show 2 decimal points when printed' do
    account.withdraw(200)
    expect(account.print_history).to include("12/06/2017 || 1000.00 || || 1000.00 ||")
  end
end
