 require 'faker'
 
Post.find_or_create_by!(title: "Testing Post", body: "This post will be added only once")
 # # Create Posts
 # 50.times do
 #   Post.create!(
 #     title:  Faker::Lorem.sentence,
 #     body:   Faker::Lorem.paragraph
 #   )
 # end
 # posts = Post.all
 
Comment.find_or_create_by!(body: "This comment will be added only once")
#Comment.find_or_create_by!(post: Post.first, body: "This comment will be added only once")

 # # Create Comments
 # 100.times do
 #   Comment.create!(
 #     post: posts.sample,
 #     body: Faker::Lorem.paragraph
 #   )
 # end
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"