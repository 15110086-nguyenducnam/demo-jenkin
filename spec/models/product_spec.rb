require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
  end
  
  describe "asociations" do
    it { is_expected.to belong_to :category}
    it { is_expected.to have_many :order_items}
  end
  
end