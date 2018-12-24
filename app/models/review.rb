class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true

  mount_base64_uploader :avatar, ReviewAvatarUploader

  translates :name, :description, :text

  default_scope { order(order: :asc) }
end
