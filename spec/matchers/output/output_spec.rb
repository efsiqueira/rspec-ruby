describe 'Matcher output' do
  it { expect{puts "Eduardo"}.to output.to_stdout }
  it { expect{print "Eduardo"}.to output("Eduardo").to_stdout }
  it { expect{puts "Eduardo Felipe"}.to output(/Eduardo/).to_stdout }

  it { expect{warn "Eduardo"}.to output.to_stderr }
  it { expect{warn "Eduardo"}.to output("Eduardo\n").to_stderr }
  it { expect{warn "Eduardo Felipe"}.to output(/Eduardo/).to_stderr }
end