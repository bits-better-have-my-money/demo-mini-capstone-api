class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  has_many :product_categories
  has_many :categories, through: :product_categories

  has_many :orders
  # association method
  belongs_to :supplier #returns a hash of supplier data

  # for every new product, supplier_id is required
  # AND that id has to be a valid id from the suppliers table

  # def supplier
  #   Supplier.find(supplier_id)
  # end
  has_many :images

  # model methods
  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
