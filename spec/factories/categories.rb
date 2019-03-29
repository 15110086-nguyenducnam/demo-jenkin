FactoryBot.define do
  factory :category do
    sequence(:name) 			{ |n| "Product #{n}" }
    description           "good cattegory"
  end
end
