class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  scope :non_admin, -> { where(admin: false) }

  has_many :orders

  def total
    orders.sum(:total)
  end
end
