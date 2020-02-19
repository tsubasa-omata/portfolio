PostCategoryRelation.seed do |s|
  s.id = 1
  s.post = Post.find_by(id: 1)
  s.category = Category.find_by(id: 1)
end

PostCategoryRelation.seed do |s|
  s.id = 2
  s.post = Post.find_by(id: 1)
  s.category = Category.find_by(id: 4)
end

PostCategoryRelation.seed do |s|
    s.id = 3
    s.post = Post.find_by(id: 2)
    s.category = Category.find_by(id: 1)
  end
  
  PostCategoryRelation.seed do |s|
    s.id = 4
    s.post = Post.find_by(id: 2)
    s.category = Category.find_by(id: 4)
  end