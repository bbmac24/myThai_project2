class Thaifood
	include Mongoid::Document
	include Mongoid::Timestamps
	field :dish, type: String
	field :location, type: String
	field :restaurant, type: String
	field :price_per_dish, type: Float
	field :rating, type: Integer
	mount_uploader :photo, OurImageUploader

	field :body, type: String
	has_many :comments

	validates :dish, presence: true, uniqueness: { case_sensitve: false }
	validates :location, presence: true
	validates :restaurant, presence: true

	def date_published
		created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
    end 
end 