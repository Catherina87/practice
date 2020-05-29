# write a function that takes a list of "Meetings" and return the 
# min number of conference room needed to schedule all meetings
# without overlap.

# start and finish can be ints 
# meetings don't overlap at boundaries

class Meeting 
  attr_reader :start, :finish 

  def initialize(start, finish)
    @start = start 
    @finish = finish
  end

  def self.number_of_rooms(meetings)
    rooms_count = 0

    start_times = []
    finish_times = []

    meetings.each do |meeting|
      start_times << meeting.start
      finish_times << meeting.finish
    end

    start_times.sort! 
    finish_times.sort!

    i = 0
    while i < start_times.length - 1
      if start_times[i + 1] < finish_times[i]
        rooms_count += 1
      end

      i += 1
    end

    return rooms_count
  end
end

meetings = [
  Meeting.new(10, 17),
  Meeting.new(23, 30),
  Meeting.new(15, 25),
  Meeting.new(8, 10), # doesn't overlap with 1st meeting
]

p Meeting.number_of_rooms(meetings)

# create a room_count variable
# create two arrays starts and finishes 
# loop through the meetings array (which is an array of Meeting objects)
# shovel the start times into starts array and finishes times into finish array
# sort both arrays
# loop through starts array and check: if start time of the next meeting is less than the finish time
# of the current meeting (it means we would have an overlap and need one more room)
# if starts[i + 1] < finishes[i], increment the room_count
