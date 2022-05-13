require 'contador'

describe 'Matcher change' do
  it { expect{Contador.increment}.to change { Contador.quantity } } # quantity 1
  it { expect{Contador.increment}.to change { Contador.quantity }.by(1) } # quantity 2
  it { expect{Contador.increment}.to change { Contador.quantity }.from(2).to(3) } # quantity 3
end
