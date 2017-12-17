@months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

def input_students
  puts "Please enter the names of the students"
  puts "Then enter the months of the cohorts"
  puts "To finish, just hit enter twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  cohort = gets.chomp
  # while the name is not empty repeate this code
  while !name.empty? do
    # add the student hash to the array
    if !@months.include? cohort
      cohort = "unknown"
    end
    students << { name: name, cohort: cohort.to_sym }
    puts "Now we have #{students.count} students"
    name = gets.chomp
    cohort = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  @months.each do |month|
    students.each do |student|
      if month.to_sym == student[:cohort]
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
      end
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
