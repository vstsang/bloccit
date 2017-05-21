Post.find_or_create_by(
  title:  "This is a unique post title.",
  body:   "This is a unique post body."
)

p = Post.last

Comment.find_or_create_by(
  post: p,
  body: "This is a unique comment body."
)

puts "Unique seed done"
puts "#{Post.count} unique posts"
puts "#{Comment.count} unique comments"
