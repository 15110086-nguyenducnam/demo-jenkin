FactoryBot.define do
  factory :product do
    sequence(:name) 			{ |n| "Product #{n}" }
    category_id           1
		price									10.0
		description						'This is a good products'
    image 								Rack::Test::UploadedFile.new(Rails.root + 'spec/fixtures/spec.jpg', 'image/jpg')
    association           :category, factory: :category
  end
end
