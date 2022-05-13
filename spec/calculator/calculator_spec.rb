require 'calculator'

describe Calculator do

	# subject(:calc) { described_class.new() } # Trocar o nome da 'variável' de Subject

	context '#sum' do
		it "only positive numbers" do
			result = subject.sum(5, 7)
			expect(result).to eq(12)
		end

		it 'only negative numbers' do
			result = subject.sum(-5, -7)
			expect(result).to eq(-12)
		end

		it 'positive and negative numbers' do
			result = subject.sum(-5, 7)
			expect(result).to eq(2)
		end
	end

	context '#sub' do
		it "only positive numbers" do
			result = subject.sub(5, 7)
			expect(result).to eq(-2)
		end

		it 'only negative numbers' do
			result = subject.sub(-5, -7)
			expect(result).to eq(2)
		end

		it 'positive and negative numbers' do
			result = subject.sub(-5, 7)
			expect(result).to eq(-12)
		end
	end

	context '#mul' do
		it "only positive numbers" do
			result = subject.mul(5, 7)
			expect(result).to eq(35)
		end

		it 'only negative numbers' do
			result = subject.mul(-5, -7)
			expect(result).to eq(35)
		end

		it 'positive and negative numbers' do
			result = subject.mul(-5, 7)
			expect(result).to eq(-35)
		end
	end

	context '#div' do
		it "only positive numbers" do
			result = subject.div(14, 7)
			expect(result).to eq(2)
		end

		it 'only negative numbers' do
			result = subject.div(-14, -7)
			expect(result).to eq(2)
		end

		it 'positive and negative numbers' do
			result = subject.div(-14, 7)
			expect(result).to eq(-2)
		end

		it 'divide by 0' do
			expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError) # Quando necessário avaliar de imediato se o conteúdo vai resultar em erro, necessário colocar em {}
			expect{subject.div(3, 0)}.to raise_error("divided by 0") # A mensagem do erro
			expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0") # O tipo do erro e a mensagem
			expect{subject.div(3, 0)}.to raise_error(/divided/) # Expressão regular para identificar uma palavra no meio do erro
		end
	end
end

# Setup: quando você coloca o SUT (System Under Test, o objeto sendo testado) no estado necessário para o teste
# Exercise: quando você interage com o SUT
# Verify: quando você verifica o comportamento esperado