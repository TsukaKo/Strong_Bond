class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    def name
      [first_name, last_name].join(' ')
    end

  belongs_to :group, optional: true
  has_many :posts, dependent: :destroy
  has_many :comments
end
