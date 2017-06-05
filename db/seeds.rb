require 'random_data'

20.times do
  Advertisement.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    price:  rand(10..100)
  )
end

puts "Seed finished"
puts "#{Advertisement.count} advertisements created"
