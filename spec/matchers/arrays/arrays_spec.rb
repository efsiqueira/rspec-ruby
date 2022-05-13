RSpec::Matchers.define_negated_matcher :exclude, :include # Negativando matchers

describe Array.new([1,2,3]) do
  it '#include' do
    expect(subject).to include(2, 1)
    expect(subject).to exclude(4, 5)
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3]) # Apenas funciona com elementos exatos (necessário colocar o [] para array)
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1,2,3) # Inserir apenas os valores
  end
end