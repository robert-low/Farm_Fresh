class Transaction < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
end
