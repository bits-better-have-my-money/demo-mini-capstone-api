class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory, :is_discounted?, :tax, :total

  belongs_to :supplier
  has_many :images
  has_many :categories
end