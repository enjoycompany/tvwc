class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :title, :content, presence: true
  attr_accessible :body, :name, :post_id, :user_id, :post
end
