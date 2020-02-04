class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,uniqueness: true
  validates :name, length: { minimum: 2, maximum: 20}
  validates :introduction, length: { maximum: 50}
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
 # deviseでemailを不必要にする
    def email_required?
     false
    end
    def email_changed?
     false
    end

    has_many :books, dependent: :destroy
    attachment :profile_image 
end
