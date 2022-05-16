require 'student'
require 'course'

# Quando utilizar o mock, a sequência será (setup - verify - exercise) e não (setup - exercise - verify)
describe "Mock" do
  it '#bar' do
    # Setup
    student = Student.new
    
    # Verify
    expect(student).to receive(:bar)
    
    # Exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    student.foo(123)
  end
end
