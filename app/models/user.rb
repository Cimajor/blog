class User < ActiveRecord::Base
	has_many :posts
	validates :first_name, :password, presence: true
	validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

	scope :has_email, -> { where.not(email: nil) }

	public
    def output_name_last_name
    	print first_name+' '+last_name
    end
	#validates :email, uniqueness: true
end
