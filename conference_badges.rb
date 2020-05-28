require 'pry'

def badge_maker(name)

  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  
  attendees.map do |name|
    badge_maker(name)
  end
end

def assign_rooms(attendees)
  attendees.map.with_index(1)  do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index}!"
  end
end

def printer(names)
  batch_badge_creator(names).each do |badge|
    puts badge
  end
  assign_rooms(names).each do |assigned_room|
    puts assigned_room
  end
end

#def batch_badge_creator(attendees)
  # people = []
  # attendees.each do |badges|
  #   people.push ("Hello, my name is #{badges}.")

  # #binding.pry
  # end
  # people
#end

# def assign_rooms(attendees)
#   room_assignments = []
  
#   attendees.each do |people|
#     room_assignments.push ("Hello, #{people}! You'll be assigned to room #{room_assignments.size + 1}!")
#   end
#   room_assignments
# end



# def printer(attendees)
#   batch_badges = batch_badge_creator(attendees)
#   rooms = assign_rooms(attendees)
#   batch_badges.each do |paper|
#     puts paper
#   end
#   rooms.each do |number|
#     puts number
#   end
  
# end