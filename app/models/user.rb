class User < ActiveRecord::Base
	has_many :posts
	validates :first_name, :password, presence: true
	validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
