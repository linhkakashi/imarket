class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :avatar, :auth_token
end
