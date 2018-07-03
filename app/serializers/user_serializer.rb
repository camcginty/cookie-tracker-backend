# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :screen_name, :cookies_made
  has_many :cookies

  def cookies_made
    CookieSerializer.attributes
  end

  # def screenname
  #   if !:screen_name.nil?
  #     then screen_name
  #   else email
  #   end
  # end
  # not working

  # screennames all lowercase
  # email and screenname required
end
