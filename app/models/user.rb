class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable
  has_many :pins, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :name, uniqueness: true
end
