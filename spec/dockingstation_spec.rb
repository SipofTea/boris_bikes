require 'docking_station'

describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}

    it 'gets bike and checks if working' do
        bike = subject.release_bike
        expect(bike.class).to eq(Bike)
        expect(bike.working?).to eq(true)
    end
end

