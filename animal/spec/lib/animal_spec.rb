require 'rspec'
require './lib/animal.rb'
require './lib/dog.rb'
require './lib/snake.rb'

describe Animal do
  it 'should should be an animal' do
    expect(subject).to be_an(Animal)
  end

  describe '#speak' do
    it 'it should say some animal sound' do
      expect(subject.speak('some animal sound')).to eq('some animal sound')
    end
  end

  describe '#legs' do
    it 'should some have 4 legs' do
      expect(subject.legs(4)).to be(4)
    end
  end
end

describe Dog do
  it 'should be a dog' do
    dog = Dog.new
    expect(dog).to be_a(Dog)
  end

  describe '#speak' do
    it 'it should say woof' do
      expect(subject.speak('woof')).to eq('woof')
    end
  end

  describe '#breed' do
    it 'should tell us the dog\'s breed' do
      expect(subject.breed('corgi')).to eq('corgi')
    end
  end
end

describe Snake do
  it 'should be a snake' do
    expect(subject).to be_a(Snake)
  end

  describe '#poisonous?' do
    it 'should check if the snake can kill people or not' do
      expect(subject).to be_poisonous
    end
  end
end
