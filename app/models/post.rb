class Post < ActiveRecord::Base
  attr_accessible :content, :posted, :title

  validates :title, :content, presence: true
end
