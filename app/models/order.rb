class Order < ApplicationRecord
  # accsociation
  # belongs_to :order_status
  has_many :order_items
  # before_validation :set_status, on: :create
  # before_create :set_order_status
  before_save :update_subtotal

  enum status: { cancle: 0, active: 1 }

  def subtotal
    order_items.collect{ |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0}.sum
  end
  
  private
    def update_subtotal
      self[:subtotal] = subtotal
    end
end
