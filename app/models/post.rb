class Post < ActiveRecord::Base
  attr_accessible :content, :posted, :title, :comments #, :post_id

  validates :title, :content, presence: true

  belongs_to :user
  validates :user_id, presence: true
            #:uniqueness => true
  has_many :comments #, :dependant => :destroy
  # has_many :comments
end
