class Station < ApplicationRecord
  belongs_to :property, optional: true
  # belongs_to :property, inverse_of: :properties
end
