require 'random_data'

20.times do
  Question.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    resolved: rand(0..1) == 1 ? true : false
  )
end
questions = Question.all

puts "Seed finished"
puts "#{Question.count} questions created"
