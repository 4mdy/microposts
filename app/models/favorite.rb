class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :micropost_id
end
