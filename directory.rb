@months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

def input_students
  puts "Please enter the names of the students"
  puts "Then enter the months of the cohorts"
  puts "To finish, just hit enter twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.strip
  cohort = gets.strip
  # while the name is not empty repeate this code
  while !name.empty? do
    # add the student hash to the array
    if !@months.include? cohort
      cohort = "unknown"
    end
    students << { name: name, cohort: cohort.to_sym, hobby: :murder, country_of_birth: :US}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.strip
    cohort = gets.strip
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
  else @months.each do |month|
      students.each_with_index do |student, index|
      if month.to_sym == student[:cohort]
        student.each_value do |name|
         puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort), from #{student[:country_of_birth]}, hobby: #{student[:hobby]}".center(150, " ")  if name[0] == "M" && student[:name].length < 12
         end
       end
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
