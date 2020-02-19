Post.seed do |s|
  s.id = 1
  s.title = '初心者にオススメのプログラミング言語は？'
  s.content = '初心者にオススメのプログラミング言語について話しましょう！'
  s.user_id = 1
end

Post.seed do |s|
  s.id = 2
  s.title = 'これから伸びるプログラミング言語は？'
  s.content = 'これから伸びるプログラミング言語について話しましょう！'
  s.user_id = 1
end