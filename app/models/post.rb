class Post < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :tags
	validates :user_id, :text, :titile, presence: true

	scope :today_posts, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }

	after_save :link_post_tag



    public
 	def link_post_tag
    	tag = Tag.find_by name: "Post"
     	self.tag_ids = tag.id
 	end

 	def tags_count
 		tags.count
 	end

 	def preview_text
 		select("text").limit(20)
 	end

end
