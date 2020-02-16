class CreatePostCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :post_category_relations do |t|
      t.references :post, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
