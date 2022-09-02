class Product < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :image_url

  validates :name, presence: true, length: { maximum: 15 }
  validates :mini_description, presence: true, length: { maximum: 25 }
  validates :overview, presence: true
  validates :price, presence: true, length: { maximum: 8 }
  validates :image_url, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
