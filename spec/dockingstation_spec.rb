require 'docking_station'
require 'bike'

describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
    it {is_expected.to respond_to(:dock_bike)}

    it 'gets bike and checks if working' do
        bike = subject.release_bike
        expect(bike.class).to eq(Bike)
        expect(bike.working?).to eq(true)
    end

    it 'when docking bike add bike to dock' do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.docked_bike).to eq(bike)
    end

    it 'given empty dock then there is no bike' do
        expect(subject.docked_bike).to eq(nil)
    end
end

