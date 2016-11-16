class RunDatabase
  def initialize
    @people = []
  end

  def promt_for_answer
    puts "There are #{@people.length} people in my amazing database"
    print "Would you like to add (A), search (S), or delete (D)? "
    gets.chomp
  end

  def run
    loop do
      answer = promt_for_answer
      case answer
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

# looping through each element of @people
# ... and compare that person name to search_name
        when "S"
            print "What name do you want to search for? "
            search_name = gets.chomp
            index = 0
            loop do
              if index >= @people.length
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

              index = index + 1

              if search_name != person.name
                puts "NOT FOUND!"
                break
              end
            end

        when "D"
            print "What name do you want to delete? "
            delete_name = gets.chomp
            index = 0
            loop do
              if index >= @people.length
                break
              end
              person = @people[index]
              if delete_name == person.name
                puts "Deleted"
                break
              end

              index = index + 1

              if delete_name 1= person.name
                puts "NOT FOUND!"
                break
              end
            end

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
