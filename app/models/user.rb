class User < ApplicationRecord
  has_one_attached :avatar

  def avatar_thumbnail
    avatar.variant(resize: "100x100").processed
  end
end
