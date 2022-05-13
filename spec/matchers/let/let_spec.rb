$counter = 0

describe 'let' do
  let(:count) { $counter += 1 }

  it "memoriza o valor" do
    expect(count).to eq(1) # 1ª vez é carregado
    expect(count).to eq(1) # 2ª vez valor é buscado em cache
  end

  it "não é cacheado entre os testes" do
    expect(count).to eq(2) # executa novamente o let e soma + 1
  end
end
