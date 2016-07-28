class EventUserSerializer < ActiveModel::Serializer
  has_one :user
  has_many :events

  self.root = false

  private
  def user
    object
  end

  def events
    Event.interested_by object
  end
end
