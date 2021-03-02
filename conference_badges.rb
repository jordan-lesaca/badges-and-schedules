def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    i = 0
    new_arr = []
    while i < array.size do
        new_arr.push(badge_maker(array[i]))
        i += 1
    end
    new_arr
end

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def assign_rooms(attendees)
    attendees.each_with_index.map do |attendee, index|
        "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
    end
end

def printer(array)
    batch_badge_creator(array).each do |badge|
        puts badge
    end
    assign_rooms(attendees).each do |rooms|
        puts rooms
    end
end