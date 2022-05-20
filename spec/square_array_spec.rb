def square_array 

  #it 'does not call on collect/map or inject' do
    numbers = [1,2,3]
    numbers.each do |n|
    
    #expect(numbers).to_not receive(:collect)
    puts "square_array by collect metnod is: #{numbers.collect {|n| n*n}}"

    #expect(numbers).to_not receive(:map)
    puts "square_array by map method is: #{numbers.map {|n| n*n}}"

    #expect(numbers).to_not receive(:inject)
    puts "square_array by inject is: # {numbers.inject(n)}{|result, n|result}*n}"

    square_array(numbers)
  end

  it 'calls on each' do
    numbers = [1,2,3]
    expect(numbers).to receive(:each)
    square_array(numbers)
  end

  it 'should square the elements in an array' do
    expect(square_array([1,2,3])).to eq([1,4,9])
    expect(square_array([9,10,16,25])).to eq([81,100,256,625])
  end

end

#def #sq
square_array = [1, 2, 3]
square_array.each do |n|
  puts " Square numbers #{n} is #{n*n}"
end
#puts square_array.inspect
puts "square_array by collect metnod is: #{square_array.collect {|n| n*n}}"
puts "square_array by map method is: #{square_array.map {|n| n*n}}"
puts "square_array by inject method is: #{square_array.inject(n){|result, n|result}*n}"
puts square_array.inspect
#end