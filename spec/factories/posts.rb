FactoryBot.define do
  factory :post do
    title { "title" }
    content { "content" }
    association :user
    #traitを使うとcategoryを作成するかしないか切り替えられる
    #postが生成されたときにpostに関連付けしたcategory

    #after(:create) do |category|
    #  create_list(:category, 2, posts: [post])
    #end

    #これでpostを生成する時にcategoryが生成されるけど好きな
    #association :category
  end
end
