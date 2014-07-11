FactoryGirl.define do
  factory :post do
    sequence(:title) do |n|
      "Post #{n}"
    end 
    content 'foo bar'
  end
end
