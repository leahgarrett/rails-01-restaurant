puts "Start of Seeding..."
# Restaurant.destroy_all
# 10.times do
#   params = {
#     title: Faker::Restaurant.unique.name,
#     address: Faker::Address.unique.full_address,
#     food_type: Faker::Restaurant.type,
#     description: Faker::Lorem.paragraph  
#   }
#   puts "Creating Restaurant: #{params[:title]}"
#   restaurant = Restaurant.new(params)
#   restaurant.save

#   reviews = rand(6)
#   reviews.times do
#     params = {
#       title: Faker::Name.name,
#       rating: rand(5),
#       content: Faker::Lorem.paragraph,
#       restaurant_id: restaurant.id
#     }
#     puts "Creating review: #{params[:title]}"
#     review = Review.new(params)
#     review.save
#   end
# end

puts 'Creating an admin user'
User.new({ :email => 'admin@admin.com.au', :password => 'password321', :password_confirmation => 'password321', :admin => 'true'}).save

puts "Seeding Over"