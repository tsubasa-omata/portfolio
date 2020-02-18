class Category < ApplicationRecord
  has_many :post_category_relations
  has_many :posts, through: :category_post_relations
end
