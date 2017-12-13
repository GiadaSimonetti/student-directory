#let's put all students into an array
# students = [
#   {name: "Dr Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex Delarge", cohort: :november},
#   {name: "The Wicked Witch of West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

# def input_students
#   puts "Please enter the names of the students"
#   puts "Then enter the months of the cohorts"
#   puts "To finish, just hit enter twice"
#   # create an empty array
#   students = []
#   # get the first name
#   name = gets.chomp
#   month = gets.chomp
#   # while the name is not empty repeate this code
#   while !name.empty? && !month.empty? do
#     # add the student hash to the array
#     if month == "January" || month == "February" || month == "March" || month == "April" || month == "May"  || month == "June" || month == "July" || month == "August" || month == "September" || month == "October" || month == "November" || month == "December"
#       hash_students = Hash.new("Unknown")
#       hash_students = {name: name, cohort: month.to_sym}
#       students << hash_students
#       puts "Now we have #{students.count} students"
#       # get another name from the user
#       name = gets.chomp
#       month = gets.chomp
#     else
#       name = gets.chomp
#       month = gets.chomp
#     end
#   end
#   # return the array of students
#   students
# end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit enter twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty repeate this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  if students.empty?
    puts "Nothing in here"
  else
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(students)
  puts  "Overall we have #{students.count} great students."
end

# nothing appens untill we call the methods
students = input_students
print_header
print(students)
print_footer(students)
