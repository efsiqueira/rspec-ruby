describe 'Ruby on Rails' do # Utilização de 'and' e 'or' em testes
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva').or eq('manga').or eq('morango') }
  
  # def fruta # helper method arbitrário
  #   %w(banana laranja uva manga morango).sample
  # end
end