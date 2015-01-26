class Rating
  include Mongoid::Document
  field :rating, type: Integer

  belongs_to :thaifood
  belongs_to :user
end
