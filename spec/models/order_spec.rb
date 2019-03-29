require 'rails_helper'

RSpec.describe Order, type: :model do
  let!(:product) { create :product }
  let!(:order) { create :order } 
  let!(:order_item) { create :order_item, product: product }
  describe "asociations" do
    it { is_expected.to have_many :order_items}
  end
  describe "method before save" do
    it 'subtotal' do   
      order.order_items << order_item
      order.save
      expect(order.subtotal).to eql(10) 
    end
  end

end
