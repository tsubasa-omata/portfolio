class Category < ApplicationRecord
  has_many :post_category_relation
  has_many :posts, through: :category_post_relation
end
