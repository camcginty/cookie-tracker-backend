# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :screen_name
# make display the name of the cookie with that id
end
