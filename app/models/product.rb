class Product < ApplicationRecord
  has_many :cotizations
  has_many_attached :uploads
  validates :uploads, presence: true, blob: { content_type: :image }

  def current_stock
    stock - cotizations_count
  end

end
