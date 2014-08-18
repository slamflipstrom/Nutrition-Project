require "pry"

require "food_info"

require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

require "sqlite3"

FoodInfo.establish_connection(:fat_secret, :key => '024cc6920ca54c408e7ded2bde7a84ec', :secret => '32daeea219e44e81836a7a09d7a66c57')

require_relative "./models/category.rb"
require_relative "./models/food.rb"
require_relative "./models/recipe.rb"

get "/" do
  
  erb :home
end

binding.pry 
