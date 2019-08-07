class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews
  has_many :order_products
  validates :title, presence: true,
    length: {maximum: Settings.maximum_length_name}
  validates :publisher_name, presence: true,
    length: {maximum: Settings.maximum_length_name}
  validates :author_name, presence: true,
    length: {maximum: Settings.maximum_length_name}
  validates :price, presence: true
  validates :num_exist, presence: true
  validates :description, presence: true
end
