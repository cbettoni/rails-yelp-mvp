class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :phone_number, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian french belgian japanese] }
end
