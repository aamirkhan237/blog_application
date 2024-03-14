# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email: "annan@example.com",name:"annan",password:"annann",password_confirmation:"annann",role: User.roles[:admin])
User.create(email: "abc@gmail.com",name:"Aamirkhan",password:"annann",password_confirmation:"annann")

10.times do |x|
    post= Post.create(title:"title #{x}", body: "body #{x} Words go here", user_id:User.first.id)


    5.times do |y|
    comment= Comment.create(body: "body #{y} go here", post_id:Post.first.id, user_id:User.second.id)
    end
end