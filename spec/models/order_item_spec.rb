require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  let!(:product) { create :product, price: 30 }
  let!(:order_item) { create :order_item,product: product }
  let!(:order_item2){ create :order_item, unit_price: nil, product: product }
  describe "asociations" do
    it { is_expected.to belong_to :product}
    it { is_expected.to belong_to :order}
  end
  describe 'validation' do
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than(0)}
  end
  describe 'method' do
    it "total price" do
      expect(order_item.total_price).to eql(30)  
    end

    it "unitprice" do
      expect(order_item2.unit_price).to eql(30) 
    end
  end
end
