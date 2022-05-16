describe 'Test Double' do
  it '__' do
    user = double('User')
    allow(user).to receive_messages(name: 'Edu', password: 'secret')

    # Maneiras alternativas de fazer:
    # allow(user).to receive(:name).and_return('Edu')
    # allow(user).to receive(:password).and_return('secret')
  end

  it 'as_null_object' do
    user = double('User').as_null_object # utilizado quando há null object, como user.abc que não existe
    allow(user).to receive(:name).and_return('Edu')
    allow(user).to receive(:password).and_return('secret')
    puts user.name, user.password, user.abc
  end
end
