# ./lib/event_manager.rb
require "csv"
puts "EventManager initialized."

class EventManager
  attr_reader :attendees
  def initialize(data, headers)
    @event_attendees = CSV.open(data, headers)
    @attendees = @event_attendees.map do |row|
      Attendee.new(
        row[:id],
        row[:first_name],
        row[:last_name],
        row[:zipcode]
        )
    end
  end
end