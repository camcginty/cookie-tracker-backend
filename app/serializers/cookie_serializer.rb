class CookieSerializer < ActiveModel::Serializer
  attributes :id, :cookieName, :amount, :distributableUnits, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
