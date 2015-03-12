require 'spec-helper'

describe Elevator do
  it "it returns the current floor of the elevator" do
    elevator = Elevator.new(1, 5)
    elevator.service_floor(2, 'up')
    elevator.destination(3)

    expect(elevator.current_location).to eq(3)
  end

  it "has a list of floors that are available to be serviced" do
    elevator = Elevator.new(1, 16)

    expect(elevator.available_floors.last).to eq(16)
  end

  it 'has a list of floors to deliver people to' do
    elevator = Elevator.new(1, 5)

    elevator.service_floor(1, 'up')
    elevator.destination(3)
    elevator.service_floor(1, 'up')
    elevator.destination(4)
    elevator.service_floor(1, 'up')
    elevator.destination(5)
    elevator.current_location = 1

    expect(elevator.direction).to eq('up')
    expect(elevator.floors_to_deliver).to eq([3, 4, 5])
  end

  it "has a list of floors to pick people up from" do
    elevator = Elevator.new(1, 5)

    elevator.service_floor(1, 'up')
    elevator.destination(5)
    elevator.service_floor(2, 'up')
    elevator.destination(5)
    elevator.service_floor(3, 'up')
    elevator.destination(5)
    elevator.current_location = 1

    expect(elevator.floors_to_service).to eq([1, 2, 3])
  end
end
