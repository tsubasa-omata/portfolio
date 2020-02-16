class Category < ApplicationRecord
  has_many :post_category_relation
  has_many :posts, through: :post_category_relation
end
