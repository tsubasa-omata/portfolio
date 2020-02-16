class Post < ApplicationRecord
  belongs_to :user
  has_many :post_category_relation
  has_many :categories, through: :post_category_relation
end
