FactoryBot.define do
  factory :order_item do
    unit_price            10.00
    quantity              1
    total_price           10.00
    association           :product, factory: :product
    association           :order, factory: :order
  end
end
