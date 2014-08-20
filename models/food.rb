class Food < ActiveRecord::Base
  has_and_belongs_to_many :recipes

  # def self.populate
  #   allfoods = Foods.all
  #   foods << allfoods

  # end
    
end

