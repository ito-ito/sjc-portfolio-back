class ProductSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name
  attributes :description
  attributes :url
  attributes :image_url
end
