class CountrySerializer < ActiveModel::Serializer
  attributes :id, :Cid, :name, :latitude, :longitude
  belongs_to :user


  class UserSerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
