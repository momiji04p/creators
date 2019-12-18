class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

           # acts_as_paranoid

  attachment :image
  validates :account_name, presence: true, length: {in: 2..20}
  validates :introduction, length: {maximum: 50}
end

