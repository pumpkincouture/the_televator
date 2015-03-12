class Elevator
 attr_accessor :current_location
 attr_accessor :direction
 attr_accessor :floors_to_deliver
 attr_accessor :floors_to_service

  def initialize(start_floor, end_floor)
    @start_floor = start_floor
    @end_floor = end_floor
    @current_location ||= nil
    @direction ||= nil
    @floors_to_deliver ||= []
    @floors_to_service ||= []
  end

  def service_floor(pickup, direction)
    @direction = direction
    @floors_to_service << pickup
  end

  def destination(floor)
    @current_location = floor
    @floors_to_deliver << floor
  end

  def available_floors
    (@start_floor..@end_floor).to_a
  end
end
