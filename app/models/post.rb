class Post < ApplicationRecord
  belongs_to :user
  has_many :responses
  has_many :post_category_relation
  has_many :categories, through: :post_category_relation
  validates :title, presence: true
  validates :content, presence: true
end
