class User < ActiveRecord::Base
  attr_accessible :avatar_url, :date_of_birth, :email, :login, :name, :password, :password_confirmation, :patronymic, :surname
  has_secure_password
  before_validation :prep_email

  validates :surname, presence: true
  validates :name, presence: true
  validates :patronymic, presence: true
  validates :login, uniqueness: true, presence: true, length: { maximum: 32, minimum: 5 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: true, presence: true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password_confirmation, presence: true

  private
 
	def prep_email
	    self.email = self.email.strip.downcase if self.email
	end

	def create_avatar_url
    self.avatar_url = "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(self.email)}?s=50"
	end
end
