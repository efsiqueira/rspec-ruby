describe (1..10), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2, 7, 9)
  end

  it '#not_cover' do
    expect(subject).not_to cover(12, 17, 19)
  end

  # Descrições implícitas: possível fazer em uma linha só
  it { is_expected.to cover(2) }
  it { is_expected.to cover(2, 7, 9) }
  it { is_expected.not_to cover(12, 17, 19) }
end