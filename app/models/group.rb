class Group < ApplicationRecord
  has_many :users
  has_many :group_users
  has_one_attached :group_image

  def get_group_image
    (group_image.attached?) ? group_image : 'no_image.jpg'
  end
end
