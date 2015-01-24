class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :email, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :username, type: String
  field :password_digest, type: String
  field :tagline, type: String 
  mount_uploader :photo, OurImageUploader

  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :password, confirmation: true
  validates :tagline, uniqueness: { case_sensitve: false}
  has_many :comments  

  has_secure_password
end