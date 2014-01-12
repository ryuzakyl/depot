class Product < ActiveRecord::Base
  # validating title, description and image_url
  validates :title, :description, :image_url, presence: true

  # validating the price of the article
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  # checking uniqueness of product name
  validates :title, uniqueness: true

  # validating image format
  validates :image_url, allow_blank: true, format:
  {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
