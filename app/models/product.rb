class Product < ActiveRecord::Base
  include FinanceHelper

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

   belongs_to :category
   has_many :reviews
   has_many :line_items

  #presence true means it's required
  validates :name, presence: true
    # validation method in Active Record

  validates :price, presence: true, numericality: {
    greater_than_or_equal_to: 1
  }
  validates :image, presence: true
  validates :quantity, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validates :category, presence: true

  def price_hst
    to_hst(price_cents)
  end

end
