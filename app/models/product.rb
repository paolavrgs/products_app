class Product < ApplicationRecord
  has_many_attached :uploads
  validates :uploads, presence: true, blob: { content_type: :image }
end
