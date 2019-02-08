require 'airport'

describe Airport do

  it 'lands a plane' do
    plane = Plane.new('name')
    expect(subject.land(plane)).to eq [plane]
  end

  it 'takes off a plane' do
    plane = Plane.new('name')
    expect(subject.take_off(plane)).to eq plane
  end

end
