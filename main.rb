require "pry"

require "food_info"

require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

require "sqlite3"

# FoodInfo.establish_connection(:fat_secret, :key => '024cc6920ca54c408e7ded2bde7a84ec', :secret => '32daeea219e44e81836a7a09d7a66c57')

require_relative "./models/category.rb"
require_relative "./models/food.rb"
require_relative "./models/recipe.rb"

get "/" do
  @allcategories = Category.all
  
  erb :home
end

get "/recipes/:category_id" do
  c = Category.find(params[:category_id])
  @food = c.recipes
  
  erb :recipe
end

get "/add_recipe" do
 
 erb :add
end

get "/do_stuff" do
  Recipe.create(recipe_name: params["new_recipe"])
  
  erb :category
end


binding.pry 
