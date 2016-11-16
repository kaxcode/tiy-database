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
gi
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
        when "S"
            puts "What name do you want to search for? "
            search_name = gets.chomp

            # looping through each element of @people
            # ... and compare that person name to search_name

        when "D"
            print "First Name: "
            search_name = @person.includes?[0]
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
p person
