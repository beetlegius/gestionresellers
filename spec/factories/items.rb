# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  unit_price :decimal(15, 2)
#  quantity   :integer          default(1)
#  product_id :integer
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :item do
    unit_price { rand(1.0..100.0) }
    quantity { rand(1..3) }
    product
    order
  end
end
