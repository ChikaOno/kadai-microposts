class Like < ApplicationRecord
  # お気に入り機能
  belongs_to :user
  belongs_to :micropost
end
