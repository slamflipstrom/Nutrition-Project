class Foods < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  
end

def self_populate
  allfoods = Foods.all
  foods << allfoods

end