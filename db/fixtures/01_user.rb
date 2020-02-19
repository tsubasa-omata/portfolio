User.seed do |s|
  s.id = 1
  s.name = 'sample'
  s.email = 'sample@gmail.com'
  s.password = 'sample'
  s.password_confirmation = 'sample'
end

User.seed do |s|
  s.id = 2
  s.name = 'sample2'
  s.email = 'sample2@gmail.com'
  s.password = 'sample2'
  s.password_confirmation = 'sample2'
end