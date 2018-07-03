class CookieSerializer < ActiveModel::Serializer
  attributes :id, :cookieName, :amount, :distributableUnits
  belongs_to :user
  # make display the name of the cookie with that id

end
