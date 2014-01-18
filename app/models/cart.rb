class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  # smart add_product method
  def add_product(product_id)
    # finding product by id
    current_item = line_items.find_by(product_id: product_id)

    # if item exists already in line items
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end

    # returning the current item
    current_item
  end

  # computing cart's total price
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
