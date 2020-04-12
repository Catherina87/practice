# Given an array of arrays that represents a trip's start time & 
# end time, ex)  [[1,2], [3,5], [2,4]]. 
# Output the min. number of drivers required. output => 2

def num_of_drivers(slots)
  drivers = 0

  sorted_slots = slots.sort_by { |slot| [slot[0], slot[1]] } # O(N log(N))
  timed_slots = {}

  for slot in sorted_slots do # O(N), where N is number of time slots     
    start_time = slot[0]                                                      
    timed_slots[start_time] = (timed_slots[start_time] || []).push(slot)      
  end                                                                         
                                                                               
  for slot in sorted_slots do # O(N)
    start_time = slot[0]
    available_slots = timed_slots[start_time]

    if available_slots == []
      next
    end

    drivers += 1
    slot = available_slots.shift
    endtime = slot[1]

    while (endtime <= 24) # O(1), loops no more than 24 times
      if (timed_slots.has_key?(endtime) && timed_slots[endtime] != [])
        slot = timed_slots[endtime].shift
        endtime = slot[1]
        next
      end

      endtime += 1
    end
  end

  # Total complexity O(N) + O(N log(N)) => O(N log(N))

  return drivers
end

list = [[1,6], [1,2], [3,5], [2,4]]
p num_of_drivers(list)
