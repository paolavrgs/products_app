class Cotization < ApplicationRecord
  belongs_to :user
  belongs_to :product, counter_cache: true

  validate :quantity_validation

  def quantity_validation
    cotizations_count = product.cotizations.map(&:quantity).reduce(:+) || 0
    general_counter = product.stock - cotizations_count

    if general_counter < quantity
      self.errors.add(:quantity, " - Please order only what's available")
    end
  end
end
