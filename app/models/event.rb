class Event < ActiveRecord::Base
  belongs_to :store
  scope :interested_by, ->user{joins("INNER JOIN store_users
    ON store_users.store_id = events.store_id
    WHERE store_users.user_id = #{user.id}")}
end
