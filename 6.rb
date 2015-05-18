class Person
  attr_accessor :favorite_things
  def initialize first_name, last_name
    @first_name      = first_name
    @last_name       = last_name
    @favorite_things = []
  end

  def add_favorite thing
    @favorite_things.push thing
  end

  def name
    "#{@first_name}, #{@last_name}"
  end

  def shared_interests_with other_person
    # puts "his favs #{other_person.favorite_things}"
    # puts "my favs #{@favorite_things}"
    share = other_person.favorite_things & @favorite_things
    #puts "inside method shared is #{share}"
    return share
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
puts "favs is #{favs}"
puts "favs split is #{favs.split}"
favs.split(", ").each do |fav|
  you.add_favorite fav
end

common = you.shared_interests_with james
if common.length == 0
  puts "Oh, no we have nothing in common!"
else
  puts "The things we both like are #{(common)}"


