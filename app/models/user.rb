class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,uniqueness: true
  validates :name, length: { minimum: 1, maximum: 20}
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
 # deviseでemailを不必要にする
    def email_required?
     false
    end
    def email_changed?
     false
    end

    has_many :book, dependent: :destroy
end
