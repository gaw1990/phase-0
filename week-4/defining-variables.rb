#Solution Below




# RSpec Tests. They are included in this file because the local variables you are creating are not accessible across files. If we try to run these files as a separate file per normal operation, the local variable checks will return nil.

first_name = 'George'
last_name = 'Wambold'
age = 25


describe 'first_name' do
  it "is defined as a local variable" do
    expect(defined?(first_name)).to eq 'local-variable'
  end

  it "is a String" do
    expect(first_name).to be_a String
  end
end

describe 'last_name' do
  it "is defined as a local variable" do
    expect(defined?(last_name)).to eq 'local-variable'
  end

  it "be a String" do
    expect(last_name).to be_a String
  end
end

describe 'age' do
  it "is defined as a local variable" do
    expect(defined?(age)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(age).to be_a Fixnum
  end
end

=begin

1. How do you define a local variable?

 Variable_Name = ____(string, integer or boolean value) 

2. How do you define a method?

 def Method_name(variable 1, variable 2, variable 3)
 (argument)
 end 

3. What is the difference between a local variable and a method?

A method can take multiple variables and return an output. A local variable is a static value for the session. 

4. How do you run a ruby program from the command line?

ruby your_ruby_file.rb


5. How do you run an RSpec file from the command line?
rspec your_rspec_file.rb




6. What was confusing about this material? What made sense?
Nothing was confusing, though my 4.3.1 method wasn't passing the rspec for a while.
It turned out that using puts outputs 'nil' so even though I was seeing the correct
output being printed to the console, the rspec file was expecting a RETURN of that
value. I ultimately had to use 'p' instead of 'puts' and it worked. That took me
a significant amount of time to figure out though.


=end





