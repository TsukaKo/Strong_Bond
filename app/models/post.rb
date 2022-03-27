class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  attachment :image

  def name
      [first_name, last_name].join(' ')
  end
end
