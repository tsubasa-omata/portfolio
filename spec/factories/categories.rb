FactoryBot.define do
  #%w( 仕事 恋愛 生活 趣味 住宅 人間関係 食 ファッション 健康 お金).each do |category_name|
  # factory :category do
  #    name { category_name }
  #  end
  #end

  factory :category do

    trait :work do
      name { "仕事" }
    end

    trait :love do
      name { "恋愛" }
    end

    trait :life do
      name { "生活" }
    end

    trait :hobby do
      name { "趣味" }
    end

    trait :home do
      name { "住宅" }
    end

    trait :relationship do
      name { "人間関係" }
    end

    trait :food do
      name { "食" }
    end

    trait :fasion do
      name { "ファッション" }
    end

    trait :health do
      name { "健康" }
    end

    trait :money do
      name { "お金" }
    end

  end
end
