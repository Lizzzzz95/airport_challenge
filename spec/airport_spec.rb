require 'airport'

describe Airport do


  describe '#land' do

    it 'raises an error when trying to land in stormy weather' do
      plane = Plane.new
      allow(subject).to receive(:stormy).and_return(true)
      expect{subject.land(plane)}.to raise_error 'Weather is stormy, cannot land plane'
    end

    it 'lands a plane' do
      plane = Plane.new
      allow(subject).to receive(:stormy).and_return(false)
      expect(subject.land(plane)).to eq [plane]
    end

  end


  describe '#take_off' do

    it 'raises an error when trying to take off in stormy weather' do
      plane = Plane.new
      allow(subject).to receive(:stormy).and_return(true)
      expect{subject.take_off(plane)}.to raise_error 'Weather is stormy, cannot take off'
    end

    it 'takes off a plane' do
      plane = Plane.new
      allow(subject).to receive(:stormy).and_return(false)
      subject.land(plane)
      subject.take_off(plane)
      expect(subject.planes).to eq []
    end

  end


  describe '#stormy' do

    it 'checks that it will be stormy 20% of the time' do
      count = 0
      10000.times do
        if subject.stormy
          count += 1
        end
      end
      expect(count).to be_within(100).of(2000)
    end

  end

end
