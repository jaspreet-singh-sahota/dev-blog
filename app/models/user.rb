class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :authentication_keys => [:name]
  validates :name, uniqueness: true, length: { minimum: 3, maximun: 25 }
  has_many :articles , dependent: :destroy

  protected

  def email_required?
    false
  end

  def email_changed?
    false
  end
  
  def will_save_change_to_email?
    false
  end

  def valid_password?
   false
  end

  def password_required?
    false
  end
end
