class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_many   :followers,
             :through => :user,
             :source => :following

  has_many   :likers,
             :through => :likes,
             :source => :user

  # Validations

end
