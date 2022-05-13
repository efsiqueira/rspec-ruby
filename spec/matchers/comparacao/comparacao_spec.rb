describe 'Matchers de Comparação' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end

  it '<' do
    expect(1).to be < 5
  end

  it '<=' do
    expect(1).to be <= 5
    expect(1).to be <= 1
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
    expect(7).to be_between(2, 7).inclusive
  end

  # it 'be_between inclusive / Falhas agregadas', :aggregate_failures do # Agregando falhas (mostra os erros subsequentes)
  #     expect(5).to be_between(2, 7).inclusive
  #     expect(1).to be_between(2, 7).inclusive
  #     expect(8).to be_between(2, 7).inclusive
  # end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
    expect(3).to be_between(2, 7).exclusive
    expect(6).to be_between(2, 7).exclusive
  end

  it 'match' do # Expressão regular
    expect("fulano@email.com.br").to match(/..@../)
  end

  it 'start-with' do
    expect("fulano de tal").to start_with("fulano")
    expect([1,2,3]).to start_with(1)
  end

  it 'end-with' do
    expect("fulano de tal").to end_with("tal")
    expect([1,2,3]).to end_with(3)
  end
end