class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :user
  validates :name, :content, presence: true
  accepts_nested_attributes_for :tags
end
