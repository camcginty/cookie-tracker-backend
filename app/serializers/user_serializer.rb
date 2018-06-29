# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :screen_name, :cookie_id_id
# make display the name of the cookie with that id
end
