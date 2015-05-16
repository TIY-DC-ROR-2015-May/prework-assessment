class Person
  attr_reader :favorite_things
  def initialize first_name, last_name
    @first_name      = first_name
    @last_name       = last_name
    @favorite_things = []
  end

  def add_favorite thing
    @favorite_things.push thing
  end

  # Implement the following functions

  def name
    "#{@first_name}, #{@last_name}"
  end

  def shared_interests_with other_person
    @share = []
    @favorite_things.each do |fav|
      if other_person.favorite_things.include?(fav) then
        @share << fav
      end
    end
  end
end


james = Person.new "James", "Dabbs"
james.add_favorite "math"
james.add_favorite "ruby"
james.add_favorite "haskell"
james.add_favorite "concerts"
james.add_favorite "drumming"
james.add_favorite "sleep"
james.add_favorite "coffee"


puts "Welcome! What is your first name?"
first_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp

you = Person.new first_name, last_name
puts "Cool. Welcome, #{you.name}."
puts "What are some of your favorite things? (separated with ,-s)"
favs = gets.chomp
favs.split.each do |fav|
  you.add_favorite fav
end



# TODO: finish this ...
# find our shared interests, if any, and print out something about them

puts "Shared likes #{you.shared_interests_with james.to_s }"


