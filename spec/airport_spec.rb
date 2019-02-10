require 'airport'

describe Airport do

  it 'displays the planes in the airport' do
    expect(subject.display_planes).to eq []
  end


  describe '#land' do

    it 'raises an error when trying to land in stormy weather' do
      plane = Plane.new('name')
      expect{subject.land(plane)}.to raise_error 'Weather is stormy, cannot land plane'
    end

    it 'lands a plane' do
      plane = Plane.new('name')
      expect(subject.land(plane)).to eq [plane]
    end

  end


  describe '#take_off' do

    it 'raises an error when trying to take off in stormy weather' do
      plane = Plane.new('name')
      expect{subject.take_off(plane)}.to raise_error 'Weather is stormy, cannot take off'
    end

    it 'takes off a plane' do
      plane = Plane.new('name')
      expect(subject.take_off(plane)).to eq plane
    end

  end


  describe '#weather' do

    it 'checks if the weather is sunny' do
      # below line is a stub
      allow(subject).to receive(:rand).and_return(0)
      expect(subject.weather).to eq('Sunny')
    end

    it 'checks if the weather is stormy' do
      allow(subject).to receive(:rand).and_return(4)
      expect(subject.weather).to eq('Stormy')
    end

  end

end
