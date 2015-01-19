class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :email, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :password_digest, type: String
  
  has_secure_password

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

end