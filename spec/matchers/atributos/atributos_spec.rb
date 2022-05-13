require 'pessoa'

describe 'Atributos' do
  # around(:all) do |teste|
  #   puts "ANTES"
  #   @pessoa = Pessoa.new
  
  #   teste.run
  
  #   @pessoa.nome = "Sem nome!"
  #   puts "DEPOIS >>>>>> #{@pessoa.inspect}"
  # end
  
  before(:all) do
    @pessoa = Pessoa.new
  end

  it 'have_attributes' do
    @pessoa.nome = "Eduardo"
    @pessoa.idade = 20
    expect(@pessoa).to have_attributes(nome: "Eduardo", idade: 20)
  end
end