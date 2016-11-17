class RunDatabase
  def initialize
    @people = []
  end

  # Banner styling
  def banner(message)
    1.times do
      puts
    end

    puts "*" * (8 + message.length)
    puts "!😱  #{message} 😱 !"
    puts "*" * (8 + message.length)

    1.times do
      puts
    end
  end

  def banner_two(message)
    1.times do
      puts
    end

    puts "-" * (4 + message.length)
    puts "| #{message} |"
    puts "_" * (4 + message.length)

    1.times do
      puts
    end
  end

  # Initial app question
  def promt_for_answer
    puts "There are #{@people.length} people in my amazing database"
    banner_two "Would you like to add (A), search (S), or delete (D)? "
    gets.chomp.upcase
  end

  # Running the app
  def run
    loop do
      answer = promt_for_answer
      case answer

        # When user wants to Add
        when "A"
          person = Person.new

          print "First Name: "
          person.name = gets.chomp

          print "Phone Number: "
          person.phone_number = gets.chomp

          print "Adress: "
          person.address = gets.chomp

          print "Position (e.g. Instructor, Student, TA, Campus Director): "
          person.position = gets.chomp

          print "Salary: "
          person.salary = gets.chomp.to_i

          print "Slack Account: "
          person.slack_account = gets.chomp

          print "Github Account: "
          person.github_account = gets.chomp

          @people << person

          # Looping to search for the indexes withing the @people array and comparing it with the users input. Printing out object and its methods
        when "S"
          print "What name do you want to search for? "
          search_name = gets.chomp
          index = 0
          loop do
            if index >= @people.length
              banner "I never found #{search_name}"
              break
              end
            person = @people[index]
            if search_name == person.name
              puts "Got em!"
              puts person.name
              puts person.phone_number
              puts person.address
              puts person.position
              puts person.slack_account
              puts person.github_account
              break
            end

            index += 1
          end

          # Looping to search for the indexes withing the @people array and comparing it with the users input. Deleted the object and it's related methods
        when "D"
          print "What name do you want to delete? "
          delete_name = gets.chomp

          index = 0
          loop do
            if index >= @people.length
              banner "Never found #{delete_name}"
              break
            end

            person = @people[index]
            if delete_name == person.name
              @people.delete(person)
              break
            end

            index += 1
          end
          # When entry is not valid
        else
          banner "Not a valid entry. Please try again and press Enter Key."
      end
    end
  end
end

class Person
  attr_accessor :name, :phone_number, :address, :position, :salary, :slack_account, :github_account
end

#------
run_database = RunDatabase.new
run_database.run
