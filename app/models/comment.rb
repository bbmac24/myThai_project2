class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :body, type: String
  belongs_to :thaifood

  def date_added
    created_at.locatltime.strftime("%A, %B %-d, %Y at %l:%M %p") 
  end

  belongs_to :user  

  validates :body, presence: true
end