require 'faker'

def random_name
  Faker::Name.name.downcase.gsub(/\s+/,'-')
end

rand(30..40).times do
  File.open "#{random_name}.txt", "w" do |f|
    f.puts Faker::Number.number(10)
  end
end

rand(1..5).times do
  File.open ".#{random_name}.txt", "w" do |f|
    f.puts Faker::Number.number(10)
  end
end
