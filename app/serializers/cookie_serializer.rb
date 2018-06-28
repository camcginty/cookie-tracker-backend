class CookieSerializer < ActiveModel::Serializer
  attributes :id, :cookieName, :amount, :distributableUnits
end
