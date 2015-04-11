#!/usr/bin/ruby

def degrees_difference(hour, minute)
  difference = nil
  hour = hour.to_f
  minute = minute.to_f

  base_degrees_per_hour = 30
  base_degrees_per_minute = 6

  degrees_minute = base_degrees_per_minute * minute
  base_degrees_hour = base_degrees_per_hour * hour

  degrees_hour = (base_degrees_hour) + (base_degrees_per_hour * ( degrees_minute / 360 ))

  if degrees_minute >= degrees_hour
    difference = degrees_minute - degrees_hour
  else
    difference = 360 - (degrees_hour - degrees_minute)
  end
  difference
end


hour = 0
while hour < 12
  minute = 0
  while minute < 60 do
    print(degrees_difference(hour, minute))
    #print("#{hour}:#{minute} = #{degrees_difference(hour, minute)}")
    minute += 5
    puts
  end
  hour += 1
end

