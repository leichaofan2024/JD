class Product < ApplicationRecord
  has_many :favorites
  has_many :fans, through: :favorites, source: :user
  has_many :reviews
  validates :title, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  mount_uploader :image, ImageUploader
end
